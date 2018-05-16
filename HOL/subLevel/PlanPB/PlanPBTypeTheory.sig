signature PlanPBTypeTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val plCommand_BIJ : thm
    val plCommand_CASE : thm
    val plCommand_TY_DEF : thm
    val plCommand_size_def : thm
    val psgCommand_BIJ : thm
    val psgCommand_CASE : thm
    val psgCommand_TY_DEF : thm
    val psgCommand_size_def : thm
    val slCommand_TY_DEF : thm
    val slCommand_case_def : thm
    val slCommand_size_def : thm
    val slOutput_BIJ : thm
    val slOutput_CASE : thm
    val slOutput_TY_DEF : thm
    val slOutput_size_def : thm
    val slState_BIJ : thm
    val slState_CASE : thm
    val slState_TY_DEF : thm
    val slState_size_def : thm
    val stateRole_BIJ : thm
    val stateRole_CASE : thm
    val stateRole_TY_DEF : thm
    val stateRole_size_def : thm

  (*  Theorems  *)
    val datatype_plCommand : thm
    val datatype_psgCommand : thm
    val datatype_slCommand : thm
    val datatype_slOutput : thm
    val datatype_slState : thm
    val datatype_stateRole : thm
    val num2plCommand_11 : thm
    val num2plCommand_ONTO : thm
    val num2plCommand_plCommand2num : thm
    val num2plCommand_thm : thm
    val num2psgCommand_11 : thm
    val num2psgCommand_ONTO : thm
    val num2psgCommand_psgCommand2num : thm
    val num2psgCommand_thm : thm
    val num2slOutput_11 : thm
    val num2slOutput_ONTO : thm
    val num2slOutput_slOutput2num : thm
    val num2slOutput_thm : thm
    val num2slState_11 : thm
    val num2slState_ONTO : thm
    val num2slState_slState2num : thm
    val num2slState_thm : thm
    val num2stateRole_11 : thm
    val num2stateRole_ONTO : thm
    val num2stateRole_stateRole2num : thm
    val num2stateRole_thm : thm
    val plCommand2num_11 : thm
    val plCommand2num_ONTO : thm
    val plCommand2num_num2plCommand : thm
    val plCommand2num_thm : thm
    val plCommand_Axiom : thm
    val plCommand_EQ_plCommand : thm
    val plCommand_case_cong : thm
    val plCommand_case_def : thm
    val plCommand_distinct : thm
    val plCommand_distinct_clauses : thm
    val plCommand_induction : thm
    val plCommand_nchotomy : thm
    val psgCommand2num_11 : thm
    val psgCommand2num_ONTO : thm
    val psgCommand2num_num2psgCommand : thm
    val psgCommand2num_thm : thm
    val psgCommand_Axiom : thm
    val psgCommand_EQ_psgCommand : thm
    val psgCommand_case_cong : thm
    val psgCommand_case_def : thm
    val psgCommand_distinct : thm
    val psgCommand_distinct_clauses : thm
    val psgCommand_induction : thm
    val psgCommand_nchotomy : thm
    val slCommand_11 : thm
    val slCommand_Axiom : thm
    val slCommand_case_cong : thm
    val slCommand_distinct : thm
    val slCommand_distinct_clauses : thm
    val slCommand_induction : thm
    val slCommand_nchotomy : thm
    val slCommand_one_one : thm
    val slOutput2num_11 : thm
    val slOutput2num_ONTO : thm
    val slOutput2num_num2slOutput : thm
    val slOutput2num_thm : thm
    val slOutput_Axiom : thm
    val slOutput_EQ_slOutput : thm
    val slOutput_case_cong : thm
    val slOutput_case_def : thm
    val slOutput_distinct : thm
    val slOutput_distinct_clauses : thm
    val slOutput_induction : thm
    val slOutput_nchotomy : thm
    val slRole_distinct_clauses : thm
    val slState2num_11 : thm
    val slState2num_ONTO : thm
    val slState2num_num2slState : thm
    val slState2num_thm : thm
    val slState_Axiom : thm
    val slState_EQ_slState : thm
    val slState_case_cong : thm
    val slState_case_def : thm
    val slState_distinct : thm
    val slState_distinct_clauses : thm
    val slState_induction : thm
    val slState_nchotomy : thm
    val stateRole2num_11 : thm
    val stateRole2num_ONTO : thm
    val stateRole2num_num2stateRole : thm
    val stateRole2num_thm : thm
    val stateRole_Axiom : thm
    val stateRole_EQ_stateRole : thm
    val stateRole_case_cong : thm
    val stateRole_case_def : thm
    val stateRole_distinct : thm
    val stateRole_induction : thm
    val stateRole_nchotomy : thm

  val PlanPBType_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "PlanPBType"

   [patternMatches] Parent theory of "PlanPBType"

   [plCommand_BIJ]  Definition

      |- (∀a. num2plCommand (plCommand2num a) = a) ∧
         ∀r. (λn. n < 12) r ⇔ (plCommand2num (num2plCommand r) = r)

   [plCommand_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
           (case x of
              receiveMission => v0
            | warno => v1
            | tentativePlan => v2
            | recon => v3
            | report1 => v4
            | completePlan => v5
            | opoid => v6
            | supervise => v7
            | report2 => v8
            | complete => v9
            | plIncomplete => v10
            | invalidPlCommand => v11) =
           (λm.
              if m < 5 then
                if m < 2 then if m = 0 then v0 else v1
                else if m < 3 then v2
                else if m = 3 then v3
                else v4
              else if m < 8 then
                if m < 6 then v5 else if m = 6 then v6 else v7
              else if m < 9 then v8
              else if m < 10 then v9
              else if m = 10 then v10
              else v11) (plCommand2num x)

   [plCommand_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 12) rep

   [plCommand_size_def]  Definition

      |- ∀x. plCommand_size x = 0

   [psgCommand_BIJ]  Definition

      |- (∀a. num2psgCommand (psgCommand2num a) = a) ∧
         ∀r. (λn. n < 3) r ⇔ (psgCommand2num (num2psgCommand r) = r)

   [psgCommand_CASE]  Definition

      |- ∀x v0 v1 v2.
           (case x of
              initiateMovement => v0
            | psgIncomplete => v1
            | invalidPsgCommand => v2) =
           (λm. if m < 1 then v0 else if m = 1 then v1 else v2)
             (psgCommand2num x)

   [psgCommand_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 3) rep

   [psgCommand_size_def]  Definition

      |- ∀x. psgCommand_size x = 0

   [slCommand_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'slCommand' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB) (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'slCommand' a0) ⇒
                  'slCommand' a0) rep

   [slCommand_case_def]  Definition

      |- (∀a f f1. slCommand_CASE (PL a) f f1 = f a) ∧
         ∀a f f1. slCommand_CASE (PSG a) f f1 = f1 a

   [slCommand_size_def]  Definition

      |- (∀a. slCommand_size (PL a) = 1 + plCommand_size a) ∧
         ∀a. slCommand_size (PSG a) = 1 + psgCommand_size a

   [slOutput_BIJ]  Definition

      |- (∀a. num2slOutput (slOutput2num a) = a) ∧
         ∀r. (λn. n < 14) r ⇔ (slOutput2num (num2slOutput r) = r)

   [slOutput_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
           (case x of
              PlanPB => v0
            | ReceiveMission => v1
            | Warno => v2
            | TentativePlan => v3
            | InitiateMovement => v4
            | Recon => v5
            | Report1 => v6
            | CompletePlan => v7
            | Opoid => v8
            | Supervise => v9
            | Report2 => v10
            | Complete => v11
            | unAuthenticated => v12
            | unAuthorized => v13) =
           (λm.
              if m < 6 then
                if m < 2 then if m = 0 then v0 else v1
                else if m < 3 then v2
                else if m < 4 then v3
                else if m = 4 then v4
                else v5
              else if m < 9 then
                if m < 7 then v6 else if m = 7 then v7 else v8
              else if m < 11 then if m = 9 then v9 else v10
              else if m < 12 then v11
              else if m = 12 then v12
              else v13) (slOutput2num x)

   [slOutput_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 14) rep

   [slOutput_size_def]  Definition

      |- ∀x. slOutput_size x = 0

   [slState_BIJ]  Definition

      |- (∀a. num2slState (slState2num a) = a) ∧
         ∀r. (λn. n < 12) r ⇔ (slState2num (num2slState r) = r)

   [slState_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
           (case x of
              PLAN_PB => v0
            | RECEIVE_MISSION => v1
            | WARNO => v2
            | TENTATIVE_PLAN => v3
            | INITIATE_MOVEMENT => v4
            | RECON => v5
            | REPORT1 => v6
            | COMPLETE_PLAN => v7
            | OPOID => v8
            | SUPERVISE => v9
            | REPORT2 => v10
            | COMPLETE => v11) =
           (λm.
              if m < 5 then
                if m < 2 then if m = 0 then v0 else v1
                else if m < 3 then v2
                else if m = 3 then v3
                else v4
              else if m < 8 then
                if m < 6 then v5 else if m = 6 then v6 else v7
              else if m < 9 then v8
              else if m < 10 then v9
              else if m = 10 then v10
              else v11) (slState2num x)

   [slState_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 12) rep

   [slState_size_def]  Definition

      |- ∀x. slState_size x = 0

   [stateRole_BIJ]  Definition

      |- (∀a. num2stateRole (stateRole2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (stateRole2num (num2stateRole r) = r)

   [stateRole_CASE]  Definition

      |- ∀x v0 v1.
           (case x of PlatoonLeader => v0 | PlatoonSergeant => v1) =
           (λm. if m = 0 then v0 else v1) (stateRole2num x)

   [stateRole_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [stateRole_size_def]  Definition

      |- ∀x. stateRole_size x = 0

   [datatype_plCommand]  Theorem

      |- DATATYPE
           (plCommand receiveMission warno tentativePlan recon report1
              completePlan opoid supervise report2 complete plIncomplete
              invalidPlCommand)

   [datatype_psgCommand]  Theorem

      |- DATATYPE
           (psgCommand initiateMovement psgIncomplete invalidPsgCommand)

   [datatype_slCommand]  Theorem

      |- DATATYPE (slCommand PL PSG)

   [datatype_slOutput]  Theorem

      |- DATATYPE
           (slOutput PlanPB ReceiveMission Warno TentativePlan
              InitiateMovement Recon Report1 CompletePlan Opoid Supervise
              Report2 Complete unAuthenticated unAuthorized)

   [datatype_slState]  Theorem

      |- DATATYPE
           (slState PLAN_PB RECEIVE_MISSION WARNO TENTATIVE_PLAN
              INITIATE_MOVEMENT RECON REPORT1 COMPLETE_PLAN OPOID SUPERVISE
              REPORT2 COMPLETE)

   [datatype_stateRole]  Theorem

      |- DATATYPE (stateRole PlatoonLeader PlatoonSergeant)

   [num2plCommand_11]  Theorem

      |- ∀r r'.
           r < 12 ⇒
           r' < 12 ⇒
           ((num2plCommand r = num2plCommand r') ⇔ (r = r'))

   [num2plCommand_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2plCommand r) ∧ r < 12

   [num2plCommand_plCommand2num]  Theorem

      |- ∀a. num2plCommand (plCommand2num a) = a

   [num2plCommand_thm]  Theorem

      |- (num2plCommand 0 = receiveMission) ∧ (num2plCommand 1 = warno) ∧
         (num2plCommand 2 = tentativePlan) ∧ (num2plCommand 3 = recon) ∧
         (num2plCommand 4 = report1) ∧ (num2plCommand 5 = completePlan) ∧
         (num2plCommand 6 = opoid) ∧ (num2plCommand 7 = supervise) ∧
         (num2plCommand 8 = report2) ∧ (num2plCommand 9 = complete) ∧
         (num2plCommand 10 = plIncomplete) ∧
         (num2plCommand 11 = invalidPlCommand)

   [num2psgCommand_11]  Theorem

      |- ∀r r'.
           r < 3 ⇒
           r' < 3 ⇒
           ((num2psgCommand r = num2psgCommand r') ⇔ (r = r'))

   [num2psgCommand_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2psgCommand r) ∧ r < 3

   [num2psgCommand_psgCommand2num]  Theorem

      |- ∀a. num2psgCommand (psgCommand2num a) = a

   [num2psgCommand_thm]  Theorem

      |- (num2psgCommand 0 = initiateMovement) ∧
         (num2psgCommand 1 = psgIncomplete) ∧
         (num2psgCommand 2 = invalidPsgCommand)

   [num2slOutput_11]  Theorem

      |- ∀r r'.
           r < 14 ⇒
           r' < 14 ⇒
           ((num2slOutput r = num2slOutput r') ⇔ (r = r'))

   [num2slOutput_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2slOutput r) ∧ r < 14

   [num2slOutput_slOutput2num]  Theorem

      |- ∀a. num2slOutput (slOutput2num a) = a

   [num2slOutput_thm]  Theorem

      |- (num2slOutput 0 = PlanPB) ∧ (num2slOutput 1 = ReceiveMission) ∧
         (num2slOutput 2 = Warno) ∧ (num2slOutput 3 = TentativePlan) ∧
         (num2slOutput 4 = InitiateMovement) ∧ (num2slOutput 5 = Recon) ∧
         (num2slOutput 6 = Report1) ∧ (num2slOutput 7 = CompletePlan) ∧
         (num2slOutput 8 = Opoid) ∧ (num2slOutput 9 = Supervise) ∧
         (num2slOutput 10 = Report2) ∧ (num2slOutput 11 = Complete) ∧
         (num2slOutput 12 = unAuthenticated) ∧
         (num2slOutput 13 = unAuthorized)

   [num2slState_11]  Theorem

      |- ∀r r'.
           r < 12 ⇒ r' < 12 ⇒ ((num2slState r = num2slState r') ⇔ (r = r'))

   [num2slState_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2slState r) ∧ r < 12

   [num2slState_slState2num]  Theorem

      |- ∀a. num2slState (slState2num a) = a

   [num2slState_thm]  Theorem

      |- (num2slState 0 = PLAN_PB) ∧ (num2slState 1 = RECEIVE_MISSION) ∧
         (num2slState 2 = WARNO) ∧ (num2slState 3 = TENTATIVE_PLAN) ∧
         (num2slState 4 = INITIATE_MOVEMENT) ∧ (num2slState 5 = RECON) ∧
         (num2slState 6 = REPORT1) ∧ (num2slState 7 = COMPLETE_PLAN) ∧
         (num2slState 8 = OPOID) ∧ (num2slState 9 = SUPERVISE) ∧
         (num2slState 10 = REPORT2) ∧ (num2slState 11 = COMPLETE)

   [num2stateRole_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒
           r' < 2 ⇒
           ((num2stateRole r = num2stateRole r') ⇔ (r = r'))

   [num2stateRole_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2stateRole r) ∧ r < 2

   [num2stateRole_stateRole2num]  Theorem

      |- ∀a. num2stateRole (stateRole2num a) = a

   [num2stateRole_thm]  Theorem

      |- (num2stateRole 0 = PlatoonLeader) ∧
         (num2stateRole 1 = PlatoonSergeant)

   [plCommand2num_11]  Theorem

      |- ∀a a'. (plCommand2num a = plCommand2num a') ⇔ (a = a')

   [plCommand2num_ONTO]  Theorem

      |- ∀r. r < 12 ⇔ ∃a. r = plCommand2num a

   [plCommand2num_num2plCommand]  Theorem

      |- ∀r. r < 12 ⇔ (plCommand2num (num2plCommand r) = r)

   [plCommand2num_thm]  Theorem

      |- (plCommand2num receiveMission = 0) ∧ (plCommand2num warno = 1) ∧
         (plCommand2num tentativePlan = 2) ∧ (plCommand2num recon = 3) ∧
         (plCommand2num report1 = 4) ∧ (plCommand2num completePlan = 5) ∧
         (plCommand2num opoid = 6) ∧ (plCommand2num supervise = 7) ∧
         (plCommand2num report2 = 8) ∧ (plCommand2num complete = 9) ∧
         (plCommand2num plIncomplete = 10) ∧
         (plCommand2num invalidPlCommand = 11)

   [plCommand_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11.
           ∃f.
             (f receiveMission = x0) ∧ (f warno = x1) ∧
             (f tentativePlan = x2) ∧ (f recon = x3) ∧ (f report1 = x4) ∧
             (f completePlan = x5) ∧ (f opoid = x6) ∧ (f supervise = x7) ∧
             (f report2 = x8) ∧ (f complete = x9) ∧
             (f plIncomplete = x10) ∧ (f invalidPlCommand = x11)

   [plCommand_EQ_plCommand]  Theorem

      |- ∀a a'. (a = a') ⇔ (plCommand2num a = plCommand2num a')

   [plCommand_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
           (M = M') ∧ ((M' = receiveMission) ⇒ (v0 = v0')) ∧
           ((M' = warno) ⇒ (v1 = v1')) ∧
           ((M' = tentativePlan) ⇒ (v2 = v2')) ∧
           ((M' = recon) ⇒ (v3 = v3')) ∧ ((M' = report1) ⇒ (v4 = v4')) ∧
           ((M' = completePlan) ⇒ (v5 = v5')) ∧
           ((M' = opoid) ⇒ (v6 = v6')) ∧ ((M' = supervise) ⇒ (v7 = v7')) ∧
           ((M' = report2) ⇒ (v8 = v8')) ∧ ((M' = complete) ⇒ (v9 = v9')) ∧
           ((M' = plIncomplete) ⇒ (v10 = v10')) ∧
           ((M' = invalidPlCommand) ⇒ (v11 = v11')) ⇒
           ((case M of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            case M' of
              receiveMission => v0'
            | warno => v1'
            | tentativePlan => v2'
            | recon => v3'
            | report1 => v4'
            | completePlan => v5'
            | opoid => v6'
            | supervise => v7'
            | report2 => v8'
            | complete => v9'
            | plIncomplete => v10'
            | invalidPlCommand => v11')

   [plCommand_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case receiveMission of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case warno of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case tentativePlan of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case recon of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case report1 of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case completePlan of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v5) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case opoid of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v6) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case supervise of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v7) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case report2 of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v8) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case complete of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v9) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case plIncomplete of
               receiveMission => v0
             | warno => v1
             | tentativePlan => v2
             | recon => v3
             | report1 => v4
             | completePlan => v5
             | opoid => v6
             | supervise => v7
             | report2 => v8
             | complete => v9
             | plIncomplete => v10
             | invalidPlCommand => v11) =
            v10) ∧
         ∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
           (case invalidPlCommand of
              receiveMission => v0
            | warno => v1
            | tentativePlan => v2
            | recon => v3
            | report1 => v4
            | completePlan => v5
            | opoid => v6
            | supervise => v7
            | report2 => v8
            | complete => v9
            | plIncomplete => v10
            | invalidPlCommand => v11) =
           v11

   [plCommand_distinct]  Theorem

      |- receiveMission ≠ warno ∧ receiveMission ≠ tentativePlan ∧
         receiveMission ≠ recon ∧ receiveMission ≠ report1 ∧
         receiveMission ≠ completePlan ∧ receiveMission ≠ opoid ∧
         receiveMission ≠ supervise ∧ receiveMission ≠ report2 ∧
         receiveMission ≠ complete ∧ receiveMission ≠ plIncomplete ∧
         receiveMission ≠ invalidPlCommand ∧ warno ≠ tentativePlan ∧
         warno ≠ recon ∧ warno ≠ report1 ∧ warno ≠ completePlan ∧
         warno ≠ opoid ∧ warno ≠ supervise ∧ warno ≠ report2 ∧
         warno ≠ complete ∧ warno ≠ plIncomplete ∧
         warno ≠ invalidPlCommand ∧ tentativePlan ≠ recon ∧
         tentativePlan ≠ report1 ∧ tentativePlan ≠ completePlan ∧
         tentativePlan ≠ opoid ∧ tentativePlan ≠ supervise ∧
         tentativePlan ≠ report2 ∧ tentativePlan ≠ complete ∧
         tentativePlan ≠ plIncomplete ∧ tentativePlan ≠ invalidPlCommand ∧
         recon ≠ report1 ∧ recon ≠ completePlan ∧ recon ≠ opoid ∧
         recon ≠ supervise ∧ recon ≠ report2 ∧ recon ≠ complete ∧
         recon ≠ plIncomplete ∧ recon ≠ invalidPlCommand ∧
         report1 ≠ completePlan ∧ report1 ≠ opoid ∧ report1 ≠ supervise ∧
         report1 ≠ report2 ∧ report1 ≠ complete ∧ report1 ≠ plIncomplete ∧
         report1 ≠ invalidPlCommand ∧ completePlan ≠ opoid ∧
         completePlan ≠ supervise ∧ completePlan ≠ report2 ∧
         completePlan ≠ complete ∧ completePlan ≠ plIncomplete ∧
         completePlan ≠ invalidPlCommand ∧ opoid ≠ supervise ∧
         opoid ≠ report2 ∧ opoid ≠ complete ∧ opoid ≠ plIncomplete ∧
         opoid ≠ invalidPlCommand ∧ supervise ≠ report2 ∧
         supervise ≠ complete ∧ supervise ≠ plIncomplete ∧
         supervise ≠ invalidPlCommand ∧ report2 ≠ complete ∧
         report2 ≠ plIncomplete ∧ report2 ≠ invalidPlCommand ∧
         complete ≠ plIncomplete ∧ complete ≠ invalidPlCommand ∧
         plIncomplete ≠ invalidPlCommand

   [plCommand_distinct_clauses]  Theorem

      |- receiveMission ≠ warno ∧ receiveMission ≠ tentativePlan ∧
         receiveMission ≠ recon ∧ receiveMission ≠ report1 ∧
         receiveMission ≠ completePlan ∧ receiveMission ≠ opoid ∧
         receiveMission ≠ supervise ∧ receiveMission ≠ report2 ∧
         receiveMission ≠ complete ∧ receiveMission ≠ plIncomplete ∧
         receiveMission ≠ invalidPlCommand ∧ warno ≠ tentativePlan ∧
         warno ≠ recon ∧ warno ≠ report1 ∧ warno ≠ completePlan ∧
         warno ≠ opoid ∧ warno ≠ supervise ∧ warno ≠ report2 ∧
         warno ≠ complete ∧ warno ≠ plIncomplete ∧
         warno ≠ invalidPlCommand ∧ tentativePlan ≠ recon ∧
         tentativePlan ≠ report1 ∧ tentativePlan ≠ completePlan ∧
         tentativePlan ≠ opoid ∧ tentativePlan ≠ supervise ∧
         tentativePlan ≠ report2 ∧ tentativePlan ≠ complete ∧
         tentativePlan ≠ plIncomplete ∧ tentativePlan ≠ invalidPlCommand ∧
         recon ≠ report1 ∧ recon ≠ completePlan ∧ recon ≠ opoid ∧
         recon ≠ supervise ∧ recon ≠ report2 ∧ recon ≠ complete ∧
         recon ≠ plIncomplete ∧ recon ≠ invalidPlCommand ∧
         report1 ≠ completePlan ∧ report1 ≠ opoid ∧ report1 ≠ supervise ∧
         report1 ≠ report2 ∧ report1 ≠ complete ∧ report1 ≠ plIncomplete ∧
         report1 ≠ invalidPlCommand ∧ completePlan ≠ opoid ∧
         completePlan ≠ supervise ∧ completePlan ≠ report2 ∧
         completePlan ≠ complete ∧ completePlan ≠ plIncomplete ∧
         completePlan ≠ invalidPlCommand ∧ opoid ≠ supervise ∧
         opoid ≠ report2 ∧ opoid ≠ complete ∧ opoid ≠ plIncomplete ∧
         opoid ≠ invalidPlCommand ∧ supervise ≠ report2 ∧
         supervise ≠ complete ∧ supervise ≠ plIncomplete ∧
         supervise ≠ invalidPlCommand ∧ report2 ≠ complete ∧
         report2 ≠ plIncomplete ∧ report2 ≠ invalidPlCommand ∧
         complete ≠ plIncomplete ∧ complete ≠ invalidPlCommand ∧
         plIncomplete ≠ invalidPlCommand

   [plCommand_induction]  Theorem

      |- ∀P.
           P complete ∧ P completePlan ∧ P invalidPlCommand ∧ P opoid ∧
           P plIncomplete ∧ P receiveMission ∧ P recon ∧ P report1 ∧
           P report2 ∧ P supervise ∧ P tentativePlan ∧ P warno ⇒
           ∀a. P a

   [plCommand_nchotomy]  Theorem

      |- ∀a.
           (a = receiveMission) ∨ (a = warno) ∨ (a = tentativePlan) ∨
           (a = recon) ∨ (a = report1) ∨ (a = completePlan) ∨ (a = opoid) ∨
           (a = supervise) ∨ (a = report2) ∨ (a = complete) ∨
           (a = plIncomplete) ∨ (a = invalidPlCommand)

   [psgCommand2num_11]  Theorem

      |- ∀a a'. (psgCommand2num a = psgCommand2num a') ⇔ (a = a')

   [psgCommand2num_ONTO]  Theorem

      |- ∀r. r < 3 ⇔ ∃a. r = psgCommand2num a

   [psgCommand2num_num2psgCommand]  Theorem

      |- ∀r. r < 3 ⇔ (psgCommand2num (num2psgCommand r) = r)

   [psgCommand2num_thm]  Theorem

      |- (psgCommand2num initiateMovement = 0) ∧
         (psgCommand2num psgIncomplete = 1) ∧
         (psgCommand2num invalidPsgCommand = 2)

   [psgCommand_Axiom]  Theorem

      |- ∀x0 x1 x2.
           ∃f.
             (f initiateMovement = x0) ∧ (f psgIncomplete = x1) ∧
             (f invalidPsgCommand = x2)

   [psgCommand_EQ_psgCommand]  Theorem

      |- ∀a a'. (a = a') ⇔ (psgCommand2num a = psgCommand2num a')

   [psgCommand_case_cong]  Theorem

      |- ∀M M' v0 v1 v2.
           (M = M') ∧ ((M' = initiateMovement) ⇒ (v0 = v0')) ∧
           ((M' = psgIncomplete) ⇒ (v1 = v1')) ∧
           ((M' = invalidPsgCommand) ⇒ (v2 = v2')) ⇒
           ((case M of
               initiateMovement => v0
             | psgIncomplete => v1
             | invalidPsgCommand => v2) =
            case M' of
              initiateMovement => v0'
            | psgIncomplete => v1'
            | invalidPsgCommand => v2')

   [psgCommand_case_def]  Theorem

      |- (∀v0 v1 v2.
            (case initiateMovement of
               initiateMovement => v0
             | psgIncomplete => v1
             | invalidPsgCommand => v2) =
            v0) ∧
         (∀v0 v1 v2.
            (case psgIncomplete of
               initiateMovement => v0
             | psgIncomplete => v1
             | invalidPsgCommand => v2) =
            v1) ∧
         ∀v0 v1 v2.
           (case invalidPsgCommand of
              initiateMovement => v0
            | psgIncomplete => v1
            | invalidPsgCommand => v2) =
           v2

   [psgCommand_distinct]  Theorem

      |- initiateMovement ≠ psgIncomplete ∧
         initiateMovement ≠ invalidPsgCommand ∧
         psgIncomplete ≠ invalidPsgCommand

   [psgCommand_distinct_clauses]  Theorem

      |- initiateMovement ≠ psgIncomplete ∧
         initiateMovement ≠ invalidPsgCommand ∧
         psgIncomplete ≠ invalidPsgCommand

   [psgCommand_induction]  Theorem

      |- ∀P.
           P initiateMovement ∧ P invalidPsgCommand ∧ P psgIncomplete ⇒
           ∀a. P a

   [psgCommand_nchotomy]  Theorem

      |- ∀a.
           (a = initiateMovement) ∨ (a = psgIncomplete) ∨
           (a = invalidPsgCommand)

   [slCommand_11]  Theorem

      |- (∀a a'. (PL a = PL a') ⇔ (a = a')) ∧
         ∀a a'. (PSG a = PSG a') ⇔ (a = a')

   [slCommand_Axiom]  Theorem

      |- ∀f0 f1. ∃fn. (∀a. fn (PL a) = f0 a) ∧ ∀a. fn (PSG a) = f1 a

   [slCommand_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = PL a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = PSG a) ⇒ (f1 a = f1' a)) ⇒
           (slCommand_CASE M f f1 = slCommand_CASE M' f' f1')

   [slCommand_distinct]  Theorem

      |- ∀a' a. PL a ≠ PSG a'

   [slCommand_distinct_clauses]  Theorem

      |- ∀a' a. PL a ≠ PSG a'

   [slCommand_induction]  Theorem

      |- ∀P. (∀p. P (PL p)) ∧ (∀p. P (PSG p)) ⇒ ∀s. P s

   [slCommand_nchotomy]  Theorem

      |- ∀ss. (∃p. ss = PL p) ∨ ∃p. ss = PSG p

   [slCommand_one_one]  Theorem

      |- (∀a a'. (PL a = PL a') ⇔ (a = a')) ∧
         ∀a a'. (PSG a = PSG a') ⇔ (a = a')

   [slOutput2num_11]  Theorem

      |- ∀a a'. (slOutput2num a = slOutput2num a') ⇔ (a = a')

   [slOutput2num_ONTO]  Theorem

      |- ∀r. r < 14 ⇔ ∃a. r = slOutput2num a

   [slOutput2num_num2slOutput]  Theorem

      |- ∀r. r < 14 ⇔ (slOutput2num (num2slOutput r) = r)

   [slOutput2num_thm]  Theorem

      |- (slOutput2num PlanPB = 0) ∧ (slOutput2num ReceiveMission = 1) ∧
         (slOutput2num Warno = 2) ∧ (slOutput2num TentativePlan = 3) ∧
         (slOutput2num InitiateMovement = 4) ∧ (slOutput2num Recon = 5) ∧
         (slOutput2num Report1 = 6) ∧ (slOutput2num CompletePlan = 7) ∧
         (slOutput2num Opoid = 8) ∧ (slOutput2num Supervise = 9) ∧
         (slOutput2num Report2 = 10) ∧ (slOutput2num Complete = 11) ∧
         (slOutput2num unAuthenticated = 12) ∧
         (slOutput2num unAuthorized = 13)

   [slOutput_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13.
           ∃f.
             (f PlanPB = x0) ∧ (f ReceiveMission = x1) ∧ (f Warno = x2) ∧
             (f TentativePlan = x3) ∧ (f InitiateMovement = x4) ∧
             (f Recon = x5) ∧ (f Report1 = x6) ∧ (f CompletePlan = x7) ∧
             (f Opoid = x8) ∧ (f Supervise = x9) ∧ (f Report2 = x10) ∧
             (f Complete = x11) ∧ (f unAuthenticated = x12) ∧
             (f unAuthorized = x13)

   [slOutput_EQ_slOutput]  Theorem

      |- ∀a a'. (a = a') ⇔ (slOutput2num a = slOutput2num a')

   [slOutput_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
           (M = M') ∧ ((M' = PlanPB) ⇒ (v0 = v0')) ∧
           ((M' = ReceiveMission) ⇒ (v1 = v1')) ∧
           ((M' = Warno) ⇒ (v2 = v2')) ∧
           ((M' = TentativePlan) ⇒ (v3 = v3')) ∧
           ((M' = InitiateMovement) ⇒ (v4 = v4')) ∧
           ((M' = Recon) ⇒ (v5 = v5')) ∧ ((M' = Report1) ⇒ (v6 = v6')) ∧
           ((M' = CompletePlan) ⇒ (v7 = v7')) ∧
           ((M' = Opoid) ⇒ (v8 = v8')) ∧ ((M' = Supervise) ⇒ (v9 = v9')) ∧
           ((M' = Report2) ⇒ (v10 = v10')) ∧
           ((M' = Complete) ⇒ (v11 = v11')) ∧
           ((M' = unAuthenticated) ⇒ (v12 = v12')) ∧
           ((M' = unAuthorized) ⇒ (v13 = v13')) ⇒
           ((case M of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            case M' of
              PlanPB => v0'
            | ReceiveMission => v1'
            | Warno => v2'
            | TentativePlan => v3'
            | InitiateMovement => v4'
            | Recon => v5'
            | Report1 => v6'
            | CompletePlan => v7'
            | Opoid => v8'
            | Supervise => v9'
            | Report2 => v10'
            | Complete => v11'
            | unAuthenticated => v12'
            | unAuthorized => v13')

   [slOutput_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case PlanPB of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case ReceiveMission of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Warno of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case TentativePlan of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case InitiateMovement of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Recon of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v5) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Report1 of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v6) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case CompletePlan of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v7) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Opoid of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v8) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Supervise of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v9) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Report2 of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v10) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case Complete of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v11) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
            (case unAuthenticated of
               PlanPB => v0
             | ReceiveMission => v1
             | Warno => v2
             | TentativePlan => v3
             | InitiateMovement => v4
             | Recon => v5
             | Report1 => v6
             | CompletePlan => v7
             | Opoid => v8
             | Supervise => v9
             | Report2 => v10
             | Complete => v11
             | unAuthenticated => v12
             | unAuthorized => v13) =
            v12) ∧
         ∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13.
           (case unAuthorized of
              PlanPB => v0
            | ReceiveMission => v1
            | Warno => v2
            | TentativePlan => v3
            | InitiateMovement => v4
            | Recon => v5
            | Report1 => v6
            | CompletePlan => v7
            | Opoid => v8
            | Supervise => v9
            | Report2 => v10
            | Complete => v11
            | unAuthenticated => v12
            | unAuthorized => v13) =
           v13

   [slOutput_distinct]  Theorem

      |- PlanPB ≠ ReceiveMission ∧ PlanPB ≠ Warno ∧
         PlanPB ≠ TentativePlan ∧ PlanPB ≠ InitiateMovement ∧
         PlanPB ≠ Recon ∧ PlanPB ≠ Report1 ∧ PlanPB ≠ CompletePlan ∧
         PlanPB ≠ Opoid ∧ PlanPB ≠ Supervise ∧ PlanPB ≠ Report2 ∧
         PlanPB ≠ Complete ∧ PlanPB ≠ unAuthenticated ∧
         PlanPB ≠ unAuthorized ∧ ReceiveMission ≠ Warno ∧
         ReceiveMission ≠ TentativePlan ∧
         ReceiveMission ≠ InitiateMovement ∧ ReceiveMission ≠ Recon ∧
         ReceiveMission ≠ Report1 ∧ ReceiveMission ≠ CompletePlan ∧
         ReceiveMission ≠ Opoid ∧ ReceiveMission ≠ Supervise ∧
         ReceiveMission ≠ Report2 ∧ ReceiveMission ≠ Complete ∧
         ReceiveMission ≠ unAuthenticated ∧ ReceiveMission ≠ unAuthorized ∧
         Warno ≠ TentativePlan ∧ Warno ≠ InitiateMovement ∧ Warno ≠ Recon ∧
         Warno ≠ Report1 ∧ Warno ≠ CompletePlan ∧ Warno ≠ Opoid ∧
         Warno ≠ Supervise ∧ Warno ≠ Report2 ∧ Warno ≠ Complete ∧
         Warno ≠ unAuthenticated ∧ Warno ≠ unAuthorized ∧
         TentativePlan ≠ InitiateMovement ∧ TentativePlan ≠ Recon ∧
         TentativePlan ≠ Report1 ∧ TentativePlan ≠ CompletePlan ∧
         TentativePlan ≠ Opoid ∧ TentativePlan ≠ Supervise ∧
         TentativePlan ≠ Report2 ∧ TentativePlan ≠ Complete ∧
         TentativePlan ≠ unAuthenticated ∧ TentativePlan ≠ unAuthorized ∧
         InitiateMovement ≠ Recon ∧ InitiateMovement ≠ Report1 ∧
         InitiateMovement ≠ CompletePlan ∧ InitiateMovement ≠ Opoid ∧
         InitiateMovement ≠ Supervise ∧ InitiateMovement ≠ Report2 ∧
         InitiateMovement ≠ Complete ∧ InitiateMovement ≠ unAuthenticated ∧
         InitiateMovement ≠ unAuthorized ∧ Recon ≠ Report1 ∧
         Recon ≠ CompletePlan ∧ Recon ≠ Opoid ∧ Recon ≠ Supervise ∧
         Recon ≠ Report2 ∧ Recon ≠ Complete ∧ Recon ≠ unAuthenticated ∧
         Recon ≠ unAuthorized ∧ Report1 ≠ CompletePlan ∧ Report1 ≠ Opoid ∧
         Report1 ≠ Supervise ∧ Report1 ≠ Report2 ∧ Report1 ≠ Complete ∧
         Report1 ≠ unAuthenticated ∧ Report1 ≠ unAuthorized ∧
         CompletePlan ≠ Opoid ∧ CompletePlan ≠ Supervise ∧
         CompletePlan ≠ Report2 ∧ CompletePlan ≠ Complete ∧
         CompletePlan ≠ unAuthenticated ∧ CompletePlan ≠ unAuthorized ∧
         Opoid ≠ Supervise ∧ Opoid ≠ Report2 ∧ Opoid ≠ Complete ∧
         Opoid ≠ unAuthenticated ∧ Opoid ≠ unAuthorized ∧
         Supervise ≠ Report2 ∧ Supervise ≠ Complete ∧
         Supervise ≠ unAuthenticated ∧ Supervise ≠ unAuthorized ∧
         Report2 ≠ Complete ∧ Report2 ≠ unAuthenticated ∧
         Report2 ≠ unAuthorized ∧ Complete ≠ unAuthenticated ∧
         Complete ≠ unAuthorized ∧ unAuthenticated ≠ unAuthorized

   [slOutput_distinct_clauses]  Theorem

      |- PlanPB ≠ ReceiveMission ∧ PlanPB ≠ Warno ∧
         PlanPB ≠ TentativePlan ∧ PlanPB ≠ InitiateMovement ∧
         PlanPB ≠ Recon ∧ PlanPB ≠ Report1 ∧ PlanPB ≠ CompletePlan ∧
         PlanPB ≠ Opoid ∧ PlanPB ≠ Supervise ∧ PlanPB ≠ Report2 ∧
         PlanPB ≠ Complete ∧ PlanPB ≠ unAuthenticated ∧
         PlanPB ≠ unAuthorized ∧ ReceiveMission ≠ Warno ∧
         ReceiveMission ≠ TentativePlan ∧
         ReceiveMission ≠ InitiateMovement ∧ ReceiveMission ≠ Recon ∧
         ReceiveMission ≠ Report1 ∧ ReceiveMission ≠ CompletePlan ∧
         ReceiveMission ≠ Opoid ∧ ReceiveMission ≠ Supervise ∧
         ReceiveMission ≠ Report2 ∧ ReceiveMission ≠ Complete ∧
         ReceiveMission ≠ unAuthenticated ∧ ReceiveMission ≠ unAuthorized ∧
         Warno ≠ TentativePlan ∧ Warno ≠ InitiateMovement ∧ Warno ≠ Recon ∧
         Warno ≠ Report1 ∧ Warno ≠ CompletePlan ∧ Warno ≠ Opoid ∧
         Warno ≠ Supervise ∧ Warno ≠ Report2 ∧ Warno ≠ Complete ∧
         Warno ≠ unAuthenticated ∧ Warno ≠ unAuthorized ∧
         TentativePlan ≠ InitiateMovement ∧ TentativePlan ≠ Recon ∧
         TentativePlan ≠ Report1 ∧ TentativePlan ≠ CompletePlan ∧
         TentativePlan ≠ Opoid ∧ TentativePlan ≠ Supervise ∧
         TentativePlan ≠ Report2 ∧ TentativePlan ≠ Complete ∧
         TentativePlan ≠ unAuthenticated ∧ TentativePlan ≠ unAuthorized ∧
         InitiateMovement ≠ Recon ∧ InitiateMovement ≠ Report1 ∧
         InitiateMovement ≠ CompletePlan ∧ InitiateMovement ≠ Opoid ∧
         InitiateMovement ≠ Supervise ∧ InitiateMovement ≠ Report2 ∧
         InitiateMovement ≠ Complete ∧ InitiateMovement ≠ unAuthenticated ∧
         InitiateMovement ≠ unAuthorized ∧ Recon ≠ Report1 ∧
         Recon ≠ CompletePlan ∧ Recon ≠ Opoid ∧ Recon ≠ Supervise ∧
         Recon ≠ Report2 ∧ Recon ≠ Complete ∧ Recon ≠ unAuthenticated ∧
         Recon ≠ unAuthorized ∧ Report1 ≠ CompletePlan ∧ Report1 ≠ Opoid ∧
         Report1 ≠ Supervise ∧ Report1 ≠ Report2 ∧ Report1 ≠ Complete ∧
         Report1 ≠ unAuthenticated ∧ Report1 ≠ unAuthorized ∧
         CompletePlan ≠ Opoid ∧ CompletePlan ≠ Supervise ∧
         CompletePlan ≠ Report2 ∧ CompletePlan ≠ Complete ∧
         CompletePlan ≠ unAuthenticated ∧ CompletePlan ≠ unAuthorized ∧
         Opoid ≠ Supervise ∧ Opoid ≠ Report2 ∧ Opoid ≠ Complete ∧
         Opoid ≠ unAuthenticated ∧ Opoid ≠ unAuthorized ∧
         Supervise ≠ Report2 ∧ Supervise ≠ Complete ∧
         Supervise ≠ unAuthenticated ∧ Supervise ≠ unAuthorized ∧
         Report2 ≠ Complete ∧ Report2 ≠ unAuthenticated ∧
         Report2 ≠ unAuthorized ∧ Complete ≠ unAuthenticated ∧
         Complete ≠ unAuthorized ∧ unAuthenticated ≠ unAuthorized

   [slOutput_induction]  Theorem

      |- ∀P.
           P Complete ∧ P CompletePlan ∧ P InitiateMovement ∧ P Opoid ∧
           P PlanPB ∧ P ReceiveMission ∧ P Recon ∧ P Report1 ∧ P Report2 ∧
           P Supervise ∧ P TentativePlan ∧ P Warno ∧ P unAuthenticated ∧
           P unAuthorized ⇒
           ∀a. P a

   [slOutput_nchotomy]  Theorem

      |- ∀a.
           (a = PlanPB) ∨ (a = ReceiveMission) ∨ (a = Warno) ∨
           (a = TentativePlan) ∨ (a = InitiateMovement) ∨ (a = Recon) ∨
           (a = Report1) ∨ (a = CompletePlan) ∨ (a = Opoid) ∨
           (a = Supervise) ∨ (a = Report2) ∨ (a = Complete) ∨
           (a = unAuthenticated) ∨ (a = unAuthorized)

   [slRole_distinct_clauses]  Theorem

      |- PlatoonLeader ≠ PlatoonSergeant

   [slState2num_11]  Theorem

      |- ∀a a'. (slState2num a = slState2num a') ⇔ (a = a')

   [slState2num_ONTO]  Theorem

      |- ∀r. r < 12 ⇔ ∃a. r = slState2num a

   [slState2num_num2slState]  Theorem

      |- ∀r. r < 12 ⇔ (slState2num (num2slState r) = r)

   [slState2num_thm]  Theorem

      |- (slState2num PLAN_PB = 0) ∧ (slState2num RECEIVE_MISSION = 1) ∧
         (slState2num WARNO = 2) ∧ (slState2num TENTATIVE_PLAN = 3) ∧
         (slState2num INITIATE_MOVEMENT = 4) ∧ (slState2num RECON = 5) ∧
         (slState2num REPORT1 = 6) ∧ (slState2num COMPLETE_PLAN = 7) ∧
         (slState2num OPOID = 8) ∧ (slState2num SUPERVISE = 9) ∧
         (slState2num REPORT2 = 10) ∧ (slState2num COMPLETE = 11)

   [slState_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11.
           ∃f.
             (f PLAN_PB = x0) ∧ (f RECEIVE_MISSION = x1) ∧ (f WARNO = x2) ∧
             (f TENTATIVE_PLAN = x3) ∧ (f INITIATE_MOVEMENT = x4) ∧
             (f RECON = x5) ∧ (f REPORT1 = x6) ∧ (f COMPLETE_PLAN = x7) ∧
             (f OPOID = x8) ∧ (f SUPERVISE = x9) ∧ (f REPORT2 = x10) ∧
             (f COMPLETE = x11)

   [slState_EQ_slState]  Theorem

      |- ∀a a'. (a = a') ⇔ (slState2num a = slState2num a')

   [slState_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
           (M = M') ∧ ((M' = PLAN_PB) ⇒ (v0 = v0')) ∧
           ((M' = RECEIVE_MISSION) ⇒ (v1 = v1')) ∧
           ((M' = WARNO) ⇒ (v2 = v2')) ∧
           ((M' = TENTATIVE_PLAN) ⇒ (v3 = v3')) ∧
           ((M' = INITIATE_MOVEMENT) ⇒ (v4 = v4')) ∧
           ((M' = RECON) ⇒ (v5 = v5')) ∧ ((M' = REPORT1) ⇒ (v6 = v6')) ∧
           ((M' = COMPLETE_PLAN) ⇒ (v7 = v7')) ∧
           ((M' = OPOID) ⇒ (v8 = v8')) ∧ ((M' = SUPERVISE) ⇒ (v9 = v9')) ∧
           ((M' = REPORT2) ⇒ (v10 = v10')) ∧
           ((M' = COMPLETE) ⇒ (v11 = v11')) ⇒
           ((case M of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            case M' of
              PLAN_PB => v0'
            | RECEIVE_MISSION => v1'
            | WARNO => v2'
            | TENTATIVE_PLAN => v3'
            | INITIATE_MOVEMENT => v4'
            | RECON => v5'
            | REPORT1 => v6'
            | COMPLETE_PLAN => v7'
            | OPOID => v8'
            | SUPERVISE => v9'
            | REPORT2 => v10'
            | COMPLETE => v11')

   [slState_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case PLAN_PB of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case RECEIVE_MISSION of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case WARNO of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case TENTATIVE_PLAN of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case INITIATE_MOVEMENT of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case RECON of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v5) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case REPORT1 of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v6) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case COMPLETE_PLAN of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v7) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case OPOID of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v8) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case SUPERVISE of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v9) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
            (case REPORT2 of
               PLAN_PB => v0
             | RECEIVE_MISSION => v1
             | WARNO => v2
             | TENTATIVE_PLAN => v3
             | INITIATE_MOVEMENT => v4
             | RECON => v5
             | REPORT1 => v6
             | COMPLETE_PLAN => v7
             | OPOID => v8
             | SUPERVISE => v9
             | REPORT2 => v10
             | COMPLETE => v11) =
            v10) ∧
         ∀v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11.
           (case COMPLETE of
              PLAN_PB => v0
            | RECEIVE_MISSION => v1
            | WARNO => v2
            | TENTATIVE_PLAN => v3
            | INITIATE_MOVEMENT => v4
            | RECON => v5
            | REPORT1 => v6
            | COMPLETE_PLAN => v7
            | OPOID => v8
            | SUPERVISE => v9
            | REPORT2 => v10
            | COMPLETE => v11) =
           v11

   [slState_distinct]  Theorem

      |- PLAN_PB ≠ RECEIVE_MISSION ∧ PLAN_PB ≠ WARNO ∧
         PLAN_PB ≠ TENTATIVE_PLAN ∧ PLAN_PB ≠ INITIATE_MOVEMENT ∧
         PLAN_PB ≠ RECON ∧ PLAN_PB ≠ REPORT1 ∧ PLAN_PB ≠ COMPLETE_PLAN ∧
         PLAN_PB ≠ OPOID ∧ PLAN_PB ≠ SUPERVISE ∧ PLAN_PB ≠ REPORT2 ∧
         PLAN_PB ≠ COMPLETE ∧ RECEIVE_MISSION ≠ WARNO ∧
         RECEIVE_MISSION ≠ TENTATIVE_PLAN ∧
         RECEIVE_MISSION ≠ INITIATE_MOVEMENT ∧ RECEIVE_MISSION ≠ RECON ∧
         RECEIVE_MISSION ≠ REPORT1 ∧ RECEIVE_MISSION ≠ COMPLETE_PLAN ∧
         RECEIVE_MISSION ≠ OPOID ∧ RECEIVE_MISSION ≠ SUPERVISE ∧
         RECEIVE_MISSION ≠ REPORT2 ∧ RECEIVE_MISSION ≠ COMPLETE ∧
         WARNO ≠ TENTATIVE_PLAN ∧ WARNO ≠ INITIATE_MOVEMENT ∧
         WARNO ≠ RECON ∧ WARNO ≠ REPORT1 ∧ WARNO ≠ COMPLETE_PLAN ∧
         WARNO ≠ OPOID ∧ WARNO ≠ SUPERVISE ∧ WARNO ≠ REPORT2 ∧
         WARNO ≠ COMPLETE ∧ TENTATIVE_PLAN ≠ INITIATE_MOVEMENT ∧
         TENTATIVE_PLAN ≠ RECON ∧ TENTATIVE_PLAN ≠ REPORT1 ∧
         TENTATIVE_PLAN ≠ COMPLETE_PLAN ∧ TENTATIVE_PLAN ≠ OPOID ∧
         TENTATIVE_PLAN ≠ SUPERVISE ∧ TENTATIVE_PLAN ≠ REPORT2 ∧
         TENTATIVE_PLAN ≠ COMPLETE ∧ INITIATE_MOVEMENT ≠ RECON ∧
         INITIATE_MOVEMENT ≠ REPORT1 ∧ INITIATE_MOVEMENT ≠ COMPLETE_PLAN ∧
         INITIATE_MOVEMENT ≠ OPOID ∧ INITIATE_MOVEMENT ≠ SUPERVISE ∧
         INITIATE_MOVEMENT ≠ REPORT2 ∧ INITIATE_MOVEMENT ≠ COMPLETE ∧
         RECON ≠ REPORT1 ∧ RECON ≠ COMPLETE_PLAN ∧ RECON ≠ OPOID ∧
         RECON ≠ SUPERVISE ∧ RECON ≠ REPORT2 ∧ RECON ≠ COMPLETE ∧
         REPORT1 ≠ COMPLETE_PLAN ∧ REPORT1 ≠ OPOID ∧ REPORT1 ≠ SUPERVISE ∧
         REPORT1 ≠ REPORT2 ∧ REPORT1 ≠ COMPLETE ∧ COMPLETE_PLAN ≠ OPOID ∧
         COMPLETE_PLAN ≠ SUPERVISE ∧ COMPLETE_PLAN ≠ REPORT2 ∧
         COMPLETE_PLAN ≠ COMPLETE ∧ OPOID ≠ SUPERVISE ∧ OPOID ≠ REPORT2 ∧
         OPOID ≠ COMPLETE ∧ SUPERVISE ≠ REPORT2 ∧ SUPERVISE ≠ COMPLETE ∧
         REPORT2 ≠ COMPLETE

   [slState_distinct_clauses]  Theorem

      |- PLAN_PB ≠ RECEIVE_MISSION ∧ PLAN_PB ≠ WARNO ∧
         PLAN_PB ≠ TENTATIVE_PLAN ∧ PLAN_PB ≠ INITIATE_MOVEMENT ∧
         PLAN_PB ≠ RECON ∧ PLAN_PB ≠ REPORT1 ∧ PLAN_PB ≠ COMPLETE_PLAN ∧
         PLAN_PB ≠ OPOID ∧ PLAN_PB ≠ SUPERVISE ∧ PLAN_PB ≠ REPORT2 ∧
         PLAN_PB ≠ COMPLETE ∧ RECEIVE_MISSION ≠ WARNO ∧
         RECEIVE_MISSION ≠ TENTATIVE_PLAN ∧
         RECEIVE_MISSION ≠ INITIATE_MOVEMENT ∧ RECEIVE_MISSION ≠ RECON ∧
         RECEIVE_MISSION ≠ REPORT1 ∧ RECEIVE_MISSION ≠ COMPLETE_PLAN ∧
         RECEIVE_MISSION ≠ OPOID ∧ RECEIVE_MISSION ≠ SUPERVISE ∧
         RECEIVE_MISSION ≠ REPORT2 ∧ RECEIVE_MISSION ≠ COMPLETE ∧
         WARNO ≠ TENTATIVE_PLAN ∧ WARNO ≠ INITIATE_MOVEMENT ∧
         WARNO ≠ RECON ∧ WARNO ≠ REPORT1 ∧ WARNO ≠ COMPLETE_PLAN ∧
         WARNO ≠ OPOID ∧ WARNO ≠ SUPERVISE ∧ WARNO ≠ REPORT2 ∧
         WARNO ≠ COMPLETE ∧ TENTATIVE_PLAN ≠ INITIATE_MOVEMENT ∧
         TENTATIVE_PLAN ≠ RECON ∧ TENTATIVE_PLAN ≠ REPORT1 ∧
         TENTATIVE_PLAN ≠ COMPLETE_PLAN ∧ TENTATIVE_PLAN ≠ OPOID ∧
         TENTATIVE_PLAN ≠ SUPERVISE ∧ TENTATIVE_PLAN ≠ REPORT2 ∧
         TENTATIVE_PLAN ≠ COMPLETE ∧ INITIATE_MOVEMENT ≠ RECON ∧
         INITIATE_MOVEMENT ≠ REPORT1 ∧ INITIATE_MOVEMENT ≠ COMPLETE_PLAN ∧
         INITIATE_MOVEMENT ≠ OPOID ∧ INITIATE_MOVEMENT ≠ SUPERVISE ∧
         INITIATE_MOVEMENT ≠ REPORT2 ∧ INITIATE_MOVEMENT ≠ COMPLETE ∧
         RECON ≠ REPORT1 ∧ RECON ≠ COMPLETE_PLAN ∧ RECON ≠ OPOID ∧
         RECON ≠ SUPERVISE ∧ RECON ≠ REPORT2 ∧ RECON ≠ COMPLETE ∧
         REPORT1 ≠ COMPLETE_PLAN ∧ REPORT1 ≠ OPOID ∧ REPORT1 ≠ SUPERVISE ∧
         REPORT1 ≠ REPORT2 ∧ REPORT1 ≠ COMPLETE ∧ COMPLETE_PLAN ≠ OPOID ∧
         COMPLETE_PLAN ≠ SUPERVISE ∧ COMPLETE_PLAN ≠ REPORT2 ∧
         COMPLETE_PLAN ≠ COMPLETE ∧ OPOID ≠ SUPERVISE ∧ OPOID ≠ REPORT2 ∧
         OPOID ≠ COMPLETE ∧ SUPERVISE ≠ REPORT2 ∧ SUPERVISE ≠ COMPLETE ∧
         REPORT2 ≠ COMPLETE

   [slState_induction]  Theorem

      |- ∀P.
           P COMPLETE ∧ P COMPLETE_PLAN ∧ P INITIATE_MOVEMENT ∧ P OPOID ∧
           P PLAN_PB ∧ P RECEIVE_MISSION ∧ P RECON ∧ P REPORT1 ∧
           P REPORT2 ∧ P SUPERVISE ∧ P TENTATIVE_PLAN ∧ P WARNO ⇒
           ∀a. P a

   [slState_nchotomy]  Theorem

      |- ∀a.
           (a = PLAN_PB) ∨ (a = RECEIVE_MISSION) ∨ (a = WARNO) ∨
           (a = TENTATIVE_PLAN) ∨ (a = INITIATE_MOVEMENT) ∨ (a = RECON) ∨
           (a = REPORT1) ∨ (a = COMPLETE_PLAN) ∨ (a = OPOID) ∨
           (a = SUPERVISE) ∨ (a = REPORT2) ∨ (a = COMPLETE)

   [stateRole2num_11]  Theorem

      |- ∀a a'. (stateRole2num a = stateRole2num a') ⇔ (a = a')

   [stateRole2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = stateRole2num a

   [stateRole2num_num2stateRole]  Theorem

      |- ∀r. r < 2 ⇔ (stateRole2num (num2stateRole r) = r)

   [stateRole2num_thm]  Theorem

      |- (stateRole2num PlatoonLeader = 0) ∧
         (stateRole2num PlatoonSergeant = 1)

   [stateRole_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f PlatoonLeader = x0) ∧ (f PlatoonSergeant = x1)

   [stateRole_EQ_stateRole]  Theorem

      |- ∀a a'. (a = a') ⇔ (stateRole2num a = stateRole2num a')

   [stateRole_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = PlatoonLeader) ⇒ (v0 = v0')) ∧
           ((M' = PlatoonSergeant) ⇒ (v1 = v1')) ⇒
           ((case M of PlatoonLeader => v0 | PlatoonSergeant => v1) =
            case M' of PlatoonLeader => v0' | PlatoonSergeant => v1')

   [stateRole_case_def]  Theorem

      |- (∀v0 v1.
            (case PlatoonLeader of
               PlatoonLeader => v0
             | PlatoonSergeant => v1) =
            v0) ∧
         ∀v0 v1.
           (case PlatoonSergeant of
              PlatoonLeader => v0
            | PlatoonSergeant => v1) =
           v1

   [stateRole_distinct]  Theorem

      |- PlatoonLeader ≠ PlatoonSergeant

   [stateRole_induction]  Theorem

      |- ∀P. P PlatoonLeader ∧ P PlatoonSergeant ⇒ ∀a. P a

   [stateRole_nchotomy]  Theorem

      |- ∀a. (a = PlatoonLeader) ∨ (a = PlatoonSergeant)


*)
end
