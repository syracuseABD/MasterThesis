(******************************************************************************)
(* ConductORPDef							      *)
(* Author: Lori Pickering                                                     *)
(* Date: 11 August 2018                                                       *)
(* Definitions for ssmConductORPDef					      *)
(******************************************************************************)
structure ConductORPDefScript = struct

(* ===== Interactive Mode ====
app load ["TypeBase", "listTheory","optionTheory",
          "acl_infRules","aclDrulesTheory","aclrulesTheory",
    	  "satListTheory","ssmTheory","ssminfRules",
	  "OMNITypeTheory", "ConductORPTypeTheory"];
	  
	  "ssmConductORPTheory"];
open TypeBase listTheory optionTheory
     acl_infRules aclDrulesTheory aclrulesTheory
     satListTheory ssmTheory ssminfRules
     OMNITypeTheory ConductORPTypeTheory
     ssmConductORPTheory
 ==== end Interactive Mode ==== *)


open HolKernel Parse boolLib bossLib;
open TypeBase listTheory optionTheory
open acl_infRules aclDrulesTheory aclrulesTheory
open satListTheory ssmTheory ssminfRules
open OMNITypeTheory ConductORPTypeTheory

val _= new_theory "ConductORPDef";

(******************************************************************************)
(* Helper functions for extracting commands                                   *)
(******************************************************************************)
val getPlCom_def =
Define`
  (getPlCom ([]:((slCommand command)option)list)
  		      = plIncomplete:plCommand) /\
  (getPlCom (SOME (SLc (PL cmd)):(slCommand command)option::xs)
  		      = cmd:plCommand) /\
  (getPlCom (_::(xs :(slCommand command)option list))
  		      =  (getPlCom xs))`

val getPsgCom_def =
Define`
  (getPsgCom ([]:((slCommand command)option)list)
  		      = psgIncomplete:psgCommand) /\
  (getPsgCom (SOME (SLc (PSG cmd)):(slCommand command)option::xs)
  		      = cmd:psgCommand) /\
  (getPsgCom (_::(xs :(slCommand command)option list))
  		      =  (getPsgCom xs))`

(******************************************************************************)
(* security context, non state-dependent.                                     *)
(******************************************************************************)
val secHelper =
Define`
  (secHelper (cmd:omniCommand) =
     [(Name Omni) controls prop (SOME (SLc (OMNI (cmd:omniCommand))))])`

val getOmniCommand_def =
Define`
  (getOmniCommand ([]:((slCommand command)option, stateRole, 'd,'e)Form list)
  		      = invalidOmniCommand:omniCommand) /\
  (getOmniCommand (((Name Omni) says prop (SOME (SLc (OMNI cmd))))::xs)
  		      = (cmd:omniCommand)) /\
  (getOmniCommand ((x:((slCommand command)option, stateRole, 'd,'e)Form)::xs)
  		      =  (getOmniCommand xs))`

val secAuthorization_def =
Define`
  (secAuthorization (xs:((slCommand command)option, stateRole,'d,'e)Form list)
  		  = secHelper (getOmniCommand xs)) `

(******************************************************************************)
(* security context, state-dependent.                                         *)
(******************************************************************************)

val secContext_def =
Define`
 (secContext (CONDUCT_ORP) (xs:((slCommand command)option,stateRole,'d,'e)Form list) =
   [(Name PlatoonLeader) controls prop (SOME (SLc (PL secure)))
   :((slCommand command)option, stateRole,'d,'e)Form]) /\
 (secContext (SECURE) (xs:((slCommand command)option,stateRole,'d,'e)Form list) =
   if ((getOmniCommand xs) = ssmSecureComplete:omniCommand)
   then
      [(prop (SOME (SLc (OMNI ssmSecureComplete)))
       :((slCommand command)option, stateRole,'d,'e)Form) impf
       (Name PlatoonSergeant) controls prop (SOME (SLc (PSG actionsIn )))
       :((slCommand command)option, stateRole,'d,'e)Form]
   else [prop NONE]) /\
 (secContext (ACTIONS_IN) (xs:((slCommand command)option,stateRole,'d,'e)Form list) =
    if ((getOmniCommand xs) = ssmActionsInComplete)
    then
      [(prop (SOME (SLc (OMNI ssmActionsInComplete)))
       :((slCommand command)option, stateRole,'d,'e)Form) impf
       (Name PlatoonLeader) controls prop (SOME (SLc (PL withdraw)))
       :((slCommand command)option, stateRole,'d,'e)Form]
   else [prop NONE]) /\
 (secContext (WITHDRAW) (xs:((slCommand command)option,stateRole,'d,'e)Form list) =
    if ((getOmniCommand xs) = ssmWithdrawComplete)
    then
      [(prop (SOME (SLc (OMNI ssmWithdrawComplete)))
       :((slCommand command)option, stateRole,'d,'e)Form) impf
       (Name PlatoonLeader) controls prop (SOME (SLc (PL complete)))
       :((slCommand command)option, stateRole,'d,'e)Form]
   else [prop NONE])`
    


val _= export_theory();
end