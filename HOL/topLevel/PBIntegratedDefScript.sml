(******************************************************************************)
(* PBIntegratedDefTheory                                                      *)
(* Author: Lori Pickering                                                     *)
(* Date: 7 May 2018                                                           *)
(* Definitions for ssmPBIntegratedTheory.                                     *)
(******************************************************************************)
structure PBIntegratedDefScript = struct

(* ===== Interactive Mode ====
app load  ["TypeBase", "listTheory","optionTheory",
           "uavUtilities",
	  "OMNITypeTheory",
	  "PBIntegratedDefTheory","PBTypeIntegratedTheory"];

open TypeBase listTheory optionTheory
     aclsemanticsTheory aclfoundationTheory
     uavUtilities
     OMNITypeTheory
     PBIntegratedDefTheory PBTypeIntegratedTheory
 ==== end Interactive Mode ==== *)

open HolKernel Parse boolLib bossLib;
open TypeBase listTheory optionTheory
open  uavUtilities
open OMNITypeTheory  PBTypeIntegratedTheory

val _ = new_theory "PBIntegratedDef";

(******************************************************************************)
(* Helper functions for extracting commands                                   *)
(******************************************************************************)
val getPlCom_def =
Define`
  (getPlCom ([]:((slCommand command)option)list)
  		      = incomplete:plCommand) /\
  (getPlCom (SOME (SLc (PL cmd)):(slCommand command)option::xs)
  		      = cmd:plCommand) /\
  (getPlCom (_::(xs :(slCommand command)option list))
  		      =  (getPlCom xs))`

(* -------------------------------------------------------------------------- *)
(* state Interpretation function                                              *)
(* -------------------------------------------------------------------------- *)
(* This function doesn't do anything but is necessary to specialize other     *)
(* theorems.                                                                  *)
(* -------------------------------------------------------------------------- *)
(*
val secContextNull_def = Define `
    secContext (x:((slCommand command)option, stateRole, 'd,'e)Form list) =
        [(Name Omni) controls prop (SOME (SLc (OMNI omniCommand)))
	:((slCommand command)option, stateRole, 'd,'e)Form]`
*)

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


val secContext_def =
Define`
 (secContext (PLAN_PB) (xs:((slCommand command)option, stateRole, 'd,'e)Form list) =
    if ((getOmniCommand xs) = ssmPlanPBComplete:omniCommand)
    then
 	[(prop (SOME (SLc (OMNI (ssmPlanPBComplete))))
	 :((slCommand command)option, stateRole, 'd,'e)Form) impf
	 (Name PlatoonLeader) controls prop (SOME (SLc (PL crossLD)))
	  :((slCommand command)option, stateRole, 'd,'e)Form]
    else [prop NONE:((slCommand command)option, stateRole, 'd,'e)Form])         /\
 (secContext (MOVE_TO_ORP) (xs:((slCommand command)option, stateRole, 'd,'e)Form list) =
     if (getOmniCommand xs = ssmMoveToORPComplete)
     then
 	[prop (SOME (SLc  (OMNI (ssmMoveToORPComplete)))) impf
	 (Name PlatoonLeader) controls prop (SOME (SLc (PL conductORP)))]
     else [prop NONE]) /\
 (secContext (CONDUCT_ORP) (xs:((slCommand command)option, stateRole, 'd,'e)Form list) =
     if (getOmniCommand xs = ssmConductORPComplete)
     then
 	[prop (SOME (SLc (OMNI (ssmConductORPComplete)))) impf
	 (Name PlatoonLeader) controls prop (SOME (SLc (PL moveToPB)))]
     else [prop NONE]) /\
 (secContext (MOVE_TO_PB) (xs:((slCommand command)option, stateRole, 'd,'e)Form list) =
     if (getOmniCommand xs = ssmConductORPComplete)
     then
 	[prop (SOME (SLc (OMNI (ssmMoveToPBComplete)))) impf
	 (Name PlatoonLeader) controls prop (SOME (SLc (PL conductPB)))]
     else [prop NONE]) /\
 (secContext (CONDUCT_PB) (xs:((slCommand command)option, stateRole, 'd,'e)Form list) =
     if (getOmniCommand xs = ssmConductPBComplete)
     then
 	[prop (SOME (SLc (OMNI (ssmConductPBComplete)))) impf
	 (Name PlatoonLeader) controls prop (SOME (SLc (PL completePB)))]
     else [prop NONE])`

(* ===== Area 52 ====

 ==== End Area 52 ==== *)

val _= export_theory();
end