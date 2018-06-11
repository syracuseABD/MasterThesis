(******************************************************************************)
(* ssmPBIntegratedTheory                                                      *)
(* Author: Lori Pickering                                                     *)
(* Date: 7 May 2018                                                           *)
(* This theory aims to integrate the topLevel ssm with the sublevel ssms.  It *)
(* does this by adding a condition to the security context.  In particular,   *)
(* it requires that the "COMPLETE" state in the subLevel ssm must preceede    *)
(* transition to the next state at the topLeve.  I.e.,                        *)
(*   planPBComplete ==>                                                       *)
(*   PlatoonLeader controls crossLD.                                          *)
(* In the ssmPlanPB ssm, the last state is COMPLETE.  This is reached when the*)
(* the appropriate authority says complete and the transition is made.        *)
(* Note that following the ACL, if P says x and P controls x, then x.         *)
(* Therefore, it is not necessary for anyone to say x at the topLevel, because*)
(* it is already proved at the lower level.                                   *)
(* However, indicating that at the topLevel remains something to workout.     *)
(******************************************************************************)


structure ssmPBIntegratedScript = struct

(* ===== Interactive Mode ====
app load  ["TypeBase", "listTheory","optionTheory","listSyntax",
          "acl_infRules","aclDrulesTheory","aclrulesTheory",
	  "aclsemanticsTheory", "aclfoundationTheory",
    	  "satListTheory","ssmTheory","ssminfRules","uavUtilities",
	  "OMNITypeTheory", "PBTypeIntegratedTheory","PBIntegratedDefTheory",
	  "ssmPBIntegratedTheory"];

open TypeBase listTheory optionTheory listSyntax
     acl_infRules aclDrulesTheory aclrulesTheory
     aclsemanticsTheory aclfoundationTheory
     satListTheory ssmTheory ssminfRules uavUtilities
     OMNITypeTheory PBTypeIntegratedTheory PBIntegratedDefTheory
     ssmPBIntegratedTheory
 ==== end Interactive Mode ==== *)

open HolKernel Parse boolLib bossLib;
open TypeBase listTheory optionTheory 
open acl_infRules aclDrulesTheory aclrulesTheory
open satListTheory ssmTheory ssminfRules uavUtilities
open OMNITypeTheory PBTypeIntegratedTheory PBIntegratedDefTheory


val _ = new_theory  "ssmPBIntegrated";


(******************************************************************************)
(* Define next-state and next-output functions                                *)
(******************************************************************************)
val PBNS_def =
Define`
(PBNS PLAN_PB     (exec [SOME (SLc (PL crossLD))])    = MOVE_TO_ORP) /\
(PBNS MOVE_TO_ORP (exec [SOME (SLc (PL conductORP))]) = CONDUCT_ORP) /\
(PBNS CONDUCT_ORP (exec [SOME (SLc (PL moveToPB))])   = MOVE_TO_PB)  /\
(PBNS MOVE_TO_PB  (exec [SOME (SLc (PL conductPB))]) =  CONDUCT_PB)  /\
(PBNS CONDUCT_PB  (exec [SOME (SLc (PL completePB))]) = COMPLETE_PB) /\
(PBNS (s:slState) (trap _)    = s) /\
(PBNS (s:slState) (discard _) = s)`

val PBOut_def =
Define`
(PBOut PLAN_PB     (exec [SOME (SLc (PL crossLD))])    = MoveToORP) /\
(PBOut MOVE_TO_ORP (exec [SOME (SLc (PL conductORP))]) = ConductORP) /\
(PBOut CONDUCT_ORP (exec [SOME (SLc (PL moveToPB))])   = MoveToPB)  /\
(PBOut MOVE_TO_PB  (exec [SOME (SLc (PL conductPB))]) =  ConductPB)  /\
(PBOut CONDUCT_PB  (exec [SOME (SLc (PL completePB))]) = CompletePB) /\
(PBOut (s:slState) (trap _)    = unAuthorized) /\
(PBOut (s:slState) (discard _) = unAuthenticated)`

(******************************************************************************)
(* Define authentication function                                             *)
(******************************************************************************)
val inputOK_def =
Define`
(inputOK (((Name PlatoonLeader) says prop (cmd:((slCommand command)option)))
	   :((slCommand command)option, stateRole,'d,'e)Form) = T) /\
(inputOK (((Name Omni)          says prop (cmd:((slCommand command)option)))
	   :((slCommand command)option, stateRole,'d,'e)Form) = T) /\
(inputOK _ = F)`


(******************************************************************************)
(* Prove that commands are rejected unless that are requested by a properly   *)
(* authenticated principal. 	    	   	    	      	   	      *)
(******************************************************************************)

val inputOK_cmd_reject_lemma =
Q.prove(`!cmd. ~(inputOK
	         ((prop (SOME cmd))))`,
		 	      (PROVE_TAC[inputOK_def]))

val _= save_thm("inputOK_cmd_reject_lemma",
		inputOK_cmd_reject_lemma)
(* -------------------------------------------------------------------------- *)
(* Theorem: PlatoonLeader is authorized on crossLD if                         *)
(*   Omni says ssmPlanPBComplete					      *)
(* -------------------------------------------------------------------------- *)
val thPlanPB =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
                    ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
       ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[(Name Omni) says (prop (SOME (SLc (OMNI ssmPlanPBComplete))))
      :((slCommand command)option, stateRole, 'd,'e)Form;
     (Name PlatoonLeader) says (prop (SOME (SLc (PL crossLD))))
      :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(PLAN_PB)``,
  ``outs:slOutput output list trType list``] TR_exec_cmd_rule

val PlatoonLeader_PLAN_PB_exec_lemma =
TAC_PROOF(
  ([],fst(dest_imp(concl thPlanPB))),
REWRITE_TAC[CFGInterpret_def, secContext_def, secAuthorization_def, secHelper_def,
            propCommandList_def,extractPropCommand_def, inputList_def,
	    getOmniCommand_def,
	    MAP,extractInput_def, satList_CONS, satList_nil, GSYM satList_conj]  THEN
PROVE_TAC[Controls,Modus_Ponens])

val _= save_thm("PlatoonLeader_PLAN_PB_exec_lemma",
		 PlatoonLeader_PLAN_PB_exec_lemma)


(* ===== save for now === 
val PlatoonLeader_PLAN_PB_exec_justified_lemma =
TAC_PROOF(
  ([],snd(dest_imp(concl thPlanPB))),
PROVE_TAC[PlatoonLeader_PLAN_PB_exec_lemma, TR_exec_cmd_rule])

val _= save_thm("PlatoonLeader_PLAN_PB_exec_justified_lemma",
		PlatoonLeader_PLAN_PB_exec_justified_lemma)
  ===== save for now === *)

val PlatoonLeader_PLAN_PB_exec_justified_thm =
REWRITE_RULE[inputList_def, extractInput_def, MAP, propCommandList_def,
  extractPropCommand_def, PlatoonLeader_PLAN_PB_exec_lemma] thPlanPB

val _= save_thm("PlatoonLeader_PLAN_PB_exec_justified_thm",
       PlatoonLeader_PLAN_PB_exec_justified_thm)


(* -------------------------------------------------------------------------- *)
(* Theorem: PlatoonLeader is trapped  on crossLD if                           *)
(*   state = PLAN_PB and						      *)
(*   and not Omni says ssmPlanPBComplete		         	      *)
(* -------------------------------------------------------------------------- *)
val thPlanPBTrap =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
                    ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
       ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[(Name Omni) says (prop (SOME (SLc (OMNI omniCommand))))
      :((slCommand command)option, stateRole, 'd,'e)Form;
     (Name PlatoonLeader) says (prop (SOME (SLc (PL crossLD))))
      :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(PLAN_PB)``,
  ``outs:slOutput output list trType list``] TR_trap_cmd_rule

val temp2 = fst(dest_imp(concl thPlanPBTrap))

val PlatoonLeader_PLAN_PB_trap_lemma =
TAC_PROOF(
   ([],
        Term`(~((omniCommand:omniCommand) = ssmPlanPBComplete)) ==>
	     ((s:slState) = PLAN_PB) ==>
	     ^temp2`),
DISCH_TAC THEN
DISCH_TAC THEN
ASM_REWRITE_TAC[CFGInterpret_def, secContext_def, secAuthorization_def, secHelper_def,
            propCommandList_def,extractPropCommand_def, inputList_def,
	    getOmniCommand_def,
	    MAP,extractInput_def, satList_CONS, satList_nil, GSYM satList_conj]  THEN
PROVE_TAC[Controls,Modus_Ponens])

val _= save_thm("PlatoonLeader_PLAN_PB_trap_lemma",
		PlatoonLeader_PLAN_PB_trap_lemma)

val temp3 = snd(dest_imp(concl thPlanPBTrap))

val PlatoonLeader_PLAN_PB_trap_justified_lemma =
TAC_PROOF(
   ([],
        Term`(~((omniCommand:omniCommand) = ssmPlanPBComplete)) ==>
	     ((s:slState) = PLAN_PB) ==>
	     ^temp3`),
DISCH_TAC THEN
DISCH_TAC THEN
PROVE_TAC[PlatoonLeader_PLAN_PB_trap_lemma, TR_trap_cmd_rule])

val _= save_thm("PlatoonLeader_PLAN_PB_trap_justified_lemma",
		PlatoonLeader_PLAN_PB_trap_justified_lemma)


val PlatoonLeader_PLAN_PB_trap_justified_thm =
REWRITE_RULE[inputList_def, extractInput_def, MAP, propCommandList_def,
             extractPropCommand_def,
	     PlatoonLeader_PLAN_PB_trap_lemma]
	     PlatoonLeader_PLAN_PB_trap_justified_lemma 

val _= save_thm("PlatoonLeader_PLAN_PB_trap_justified_thm",
		PlatoonLeader_PLAN_PB_trap_justified_thm)

val thgen =
GENL
[``(elementTest :('command option, 'principal, 'd, 'e) Form -> bool)``,
 ``(context :
        ('command option, 'principal, 'd, 'e) Form list ->
        ('command option, 'principal, 'd, 'e) Form list)``,
 ``(stateInterp :
        'state ->
        ('command option, 'principal, 'd, 'e) Form list ->
        ('command option, 'principal, 'd, 'e) Form list)``,
 ``(x :('command option, 'principal, 'd, 'e) Form list)``,
 ``(ins :('command option, 'principal, 'd, 'e) Form list list)``,
 ``(s :'state)``,
 ``(outs :'output list)``,
 ``(NS :'state -> 'command option list trType -> 'state)``,
 ``(Out :'state -> 'command option list trType -> 'output)``,
 ``(M :('command option, 'b, 'principal, 'd, 'e) Kripke)``,
 ``(Oi :'d po)``,``(Os :'e po)``]
TR_discard_cmd_rule




val thPlanPBdiscard =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
                    ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
       ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[(Name Omni) says (prop (SOME (SLc (PL plCommand))))
      :((slCommand command)option, stateRole, 'd,'e)Form;
     (Name PlatoonLeader) says (prop (SOME (SLc (OMNI omniCommand))))
      :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(PLAN_PB)``,
  ``outs:slOutput output list trType list``] thgen


val th3d = LIST_BETA_CONV (Term `(\p q. p /\ q) F ((\p q. p/\q) T ((\p q. p /\ q) T T))`)
val th3d2 = LIST_BETA_CONV (Term `(\p q. p/\q) T T`)

val PlatoonLeader_Omni_notDiscard_slCommand_thm =
REWRITE_RULE[inputList_def, extractInput_def,
             authenticationTest_def, MAP, inputOK_def, FOLDR,
  	     th3d, th3d2] thPlanPBdiscard

val _= save_thm("PlatoonLeader_Omni_notDiscard_slCommand_thm",
		PlatoonLeader_Omni_notDiscard_slCommand_thm)

(* ===== Just playing around with this ====

 ==== OK, done fooling around ==== *)

val _ = export_theory();

end