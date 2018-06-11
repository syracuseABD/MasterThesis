signature ssmPBIntegratedTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val inputOK_primitive_def : thm

  (*  Theorems  *)
    val PBNS_def : thm
    val PBNS_ind : thm
    val PBOut_def : thm
    val PBOut_ind : thm
    val PlatoonLeader_Omni_notDiscard_slCommand_thm : thm
    val PlatoonLeader_PLAN_PB_exec_lemma : thm
    val PlatoonLeader_PLAN_PB_trap_justified_lemma : thm
    val PlatoonLeader_PLAN_PB_trap_justified_thm : thm
    val PlatoonLeader_PLAN_PB_trap_lemma : thm
    val inputOK_def : thm
    val inputOK_ind : thm

  val ssmPBIntegrated_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [PBIntegratedDef] Parent theory of "ssmPBIntegrated"

   [ssm] Parent theory of "ssmPBIntegrated"

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

   [PBNS_def]  Theorem

      |- (PBNS PLAN_PB (exec [SOME (SLc (PL crossLD))]) = MOVE_TO_ORP) ∧
         (PBNS MOVE_TO_ORP (exec [SOME (SLc (PL conductORP))]) =
          CONDUCT_ORP) ∧
         (PBNS CONDUCT_ORP (exec [SOME (SLc (PL moveToPB))]) =
          MOVE_TO_PB) ∧
         (PBNS MOVE_TO_PB (exec [SOME (SLc (PL conductPB))]) =
          CONDUCT_PB) ∧
         (PBNS CONDUCT_PB (exec [SOME (SLc (PL completePB))]) =
          COMPLETE_PB) ∧ (PBNS s (trap v0) = s) ∧ (PBNS s (discard v1) = s)

   [PBNS_ind]  Theorem

      |- ∀P.
           P PLAN_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL conductORP))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL moveToPB))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL completePB))]) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v8. P v8 (exec [])) ∧ (∀v11 v10. P v11 (exec (NONE::v10))) ∧
           (∀v16 v13 v15. P v16 (exec (SOME (ESCc v13)::v15))) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL crossLD))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL crossLD))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL conductORP))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL moveToPB))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL conductPB))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL conductPB))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL completePB))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL completePB))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL completePB))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL completePB))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL completePB))]) ∧
           (∀v24. P v24 (exec [SOME (SLc (PL incomplete))])) ∧
           (∀v26 v25 v22 v23.
              P v26 (exec (SOME (SLc (PL v25))::v22::v23))) ∧
           (∀v28 v19 v27. P v28 (exec (SOME (SLc (OMNI v19))::v27))) ⇒
           ∀v v1. P v v1

   [PBOut_def]  Theorem

      |- (PBOut PLAN_PB (exec [SOME (SLc (PL crossLD))]) = MoveToORP) ∧
         (PBOut MOVE_TO_ORP (exec [SOME (SLc (PL conductORP))]) =
          ConductORP) ∧
         (PBOut CONDUCT_ORP (exec [SOME (SLc (PL moveToPB))]) = MoveToPB) ∧
         (PBOut MOVE_TO_PB (exec [SOME (SLc (PL conductPB))]) =
          ConductPB) ∧
         (PBOut CONDUCT_PB (exec [SOME (SLc (PL completePB))]) =
          CompletePB) ∧ (PBOut s (trap v0) = unAuthorized) ∧
         (PBOut s (discard v1) = unAuthenticated)

   [PBOut_ind]  Theorem

      |- ∀P.
           P PLAN_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL conductORP))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL moveToPB))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL completePB))]) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v8. P v8 (exec [])) ∧ (∀v11 v10. P v11 (exec (NONE::v10))) ∧
           (∀v16 v13 v15. P v16 (exec (SOME (ESCc v13)::v15))) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL crossLD))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL crossLD))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL crossLD))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL conductORP))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL conductORP))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL moveToPB))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL moveToPB))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL conductPB))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL conductPB))]) ∧
           P CONDUCT_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL conductPB))]) ∧
           P PLAN_PB (exec [SOME (SLc (PL completePB))]) ∧
           P MOVE_TO_ORP (exec [SOME (SLc (PL completePB))]) ∧
           P CONDUCT_ORP (exec [SOME (SLc (PL completePB))]) ∧
           P MOVE_TO_PB (exec [SOME (SLc (PL completePB))]) ∧
           P COMPLETE_PB (exec [SOME (SLc (PL completePB))]) ∧
           (∀v24. P v24 (exec [SOME (SLc (PL incomplete))])) ∧
           (∀v26 v25 v22 v23.
              P v26 (exec (SOME (SLc (PL v25))::v22::v23))) ∧
           (∀v28 v19 v27. P v28 (exec (SOME (SLc (OMNI v19))::v27))) ⇒
           ∀v v1. P v v1

   [PlatoonLeader_Omni_notDiscard_slCommand_thm]  Theorem

      |- ∀NS Out M Oi Os.
           ¬TR (M,Oi,Os)
              (discard
                 [SOME (SLc (PL plCommand));
                  SOME (SLc (OMNI omniCommand))])
              (CFG inputOK secContext secAuthorization
                 ([Name Omni says prop (SOME (SLc (PL plCommand)));
                   Name PlatoonLeader says
                   prop (SOME (SLc (OMNI omniCommand)))]::ins) PLAN_PB
                 outs)
              (CFG inputOK secContext secAuthorization ins
                 (NS PLAN_PB
                    (discard
                       [SOME (SLc (PL plCommand));
                        SOME (SLc (OMNI omniCommand))]))
                 (Out PLAN_PB
                    (discard
                       [SOME (SLc (PL plCommand));
                        SOME (SLc (OMNI omniCommand))])::outs))

   [PlatoonLeader_PLAN_PB_exec_lemma]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secAuthorization
                ([Name Omni says
                  prop (SOME (SLc (OMNI ssmPlanPBComplete)));
                  Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]::
                     ins) PLAN_PB outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name Omni says prop (SOME (SLc (OMNI ssmPlanPBComplete)));
              Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]

   [PlatoonLeader_PLAN_PB_trap_justified_lemma]  Theorem

      |- omniCommand ≠ ssmPlanPBComplete ⇒
         (s = PLAN_PB) ⇒
         ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (trap
                (inputList
                   [Name Omni says prop (SOME (SLc (OMNI omniCommand)));
                    Name PlatoonLeader says
                    prop (SOME (SLc (PL crossLD)))]))
             (CFG inputOK secContext secAuthorization
                ([Name Omni says prop (SOME (SLc (OMNI omniCommand)));
                  Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]::
                     ins) PLAN_PB outs)
             (CFG inputOK secContext secAuthorization ins
                (NS PLAN_PB
                   (trap
                      (inputList
                         [Name Omni says
                          prop (SOME (SLc (OMNI omniCommand)));
                          Name PlatoonLeader says
                          prop (SOME (SLc (PL crossLD)))])))
                (Out PLAN_PB
                   (trap
                      (inputList
                         [Name Omni says
                          prop (SOME (SLc (OMNI omniCommand)));
                          Name PlatoonLeader says
                          prop (SOME (SLc (PL crossLD)))]))::outs)) ⇔
           authenticationTest inputOK
             [Name Omni says prop (SOME (SLc (OMNI omniCommand)));
              Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secAuthorization
                ([Name Omni says prop (SOME (SLc (OMNI omniCommand)));
                  Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]::
                     ins) PLAN_PB outs) ∧ (M,Oi,Os) sat prop NONE

   [PlatoonLeader_PLAN_PB_trap_justified_thm]  Theorem

      |- omniCommand ≠ ssmPlanPBComplete ⇒
         (s = PLAN_PB) ⇒
         ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (trap
                [SOME (SLc (OMNI omniCommand)); SOME (SLc (PL crossLD))])
             (CFG inputOK secContext secAuthorization
                ([Name Omni says prop (SOME (SLc (OMNI omniCommand)));
                  Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]::
                     ins) PLAN_PB outs)
             (CFG inputOK secContext secAuthorization ins
                (NS PLAN_PB
                   (trap
                      [SOME (SLc (OMNI omniCommand));
                       SOME (SLc (PL crossLD))]))
                (Out PLAN_PB
                   (trap
                      [SOME (SLc (OMNI omniCommand));
                       SOME (SLc (PL crossLD))])::outs)) ⇔
           authenticationTest inputOK
             [Name Omni says prop (SOME (SLc (OMNI omniCommand)));
              Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secAuthorization
                ([Name Omni says prop (SOME (SLc (OMNI omniCommand)));
                  Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]::
                     ins) PLAN_PB outs) ∧ (M,Oi,Os) sat prop NONE

   [PlatoonLeader_PLAN_PB_trap_lemma]  Theorem

      |- omniCommand ≠ ssmPlanPBComplete ⇒
         (s = PLAN_PB) ⇒
         ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG inputOK secContext secAuthorization
                ([Name Omni says prop (SOME (SLc (OMNI omniCommand)));
                  Name PlatoonLeader says prop (SOME (SLc (PL crossLD)))]::
                     ins) PLAN_PB outs) ⇒
           (M,Oi,Os) sat prop NONE

   [inputOK_def]  Theorem

      |- (inputOK (Name PlatoonLeader says prop cmd) ⇔ T) ∧
         (inputOK (Name Omni says prop cmd) ⇔ T) ∧ (inputOK TT ⇔ F) ∧
         (inputOK FF ⇔ F) ∧ (inputOK (prop v) ⇔ F) ∧
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
           (∀cmd. P (Name Omni says prop cmd)) ∧ P TT ∧ P FF ∧
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


*)
end
