signature ssmPlanPBTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val inputOK_primitive_def : thm

  (*  Theorems  *)
    val PlatoonLeader_WARNO_exec_report1_justified_lemma : thm
    val PlatoonLeader_WARNO_exec_report1_justified_thm : thm
    val PlatoonLeader_WARNO_exec_report1_lemma : thm
    val PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_lemma : thm
    val PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_thm : thm
    val PlatoonLeader_notWARNO_notreport1_exec_plCommand_lemma : thm
    val PlatoonLeader_psgCommand_notDiscard_thm : thm
    val PlatoonLeader_trap_psgCommand_justified_lemma : thm
    val PlatoonLeader_trap_psgCommand_lemma : thm
    val PlatoonSergeant_trap_plCommand_justified_lemma : thm
    val PlatoonSergeant_trap_plCommand_justified_thm : thm
    val PlatoonSergeant_trap_plCommand_lemma : thm
    val inputOK_def : thm
    val inputOK_ind : thm
    val planPBNS_def : thm
    val planPBNS_ind : thm
    val planPBOut_def : thm
    val planPBOut_ind : thm

  val ssmPlanPB_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [PlanPBDef] Parent theory of "ssmPlanPB"

   [ssm] Parent theory of "ssmPlanPB"

   [inputOK_primitive_def]  Definition

      |- inputOK =
         WFREC (@R. WF R)
           (λinputOK a.
              case a of
                TT => I F
              | FF => I F
              | prop v33 => I F
              | notf v34 => I F
              | v35 andf v36 => I F
              | v37 orf v38 => I F
              | v39 impf v40 => I F
              | v41 eqf v42 => I F
              | v43 says TT => I F
              | v43 says FF => I F
              | Name v137 says prop v99 => I T
              | v138 meet v139 says prop v99 => I F
              | v140 quoting v141 says prop v99 => I F
              | v43 says notf v100 => I F
              | v43 says (v101 andf v102) => I F
              | v43 says (v103 orf v104) => I F
              | v43 says (v105 impf v106) => I F
              | v43 says (v107 eqf v108) => I F
              | v43 says v109 says v110 => I F
              | v43 says v111 speaks_for v112 => I F
              | v43 says v113 controls v114 => I F
              | v43 says reps v115 v116 v117 => I F
              | v43 says v118 domi v119 => I F
              | v43 says v120 eqi v121 => I F
              | v43 says v122 doms v123 => I F
              | v43 says v124 eqs v125 => I F
              | v43 says v126 eqn v127 => I F
              | v43 says v128 lte v129 => I F
              | v43 says v130 lt v131 => I F
              | v45 speaks_for v46 => I F
              | v47 controls v48 => I F
              | reps v49 v50 v51 => I F
              | v52 domi v53 => I F
              | v54 eqi v55 => I F
              | v56 doms v57 => I F
              | v58 eqs v59 => I F
              | v60 eqn v61 => I F
              | v62 lte v63 => I F
              | v64 lt v65 => I F)

   [PlatoonLeader_WARNO_exec_report1_justified_lemma]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says prop (SOME (SLc (PL recon)));
                    Name PlatoonLeader says
                    prop (SOME (SLc (PL tentativePlan)));
                    Name PlatoonSergeant says
                    prop (SOME (SLc (PSG initiateMovement)));
                    Name PlatoonLeader says
                    prop (SOME (SLc (PL report1)))]))
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says prop (SOME (SLc (PL recon)));
                  Name PlatoonLeader says
                  prop (SOME (SLc (PL tentativePlan)));
                  Name PlatoonSergeant says
                  prop (SOME (SLc (PSG initiateMovement)));
                  Name PlatoonLeader says prop (SOME (SLc (PL report1)))]::
                     ins) WARNO outs)
             (CFG inputOK secContext secContextNull ins
                (NS WARNO
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (SLc (PL recon)));
                          Name PlatoonLeader says
                          prop (SOME (SLc (PL tentativePlan)));
                          Name PlatoonSergeant says
                          prop (SOME (SLc (PSG initiateMovement)));
                          Name PlatoonLeader says
                          prop (SOME (SLc (PL report1)))])))
                (Out WARNO
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (SLc (PL recon)));
                          Name PlatoonLeader says
                          prop (SOME (SLc (PL tentativePlan)));
                          Name PlatoonSergeant says
                          prop (SOME (SLc (PSG initiateMovement)));
                          Name PlatoonLeader says
                          prop (SOME (SLc (PL report1)))]))::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonLeader says prop (SOME (SLc (PL recon)));
              Name PlatoonLeader says prop (SOME (SLc (PL tentativePlan)));
              Name PlatoonSergeant says
              prop (SOME (SLc (PSG initiateMovement)));
              Name PlatoonLeader says prop (SOME (SLc (PL report1)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says prop (SOME (SLc (PL recon)));
                  Name PlatoonLeader says
                  prop (SOME (SLc (PL tentativePlan)));
                  Name PlatoonSergeant says
                  prop (SOME (SLc (PSG initiateMovement)));
                  Name PlatoonLeader says prop (SOME (SLc (PL report1)))]::
                     ins) WARNO outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (SLc (PL recon)));
              Name PlatoonLeader says prop (SOME (SLc (PL tentativePlan)));
              Name PlatoonSergeant says
              prop (SOME (SLc (PSG initiateMovement)));
              Name PlatoonLeader says prop (SOME (SLc (PL report1)))]

   [PlatoonLeader_WARNO_exec_report1_justified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                [SOME (SLc (PL recon)); SOME (SLc (PL tentativePlan));
                 SOME (SLc (PSG initiateMovement));
                 SOME (SLc (PL report1))])
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says prop (SOME (SLc (PL recon)));
                  Name PlatoonLeader says
                  prop (SOME (SLc (PL tentativePlan)));
                  Name PlatoonSergeant says
                  prop (SOME (SLc (PSG initiateMovement)));
                  Name PlatoonLeader says prop (SOME (SLc (PL report1)))]::
                     ins) WARNO outs)
             (CFG inputOK secContext secContextNull ins
                (NS WARNO
                   (exec
                      [SOME (SLc (PL recon));
                       SOME (SLc (PL tentativePlan));
                       SOME (SLc (PSG initiateMovement));
                       SOME (SLc (PL report1))]))
                (Out WARNO
                   (exec
                      [SOME (SLc (PL recon));
                       SOME (SLc (PL tentativePlan));
                       SOME (SLc (PSG initiateMovement));
                       SOME (SLc (PL report1))])::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonLeader says prop (SOME (SLc (PL recon)));
              Name PlatoonLeader says prop (SOME (SLc (PL tentativePlan)));
              Name PlatoonSergeant says
              prop (SOME (SLc (PSG initiateMovement)));
              Name PlatoonLeader says prop (SOME (SLc (PL report1)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says prop (SOME (SLc (PL recon)));
                  Name PlatoonLeader says
                  prop (SOME (SLc (PL tentativePlan)));
                  Name PlatoonSergeant says
                  prop (SOME (SLc (PSG initiateMovement)));
                  Name PlatoonLeader says prop (SOME (SLc (PL report1)))]::
                     ins) WARNO outs) ∧
           (M,Oi,Os) satList
           [prop (SOME (SLc (PL recon)));
            prop (SOME (SLc (PL tentativePlan)));
            prop (SOME (SLc (PSG initiateMovement)));
            prop (SOME (SLc (PL report1)))]

   [PlatoonLeader_WARNO_exec_report1_lemma]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says prop (SOME (SLc (PL recon)));
                  Name PlatoonLeader says
                  prop (SOME (SLc (PL tentativePlan)));
                  Name PlatoonSergeant says
                  prop (SOME (SLc (PSG initiateMovement)));
                  Name PlatoonLeader says prop (SOME (SLc (PL report1)))]::
                     ins) WARNO outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (SLc (PL recon)));
              Name PlatoonLeader says prop (SOME (SLc (PL tentativePlan)));
              Name PlatoonSergeant says
              prop (SOME (SLc (PSG initiateMovement)));
              Name PlatoonLeader says prop (SOME (SLc (PL report1)))]

   [PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_lemma]  Theorem

      |- s ≠ WARNO ⇒
         plCommand ≠ invalidPlCommand ⇒
         plCommand ≠ report1 ⇒
         ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (SLc (PL plCommand)))]))
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs)
             (CFG inputOK secContext secContextNull ins
                (NS s
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (SLc (PL plCommand)))])))
                (Out s
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (SLc (PL plCommand)))]))::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonLeader says prop (SOME (SLc (PL plCommand)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (SLc (PL plCommand)))]

   [PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_thm]  Theorem

      |- s ≠ WARNO ⇒
         plCommand ≠ invalidPlCommand ⇒
         plCommand ≠ report1 ⇒
         ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (SLc (PL plCommand))])
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs)
             (CFG inputOK secContext secContextNull ins
                (NS s (exec [SOME (SLc (PL plCommand))]))
                (Out s (exec [SOME (SLc (PL plCommand))])::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonLeader says prop (SOME (SLc (PL plCommand)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs) ∧
           (M,Oi,Os) satList [prop (SOME (SLc (PL plCommand)))]

   [PlatoonLeader_notWARNO_notreport1_exec_plCommand_lemma]  Theorem

      |- s ≠ WARNO ⇒
         plCommand ≠ invalidPlCommand ⇒
         plCommand ≠ report1 ⇒
         ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (SLc (PL plCommand)))]

   [PlatoonLeader_psgCommand_notDiscard_thm]  Theorem

      |- ∀NS Out M Oi Os.
           ¬TR (M,Oi,Os)
              (discard
                 (inputList
                    [Name PlatoonLeader says
                     prop (SOME (SLc (PSG psgCommand)))]))
              (CFG inputOK secContext secContextNull
                 ([Name PlatoonLeader says
                   prop (SOME (SLc (PSG psgCommand)))]::ins) s outs)
              (CFG inputOK secContext secContextNull ins
                 (NS s
                    (discard
                       (inputList
                          [Name PlatoonLeader says
                           prop (SOME (SLc (PSG psgCommand)))])))
                 (Out s
                    (discard
                       (inputList
                          [Name PlatoonLeader says
                           prop (SOME (SLc (PSG psgCommand)))]))::outs))

   [PlatoonLeader_trap_psgCommand_justified_lemma]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (trap
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (SLc (PSG psgCommand)))]))
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PSG psgCommand)))]::ins) s outs)
             (CFG inputOK secContext secContextNull ins
                (NS s
                   (trap
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (SLc (PSG psgCommand)))])))
                (Out s
                   (trap
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (SLc (PSG psgCommand)))]))::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonLeader says prop (SOME (SLc (PSG psgCommand)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PSG psgCommand)))]::ins) s outs) ∧
           (M,Oi,Os) sat prop NONE

   [PlatoonLeader_trap_psgCommand_lemma]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonLeader says
                  prop (SOME (SLc (PSG psgCommand)))]::ins) s outs) ⇒
           (M,Oi,Os) sat prop NONE

   [PlatoonSergeant_trap_plCommand_justified_lemma]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (trap
                (inputList
                   [Name PlatoonSergeant says
                    prop (SOME (SLc (PL plCommand)))]))
             (CFG inputOK secContext secContextNull
                ([Name PlatoonSergeant says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs)
             (CFG inputOK secContext secContextNull ins
                (NS s
                   (trap
                      (inputList
                         [Name PlatoonSergeant says
                          prop (SOME (SLc (PL plCommand)))])))
                (Out s
                   (trap
                      (inputList
                         [Name PlatoonSergeant says
                          prop (SOME (SLc (PL plCommand)))]))::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonSergeant says prop (SOME (SLc (PL plCommand)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonSergeant says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs) ∧
           (M,Oi,Os) sat prop NONE

   [PlatoonSergeant_trap_plCommand_justified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (trap [SOME (SLc (PL plCommand))])
             (CFG inputOK secContext secContextNull
                ([Name PlatoonSergeant says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs)
             (CFG inputOK secContext secContextNull ins
                (NS s (trap [SOME (SLc (PL plCommand))]))
                (Out s (trap [SOME (SLc (PL plCommand))])::outs)) ⇔
           authenticationTest inputOK
             [Name PlatoonSergeant says prop (SOME (SLc (PL plCommand)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonSergeant says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs) ∧
           (M,Oi,Os) sat prop NONE

   [PlatoonSergeant_trap_plCommand_lemma]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secContextNull
                ([Name PlatoonSergeant says
                  prop (SOME (SLc (PL plCommand)))]::ins) s outs) ⇒
           (M,Oi,Os) sat prop NONE

   [inputOK_def]  Theorem

      |- (inputOK (Name PlatoonLeader says prop cmd) ⇔ T) ∧
         (inputOK (Name PlatoonSergeant says prop cmd) ⇔ T) ∧
         (inputOK TT ⇔ F) ∧ (inputOK FF ⇔ F) ∧ (inputOK (prop v) ⇔ F) ∧
         (inputOK (notf v1) ⇔ F) ∧ (inputOK (v2 andf v3) ⇔ F) ∧
         (inputOK (v4 orf v5) ⇔ F) ∧ (inputOK (v6 impf v7) ⇔ F) ∧
         (inputOK (v8 eqf v9) ⇔ F) ∧ (inputOK (v10 says TT) ⇔ F) ∧
         (inputOK (v10 says FF) ⇔ F) ∧
         (inputOK (v133 meet v134 says prop v66) ⇔ F) ∧
         (inputOK (v135 quoting v136 says prop v66) ⇔ F) ∧
         (inputOK (v10 says notf v67) ⇔ F) ∧
         (inputOK (v10 says (v68 andf v69)) ⇔ F) ∧
         (inputOK (v10 says (v70 orf v71)) ⇔ F) ∧
         (inputOK (v10 says (v72 impf v73)) ⇔ F) ∧
         (inputOK (v10 says (v74 eqf v75)) ⇔ F) ∧
         (inputOK (v10 says v76 says v77) ⇔ F) ∧
         (inputOK (v10 says v78 speaks_for v79) ⇔ F) ∧
         (inputOK (v10 says v80 controls v81) ⇔ F) ∧
         (inputOK (v10 says reps v82 v83 v84) ⇔ F) ∧
         (inputOK (v10 says v85 domi v86) ⇔ F) ∧
         (inputOK (v10 says v87 eqi v88) ⇔ F) ∧
         (inputOK (v10 says v89 doms v90) ⇔ F) ∧
         (inputOK (v10 says v91 eqs v92) ⇔ F) ∧
         (inputOK (v10 says v93 eqn v94) ⇔ F) ∧
         (inputOK (v10 says v95 lte v96) ⇔ F) ∧
         (inputOK (v10 says v97 lt v98) ⇔ F) ∧
         (inputOK (v12 speaks_for v13) ⇔ F) ∧
         (inputOK (v14 controls v15) ⇔ F) ∧
         (inputOK (reps v16 v17 v18) ⇔ F) ∧ (inputOK (v19 domi v20) ⇔ F) ∧
         (inputOK (v21 eqi v22) ⇔ F) ∧ (inputOK (v23 doms v24) ⇔ F) ∧
         (inputOK (v25 eqs v26) ⇔ F) ∧ (inputOK (v27 eqn v28) ⇔ F) ∧
         (inputOK (v29 lte v30) ⇔ F) ∧ (inputOK (v31 lt v32) ⇔ F)

   [inputOK_ind]  Theorem

      |- ∀P.
           (∀cmd. P (Name PlatoonLeader says prop cmd)) ∧
           (∀cmd. P (Name PlatoonSergeant says prop cmd)) ∧ P TT ∧ P FF ∧
           (∀v. P (prop v)) ∧ (∀v1. P (notf v1)) ∧
           (∀v2 v3. P (v2 andf v3)) ∧ (∀v4 v5. P (v4 orf v5)) ∧
           (∀v6 v7. P (v6 impf v7)) ∧ (∀v8 v9. P (v8 eqf v9)) ∧
           (∀v10. P (v10 says TT)) ∧ (∀v10. P (v10 says FF)) ∧
           (∀v133 v134 v66. P (v133 meet v134 says prop v66)) ∧
           (∀v135 v136 v66. P (v135 quoting v136 says prop v66)) ∧
           (∀v10 v67. P (v10 says notf v67)) ∧
           (∀v10 v68 v69. P (v10 says (v68 andf v69))) ∧
           (∀v10 v70 v71. P (v10 says (v70 orf v71))) ∧
           (∀v10 v72 v73. P (v10 says (v72 impf v73))) ∧
           (∀v10 v74 v75. P (v10 says (v74 eqf v75))) ∧
           (∀v10 v76 v77. P (v10 says v76 says v77)) ∧
           (∀v10 v78 v79. P (v10 says v78 speaks_for v79)) ∧
           (∀v10 v80 v81. P (v10 says v80 controls v81)) ∧
           (∀v10 v82 v83 v84. P (v10 says reps v82 v83 v84)) ∧
           (∀v10 v85 v86. P (v10 says v85 domi v86)) ∧
           (∀v10 v87 v88. P (v10 says v87 eqi v88)) ∧
           (∀v10 v89 v90. P (v10 says v89 doms v90)) ∧
           (∀v10 v91 v92. P (v10 says v91 eqs v92)) ∧
           (∀v10 v93 v94. P (v10 says v93 eqn v94)) ∧
           (∀v10 v95 v96. P (v10 says v95 lte v96)) ∧
           (∀v10 v97 v98. P (v10 says v97 lt v98)) ∧
           (∀v12 v13. P (v12 speaks_for v13)) ∧
           (∀v14 v15. P (v14 controls v15)) ∧
           (∀v16 v17 v18. P (reps v16 v17 v18)) ∧
           (∀v19 v20. P (v19 domi v20)) ∧ (∀v21 v22. P (v21 eqi v22)) ∧
           (∀v23 v24. P (v23 doms v24)) ∧ (∀v25 v26. P (v25 eqs v26)) ∧
           (∀v27 v28. P (v27 eqn v28)) ∧ (∀v29 v30. P (v29 lte v30)) ∧
           (∀v31 v32. P (v31 lt v32)) ⇒
           ∀v. P v

   [planPBNS_def]  Theorem

      |- (planPBNS WARNO (exec x) =
          if
            (getRecon x = [SOME (SLc (PL recon))]) ∧
            (getTenativePlan x = [SOME (SLc (PL tentativePlan))]) ∧
            (getReport x = [SOME (SLc (PL report1))]) ∧
            (getInitMove x = [SOME (SLc (PSG initiateMovement))])
          then
            REPORT1
          else WARNO) ∧
         (planPBNS PLAN_PB (exec x) =
          if getPlCom x = receiveMission then RECEIVE_MISSION
          else PLAN_PB) ∧
         (planPBNS RECEIVE_MISSION (exec x) =
          if getPlCom x = warno then WARNO else RECEIVE_MISSION) ∧
         (planPBNS REPORT1 (exec x) =
          if getPlCom x = completePlan then COMPLETE_PLAN else REPORT1) ∧
         (planPBNS COMPLETE_PLAN (exec x) =
          if getPlCom x = opoid then OPOID else COMPLETE_PLAN) ∧
         (planPBNS OPOID (exec x) =
          if getPlCom x = supervise then SUPERVISE else OPOID) ∧
         (planPBNS SUPERVISE (exec x) =
          if getPlCom x = report2 then REPORT2 else SUPERVISE) ∧
         (planPBNS REPORT2 (exec x) =
          if getPlCom x = complete then COMPLETE else REPORT2) ∧
         (planPBNS s (trap v0) = s) ∧ (planPBNS s (discard v1) = s)

   [planPBNS_ind]  Theorem

      |- ∀P.
           (∀x. P WARNO (exec x)) ∧ (∀x. P PLAN_PB (exec x)) ∧
           (∀x. P RECEIVE_MISSION (exec x)) ∧ (∀x. P REPORT1 (exec x)) ∧
           (∀x. P COMPLETE_PLAN (exec x)) ∧ (∀x. P OPOID (exec x)) ∧
           (∀x. P SUPERVISE (exec x)) ∧ (∀x. P REPORT2 (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P TENTATIVE_PLAN (exec v6)) ∧
           (∀v7. P INITIATE_MOVEMENT (exec v7)) ∧
           (∀v8. P RECON (exec v8)) ∧ (∀v9. P COMPLETE (exec v9)) ⇒
           ∀v v1. P v v1

   [planPBOut_def]  Theorem

      |- (planPBOut WARNO (exec x) =
          if
            (getRecon x = [SOME (SLc (PL recon))]) ∧
            (getTenativePlan x = [SOME (SLc (PL tentativePlan))]) ∧
            (getReport x = [SOME (SLc (PL report1))]) ∧
            (getInitMove x = [SOME (SLc (PSG initiateMovement))])
          then
            Report1
          else unAuthorized) ∧
         (planPBOut PLAN_PB (exec x) =
          if getPlCom x = receiveMission then ReceiveMission
          else unAuthorized) ∧
         (planPBOut RECEIVE_MISSION (exec x) =
          if getPlCom x = warno then Warno else unAuthorized) ∧
         (planPBOut REPORT1 (exec x) =
          if getPlCom x = completePlan then CompletePlan
          else unAuthorized) ∧
         (planPBOut COMPLETE_PLAN (exec x) =
          if getPlCom x = opoid then Opoid else unAuthorized) ∧
         (planPBOut OPOID (exec x) =
          if getPlCom x = supervise then Supervise else unAuthorized) ∧
         (planPBOut SUPERVISE (exec x) =
          if getPlCom x = report2 then Report2 else unAuthorized) ∧
         (planPBOut REPORT2 (exec x) =
          if getPlCom x = complete then Complete else unAuthorized) ∧
         (planPBOut s (trap v0) = unAuthorized) ∧
         (planPBOut s (discard v1) = unAuthenticated)

   [planPBOut_ind]  Theorem

      |- ∀P.
           (∀x. P WARNO (exec x)) ∧ (∀x. P PLAN_PB (exec x)) ∧
           (∀x. P RECEIVE_MISSION (exec x)) ∧ (∀x. P REPORT1 (exec x)) ∧
           (∀x. P COMPLETE_PLAN (exec x)) ∧ (∀x. P OPOID (exec x)) ∧
           (∀x. P SUPERVISE (exec x)) ∧ (∀x. P REPORT2 (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P TENTATIVE_PLAN (exec v6)) ∧
           (∀v7. P INITIATE_MOVEMENT (exec v7)) ∧
           (∀v8. P RECON (exec v8)) ∧ (∀v9. P COMPLETE (exec v9)) ⇒
           ∀v v1. P v v1


*)
end
