(******************************************************************************)
(* ssmConductORP defines the ConductORP sub-level state machine for the       *)
(* patrol base.                                                               *)
(* Each state, save for the end states, has a sub-level state machine, and    *)
(* some have sub-sub-level state machines.  These are implemented in separate *)
(* theories.                                                                  *)
(* Author: Lori Pickering in collaboration with Jesse Nathaniel Hall          *)
(* Date: 16 July 2017                                                         *)
(******************************************************************************)
structure ssmConductORPScript = struct

(* ===== Interactive Mode ====
app load ["TypeBase", "listTheory","optionTheory",
          "acl_infRules","aclDrulesTheory","aclrulesTheory",
    	  "satListTheory","ssmTheory","ssminfRules",
	  "OMNITypeTheory",
	  "ConductORPTypeTheory", "ConductORPDefTheory",
	  "ssmConductORPTheory"];
	  
open TypeBase listTheory optionTheory
     acl_infRules aclDrulesTheory aclrulesTheory
     satListTheory ssmTheory ssminfRules
     OMNITypeTheory
     ConductORPTypeTheory ConductORPDefTheory
     ssmConductORPTheory
 ==== end Interactive Mode ==== *)

open HolKernel Parse boolLib bossLib;
open TypeBase listTheory optionTheory
open acl_infRules aclDrulesTheory aclrulesTheory
open satListTheory ssmTheory ssminfRules
open OMNITypeTheory ConductORPTypeTheory ConductORPDefTheory 

val _ = new_theory "ssmConductORP";

(* -------------------------------------------------------------------------- *)
(* Define the next state function for the state machine.                      *)
(* -------------------------------------------------------------------------- *)
val conductORPNS_def =
Define
`
 (conductORPNS CONDUCT_ORP (exec x) =
   if (getPlCom x) = secure then SECURE else CONDUCT_ORP)     /\
 (conductORPNS SECURE      (exec x) =
   if (getPsgCom x) = actionsIn then ACTIONS_IN else SECURE)  /\
 (conductORPNS ACTIONS_IN  (exec x) =
   if (getPlCom x) = withdraw then WITHDRAW else ACTIONS_IN)    /\
 (conductORPNS WITHDRAW    (exec x) =
   if (getPlCom x) = complete then COMPLETE else WITHDRAW)    /\
(* trapping *) 
 (conductORPNS (s:slState) (trap x) = s) /\
(* discarding *)
 (conductORPNS (s:slState) (discard x) = s)`

(* -------------------------------------------------------------------------- *)
(* Define next-output function for the state machine                          *)
(* -------------------------------------------------------------------------- *)
val conductORPOut_def =
Define
`
 (conductORPOut CONDUCT_ORP (exec x) =
   if (getPlCom x) = secure then Secure else ConductORP)     /\
 (conductORPOut SECURE      (exec x) =
   if (getPsgCom x) = actionsIn then ActionsIn else Secure)  /\
 (conductORPOut ACTIONS_IN  (exec x) =
   if (getPlCom x) = withdraw then Withdraw else ActionsIn)    /\
 (conductORPOut WITHDRAW    (exec x) =
   if (getPlCom x) = complete then Complete else Withdraw)    /\
(* trapping *) 
 (conductORPOut (s:slState) (trap x) = unAuthorized) /\
(* discarding *)
 (conductORPOut (s:slState) (discard x) = unAuthenticated)`


(******************************************************************************)
(* Input Authentication                                                       *)
(******************************************************************************)
val inputOK_def =
Define
`(inputOK
 ((Name PlatoonLeader) says (prop  (cmd:(slCommand command)option))
 	:((slCommand command)option,stateRole,'d,'e)Form) = T) /\
 (inputOK
 ((Name PlatoonSergeant) says (prop  (cmd:(slCommand command)option))
 	:((slCommand command)option,stateRole,'d,'e)Form) = T) /\
 (inputOK
 ((Name Omni) says (prop (cmd:(slCommand command)option))
  	:((slCommand command)option,stateRole,'d,'e)Form) = T) /\
 (inputOK _= F)`


(******************************************************************************)
(* "A theorem showing commands without a principal are rejected."--Prof       *)
(*  Chin, SM0Script.sml       	       	 	       			      *)
(******************************************************************************)
val inputOK_cmd_reject_lemma =
TAC_PROOF(
 ([],
  ``!cmd. ~(inputOK
      ((prop (SOME cmd)):((slCommand command)option,stateRole,'d,'e)Form))``),
PROVE_TAC[inputOK_def])

val _ = save_thm("inputOK_cmd_reject_lemma",
                 inputOK_cmd_reject_lemma)

(******************************************************************************)
(* PlatoonLeader is justified on secure.				      *)
(******************************************************************************)
val th1 =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
      ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
      ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[((Name PlatoonLeader) says (prop (SOME (SLc (PL secure)))))
     :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(CONDUCT_ORP)``,
  ``outs:slOutput output list trType list``] TR_exec_cmd_rule

val temp = fst(dest_imp(concl th1))

val PlatoonLeader_CONDUCT_ORP_exec_secure_lemma =
TAC_PROOF(
   ([],
	fst(dest_imp(concl th1))),
REWRITE_TAC
 [CFGInterpret_def, secContext_def, secAuthorization_def,
  getOmniCommand_def,
  inputList_def, extractInput_def, MAP,
  propCommandList_def, extractPropCommand_def, satList_CONS,
  satList_nil, GSYM satList_conj] THEN
PROVE_TAC[Controls])

val _= save_thm("PlatoonLeader_CONDUCT_ORP_exec_secure_lemma",
		 PlatoonLeader_CONDUCT_ORP_exec_secure_lemma)

val PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm =
TAC_PROOF(
  ([],snd(dest_imp(concl th1))),
PROVE_TAC[PlatoonLeader_CONDUCT_ORP_exec_secure_lemma, TR_exec_cmd_rule])

val _= save_thm("PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm",
	      PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm)

val PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm =
REWRITE_RULE[inputList_def, extractInput_def, MAP, propCommandList_def,
  extractPropCommand_def, PlatoonLeader_CONDUCT_ORP_exec_secure_lemma]
  PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm

val _= save_thm("PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm",
		PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm)

(******************************************************************************)
(* PlatoonSergeant is justified on actionsIn if                               *)
(* if Omni says ssmSecureComplete.					      *)
(******************************************************************************)
val th1 =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
                    ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
       ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[(Name Omni) says (prop (SOME (SLc (OMNI ssmSecureComplete))))
      :((slCommand command)option, stateRole, 'd,'e)Form;
     (Name PlatoonSergeant) says (prop (SOME (SLc (PSG actionsIn))))
      :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(SECURE)``,
  ``outs:slOutput output list trType list``] TR_exec_cmd_rule


val PlatoonSergeant_SECURE_exec_lemma =
TAC_PROOF(
  ([],fst(dest_imp(concl th1))),
REWRITE_TAC[CFGInterpret_def, secContext_def, secAuthorization_def, secHelper_def,
            propCommandList_def,extractPropCommand_def, inputList_def,
	    getOmniCommand_def,
	    MAP,extractInput_def, satList_CONS, satList_nil, GSYM satList_conj]  THEN
PROVE_TAC[Controls,Modus_Ponens])

val _= save_thm("PlatoonSergeant_SECURE_exec_lemma",
		 PlatoonSergeant_SECURE_exec_lemma)

val PlatoonSergeant_SECURE_exec_justified_lemma =
TAC_PROOF(
  ([],snd(dest_imp(concl th1))),
PROVE_TAC[PlatoonSergeant_SECURE_exec_lemma, TR_exec_cmd_rule])

val _= save_thm("PlatoonSergeant_SECURE_exec_justified_lemma",
		 PlatoonSergeant_SECURE_exec_justified_lemma)

val PlatoonSergeant_SECURE_exec_justified_thm =
REWRITE_RULE[inputList_def, extractInput_def, MAP, propCommandList_def,
  extractPropCommand_def, PlatoonSergeant_SECURE_exec_lemma]
  PlatoonSergeant_SECURE_exec_justified_lemma

val _= save_thm("PlatoonSergeant_SECURE_exec_justified_thm",
		PlatoonSergeant_SECURE_exec_justified_thm)


(******************************************************************************)
(* PlatoonLeader is justified on withdraw if                                  *)
(* if Omni says ssmActionsInComplete.					      *)
(******************************************************************************)
val th1 =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
                    ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
       ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[(Name Omni) says (prop (SOME (SLc (OMNI ssmActionsInComplete))))
      :((slCommand command)option, stateRole, 'd,'e)Form;
     (Name PlatoonLeader) says (prop (SOME (SLc (PL withdraw))))
      :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(ACTIONS_IN)``,
  ``outs:slOutput output list trType list``] TR_exec_cmd_rule


val PlatoonLeader_ACTIONS_IN_exec_lemma =
TAC_PROOF(
 ([],fst(dest_imp(concl th1))),
REWRITE_TAC[CFGInterpret_def, secContext_def, secAuthorization_def, secHelper_def,
            propCommandList_def,extractPropCommand_def, inputList_def,
	    getOmniCommand_def,
	    MAP,extractInput_def, satList_CONS, satList_nil, GSYM satList_conj]
THEN
PROVE_TAC[Controls,Modus_Ponens])

val _= save_thm("PlatoonLeader_ACTIONS_IN_exec_lemma",
		 PlatoonLeader_ACTIONS_IN_exec_lemma)

val PlatoonLeader_ACTIONS_IN_exec_justified_lemma =
TAC_PROOF(
  ([],snd(dest_imp(concl th1))),
PROVE_TAC[PlatoonLeader_ACTIONS_IN_exec_lemma, TR_exec_cmd_rule])

val _= save_thm("PlatoonLeader_ACTIONS_IN_exec_justified_lemma",
	      PlatoonLeader_ACTIONS_IN_exec_justified_lemma)

val PlatoonLeader_ACTIONS_IN_exec_justified_thm =
REWRITE_RULE[inputList_def, extractInput_def, MAP, propCommandList_def,
  extractPropCommand_def, PlatoonLeader_ACTIONS_IN_exec_lemma]
  PlatoonLeader_ACTIONS_IN_exec_justified_lemma

val _= save_thm("PlatoonLeader_ACTIONS_IN_exec_justified_thm",
	  	 PlatoonLeader_ACTIONS_IN_exec_justified_thm)

(******************************************************************************)
(* PlatoonLeader is trapped on withdraw if                                    *)
(* if not Omni says ssmActionsInComplete.				      *)
(******************************************************************************)
val thTrap =
  ISPECL
  [``inputOK:((slCommand command)option, stateRole, 'd,'e)Form -> bool``,
  ``secAuthorization :((slCommand command)option, stateRole, 'd,'e)Form list ->
                    ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``secContext: (slState) ->
       ((slCommand command)option, stateRole, 'd,'e)Form list ->
       ((slCommand command)option, stateRole, 'd,'e)Form list``,
  ``[(Name Omni) says (prop (SOME (SLc (OMNI omniCommand))))
      :((slCommand command)option, stateRole, 'd,'e)Form;
     (Name PlatoonLeader) says (prop (SOME (SLc (PL withdraw))))
      :((slCommand command)option, stateRole, 'd,'e)Form]``,
  ``ins:((slCommand command)option, stateRole, 'd,'e)Form list list``,
  ``(ACTIONS_IN)``,
  ``outs:slOutput output list trType list``] TR_trap_cmd_rule

val temp2 = fst(dest_imp(concl thTrap))

val PlatoonLeader_ACTIONS_IN_trap_lemma =
TAC_PROOF(
   ([],
        Term`(~((omniCommand:omniCommand) = ssmActionsInComplete)) ==>
	     ((s:slState) = ACTIONS_IN) ==>
	     ^temp2`),
DISCH_TAC THEN
DISCH_TAC THEN
ASM_REWRITE_TAC[CFGInterpret_def, secContext_def, secAuthorization_def,
	    secHelper_def,
            propCommandList_def,extractPropCommand_def, inputList_def,
	    getOmniCommand_def,
	    MAP,extractInput_def, satList_CONS, satList_nil, GSYM satList_conj]  THEN
PROVE_TAC[Controls,Modus_Ponens])

val _= save_thm("PlatoonLeader_ACTIONS_IN_trap_lemma",
		 PlatoonLeader_ACTIONS_IN_trap_lemma)


val temp3 = snd(dest_imp(concl thTrap))

val PlatoonLeader_ACTIONS_IN_trap_justified_lemma =
TAC_PROOF(
   ([],
        Term`(~((omniCommand:omniCommand) = ssmActionsInComplete)) ==>
	     ((s:slState) = ACTIONS_IN) ==>
	     ^temp3`),
DISCH_TAC THEN
DISCH_TAC THEN
PROVE_TAC[PlatoonLeader_ACTIONS_IN_trap_lemma, TR_trap_cmd_rule])

val _= save_thm("PlatoonLeader_ACTIONS_IN_trap_justified_lemma",
		 PlatoonLeader_ACTIONS_IN_trap_justified_lemma)

val PlatoonLeader_ACTIONS_IN_trap_justified_thm =
REWRITE_RULE[inputList_def, extractInput_def, MAP, propCommandList_def,
             extractPropCommand_def,
	     PlatoonLeader_ACTIONS_IN_trap_lemma]
	     PlatoonLeader_ACTIONS_IN_trap_justified_lemma 


val _= save_thm("PlatoonLeader_ACTIONS_IN_trap_justified_thm",
	      PlatoonLeader_ACTIONS_IN_trap_justified_thm)

(* ===== Interactive Mode =====

===== Interactive Mode ===== *)

val _ = export_theory();

end