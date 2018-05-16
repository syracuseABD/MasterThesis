signature PlanPBDefTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val PL_WARNO_Auth_def : thm
    val PL_notWARNO_Auth_def : thm
    val getInitMove_primitive_def : thm
    val getPlCom_primitive_def : thm
    val getPsgCom_primitive_def : thm
    val getRecon_primitive_def : thm
    val getReport_primitive_def : thm
    val getTenativePlan_primitive_def : thm
    val secContextNull_def : thm
    val secContext_def : thm

  (*  Theorems  *)
    val getInitMove_def : thm
    val getInitMove_ind : thm
    val getPlCom_def : thm
    val getPlCom_ind : thm
    val getPsgCom_def : thm
    val getPsgCom_ind : thm
    val getRecon_def : thm
    val getRecon_ind : thm
    val getReport_def : thm
    val getReport_ind : thm
    val getTenativePlan_def : thm
    val getTenativePlan_ind : thm

  val PlanPBDef_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [OMNIType] Parent theory of "PlanPBDef"

   [PlanPBType] Parent theory of "PlanPBDef"

   [aclfoundation] Parent theory of "PlanPBDef"

   [PL_WARNO_Auth_def]  Definition

      |- PL_WARNO_Auth =
         prop (SOME (SLc (PL recon))) impf
         prop (SOME (SLc (PL tentativePlan))) impf
         prop (SOME (SLc (PSG initiateMovement))) impf
         Name PlatoonLeader controls prop (SOME (SLc (PL report1)))

   [PL_notWARNO_Auth_def]  Definition

      |- ∀cmd.
           PL_notWARNO_Auth cmd =
           if cmd = report1 then prop NONE
           else
             Name PlatoonLeader says prop (SOME (SLc (PL cmd))) impf
             Name PlatoonLeader controls prop (SOME (SLc (PL cmd)))

   [getInitMove_primitive_def]  Definition

      |- getInitMove =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonSergeant says prop (SOME (ESCc v146))::
                        xs)) ∧
              (∀v150 xs.
                 R xs
                   (Name PlatoonSergeant says prop (SOME (SLc (PL v150)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonSergeant says
                    prop (SOME (SLc (PSG psgIncomplete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonSergeant says
                    prop (SOME (SLc (PSG invalidPsgCommand)))::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetInitMove a.
              case a of
                [] => I [NONE]
              | TT::xs => I (getInitMove xs)
              | FF::xs => I (getInitMove xs)
              | prop v35::xs => I (getInitMove xs)
              | notf v36::xs => I (getInitMove xs)
              | v37 andf v38::xs => I (getInitMove xs)
              | v39 orf v40::xs => I (getInitMove xs)
              | v41 impf v42::xs => I (getInitMove xs)
              | v43 eqf v44::xs => I (getInitMove xs)
              | v45 says TT::xs => I (getInitMove xs)
              | v45 says FF::xs => I (getInitMove xs)
              | Name v139 says prop NONE::xs => I (getInitMove xs)
              | Name PlatoonLeader says prop (SOME v145)::xs =>
                  I (getInitMove xs)
              | Name PlatoonSergeant says prop (SOME (ESCc v148))::xs =>
                  I (getInitMove xs)
              | Name PlatoonSergeant says prop (SOME (SLc (PL v152)))::
                    xs =>
                  I (getInitMove xs)
              | Name PlatoonSergeant says
                prop (SOME (SLc (PSG initiateMovement)))::xs =>
                  I [SOME (SLc (PSG initiateMovement))]
              | Name PlatoonSergeant says
                prop (SOME (SLc (PSG psgIncomplete)))::xs =>
                  I (getInitMove xs)
              | Name PlatoonSergeant says
                prop (SOME (SLc (PSG invalidPsgCommand)))::xs =>
                  I (getInitMove xs)
              | v140 meet v141 says prop v101::xs => I (getInitMove xs)
              | v142 quoting v143 says prop v101::xs => I (getInitMove xs)
              | v45 says notf v102::xs => I (getInitMove xs)
              | v45 says (v103 andf v104)::xs => I (getInitMove xs)
              | v45 says (v105 orf v106)::xs => I (getInitMove xs)
              | v45 says (v107 impf v108)::xs => I (getInitMove xs)
              | v45 says (v109 eqf v110)::xs => I (getInitMove xs)
              | v45 says v111 says v112::xs => I (getInitMove xs)
              | v45 says v113 speaks_for v114::xs => I (getInitMove xs)
              | v45 says v115 controls v116::xs => I (getInitMove xs)
              | v45 says reps v117 v118 v119::xs => I (getInitMove xs)
              | v45 says v120 domi v121::xs => I (getInitMove xs)
              | v45 says v122 eqi v123::xs => I (getInitMove xs)
              | v45 says v124 doms v125::xs => I (getInitMove xs)
              | v45 says v126 eqs v127::xs => I (getInitMove xs)
              | v45 says v128 eqn v129::xs => I (getInitMove xs)
              | v45 says v130 lte v131::xs => I (getInitMove xs)
              | v45 says v132 lt v133::xs => I (getInitMove xs)
              | v47 speaks_for v48::xs => I (getInitMove xs)
              | v49 controls v50::xs => I (getInitMove xs)
              | reps v51 v52 v53::xs => I (getInitMove xs)
              | v54 domi v55::xs => I (getInitMove xs)
              | v56 eqi v57::xs => I (getInitMove xs)
              | v58 doms v59::xs => I (getInitMove xs)
              | v60 eqs v61::xs => I (getInitMove xs)
              | v62 eqn v63::xs => I (getInitMove xs)
              | v64 lte v65::xs => I (getInitMove xs)
              | v66 lt v67::xs => I (getInitMove xs))

   [getPlCom_primitive_def]  Definition

      |- getPlCom =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
              (∀v151 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                        xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetPlCom a.
              case a of
                [] => I invalidPlCommand
              | TT::xs => I (getPlCom xs)
              | FF::xs => I (getPlCom xs)
              | prop v35::xs => I (getPlCom xs)
              | notf v36::xs => I (getPlCom xs)
              | v37 andf v38::xs => I (getPlCom xs)
              | v39 orf v40::xs => I (getPlCom xs)
              | v41 impf v42::xs => I (getPlCom xs)
              | v43 eqf v44::xs => I (getPlCom xs)
              | v45 says TT::xs => I (getPlCom xs)
              | v45 says FF::xs => I (getPlCom xs)
              | Name v139 says prop NONE::xs => I (getPlCom xs)
              | Name PlatoonLeader says prop (SOME (ESCc v148))::xs =>
                  I (getPlCom xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL cmd)))::xs =>
                  I cmd
              | Name PlatoonLeader says prop (SOME (SLc (PSG v153)))::xs =>
                  I (getPlCom xs)
              | Name PlatoonSergeant says prop (SOME v145)::xs =>
                  I (getPlCom xs)
              | v140 meet v141 says prop v101::xs => I (getPlCom xs)
              | v142 quoting v143 says prop v101::xs => I (getPlCom xs)
              | v45 says notf v102::xs => I (getPlCom xs)
              | v45 says (v103 andf v104)::xs => I (getPlCom xs)
              | v45 says (v105 orf v106)::xs => I (getPlCom xs)
              | v45 says (v107 impf v108)::xs => I (getPlCom xs)
              | v45 says (v109 eqf v110)::xs => I (getPlCom xs)
              | v45 says v111 says v112::xs => I (getPlCom xs)
              | v45 says v113 speaks_for v114::xs => I (getPlCom xs)
              | v45 says v115 controls v116::xs => I (getPlCom xs)
              | v45 says reps v117 v118 v119::xs => I (getPlCom xs)
              | v45 says v120 domi v121::xs => I (getPlCom xs)
              | v45 says v122 eqi v123::xs => I (getPlCom xs)
              | v45 says v124 doms v125::xs => I (getPlCom xs)
              | v45 says v126 eqs v127::xs => I (getPlCom xs)
              | v45 says v128 eqn v129::xs => I (getPlCom xs)
              | v45 says v130 lte v131::xs => I (getPlCom xs)
              | v45 says v132 lt v133::xs => I (getPlCom xs)
              | v47 speaks_for v48::xs => I (getPlCom xs)
              | v49 controls v50::xs => I (getPlCom xs)
              | reps v51 v52 v53::xs => I (getPlCom xs)
              | v54 domi v55::xs => I (getPlCom xs)
              | v56 eqi v57::xs => I (getPlCom xs)
              | v58 doms v59::xs => I (getPlCom xs)
              | v60 eqs v61::xs => I (getPlCom xs)
              | v62 eqn v63::xs => I (getPlCom xs)
              | v64 lte v65::xs => I (getPlCom xs)
              | v66 lt v67::xs => I (getPlCom xs))

   [getPsgCom_primitive_def]  Definition

      |- getPsgCom =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonSergeant says prop (SOME (ESCc v146))::
                        xs)) ∧
              (∀v150 xs.
                 R xs
                   (Name PlatoonSergeant says prop (SOME (SLc (PL v150)))::
                        xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetPsgCom a.
              case a of
                [] => I invalidPsgCommand
              | TT::xs => I (getPsgCom xs)
              | FF::xs => I (getPsgCom xs)
              | prop v35::xs => I (getPsgCom xs)
              | notf v36::xs => I (getPsgCom xs)
              | v37 andf v38::xs => I (getPsgCom xs)
              | v39 orf v40::xs => I (getPsgCom xs)
              | v41 impf v42::xs => I (getPsgCom xs)
              | v43 eqf v44::xs => I (getPsgCom xs)
              | v45 says TT::xs => I (getPsgCom xs)
              | v45 says FF::xs => I (getPsgCom xs)
              | Name v139 says prop NONE::xs => I (getPsgCom xs)
              | Name PlatoonLeader says prop (SOME v145)::xs =>
                  I (getPsgCom xs)
              | Name PlatoonSergeant says prop (SOME (ESCc v148))::xs =>
                  I (getPsgCom xs)
              | Name PlatoonSergeant says prop (SOME (SLc (PL v152)))::
                    xs =>
                  I (getPsgCom xs)
              | Name PlatoonSergeant says prop (SOME (SLc (PSG cmd)))::
                    xs =>
                  I cmd
              | v140 meet v141 says prop v101::xs => I (getPsgCom xs)
              | v142 quoting v143 says prop v101::xs => I (getPsgCom xs)
              | v45 says notf v102::xs => I (getPsgCom xs)
              | v45 says (v103 andf v104)::xs => I (getPsgCom xs)
              | v45 says (v105 orf v106)::xs => I (getPsgCom xs)
              | v45 says (v107 impf v108)::xs => I (getPsgCom xs)
              | v45 says (v109 eqf v110)::xs => I (getPsgCom xs)
              | v45 says v111 says v112::xs => I (getPsgCom xs)
              | v45 says v113 speaks_for v114::xs => I (getPsgCom xs)
              | v45 says v115 controls v116::xs => I (getPsgCom xs)
              | v45 says reps v117 v118 v119::xs => I (getPsgCom xs)
              | v45 says v120 domi v121::xs => I (getPsgCom xs)
              | v45 says v122 eqi v123::xs => I (getPsgCom xs)
              | v45 says v124 doms v125::xs => I (getPsgCom xs)
              | v45 says v126 eqs v127::xs => I (getPsgCom xs)
              | v45 says v128 eqn v129::xs => I (getPsgCom xs)
              | v45 says v130 lte v131::xs => I (getPsgCom xs)
              | v45 says v132 lt v133::xs => I (getPsgCom xs)
              | v47 speaks_for v48::xs => I (getPsgCom xs)
              | v49 controls v50::xs => I (getPsgCom xs)
              | reps v51 v52 v53::xs => I (getPsgCom xs)
              | v54 domi v55::xs => I (getPsgCom xs)
              | v56 eqi v57::xs => I (getPsgCom xs)
              | v58 doms v59::xs => I (getPsgCom xs)
              | v60 eqs v61::xs => I (getPsgCom xs)
              | v62 eqn v63::xs => I (getPsgCom xs)
              | v64 lte v65::xs => I (getPsgCom xs)
              | v66 lt v67::xs => I (getPsgCom xs))

   [getRecon_primitive_def]  Definition

      |- getRecon =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL receiveMission)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL tentativePlan)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL report1)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL completePlan)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL supervise)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL report2)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL complete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL plIncomplete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL invalidPlCommand)))::xs)) ∧
              (∀v151 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                        xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetRecon a.
              case a of
                [] => I [NONE]
              | TT::xs => I (getRecon xs)
              | FF::xs => I (getRecon xs)
              | prop v35::xs => I (getRecon xs)
              | notf v36::xs => I (getRecon xs)
              | v37 andf v38::xs => I (getRecon xs)
              | v39 orf v40::xs => I (getRecon xs)
              | v41 impf v42::xs => I (getRecon xs)
              | v43 eqf v44::xs => I (getRecon xs)
              | v45 says TT::xs => I (getRecon xs)
              | v45 says FF::xs => I (getRecon xs)
              | Name v139 says prop NONE::xs => I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (ESCc v148))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL receiveMission)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL warno)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL tentativePlan)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL recon)))::xs =>
                  I [SOME (SLc (PL recon))]
              | Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                    xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL completePlan)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                    xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                    xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                    xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL plIncomplete)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL invalidPlCommand)))::xs =>
                  I (getRecon xs)
              | Name PlatoonLeader says prop (SOME (SLc (PSG v153)))::xs =>
                  I (getRecon xs)
              | Name PlatoonSergeant says prop (SOME v145)::xs =>
                  I (getRecon xs)
              | v140 meet v141 says prop v101::xs => I (getRecon xs)
              | v142 quoting v143 says prop v101::xs => I (getRecon xs)
              | v45 says notf v102::xs => I (getRecon xs)
              | v45 says (v103 andf v104)::xs => I (getRecon xs)
              | v45 says (v105 orf v106)::xs => I (getRecon xs)
              | v45 says (v107 impf v108)::xs => I (getRecon xs)
              | v45 says (v109 eqf v110)::xs => I (getRecon xs)
              | v45 says v111 says v112::xs => I (getRecon xs)
              | v45 says v113 speaks_for v114::xs => I (getRecon xs)
              | v45 says v115 controls v116::xs => I (getRecon xs)
              | v45 says reps v117 v118 v119::xs => I (getRecon xs)
              | v45 says v120 domi v121::xs => I (getRecon xs)
              | v45 says v122 eqi v123::xs => I (getRecon xs)
              | v45 says v124 doms v125::xs => I (getRecon xs)
              | v45 says v126 eqs v127::xs => I (getRecon xs)
              | v45 says v128 eqn v129::xs => I (getRecon xs)
              | v45 says v130 lte v131::xs => I (getRecon xs)
              | v45 says v132 lt v133::xs => I (getRecon xs)
              | v47 speaks_for v48::xs => I (getRecon xs)
              | v49 controls v50::xs => I (getRecon xs)
              | reps v51 v52 v53::xs => I (getRecon xs)
              | v54 domi v55::xs => I (getRecon xs)
              | v56 eqi v57::xs => I (getRecon xs)
              | v58 doms v59::xs => I (getRecon xs)
              | v60 eqs v61::xs => I (getRecon xs)
              | v62 eqn v63::xs => I (getRecon xs)
              | v64 lte v65::xs => I (getRecon xs)
              | v66 lt v67::xs => I (getRecon xs))

   [getReport_primitive_def]  Definition

      |- getReport =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL receiveMission)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL tentativePlan)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL completePlan)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL supervise)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL report2)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL complete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL plIncomplete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL invalidPlCommand)))::xs)) ∧
              (∀v151 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                        xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetReport a.
              case a of
                [] => I [NONE]
              | TT::xs => I (getReport xs)
              | FF::xs => I (getReport xs)
              | prop v35::xs => I (getReport xs)
              | notf v36::xs => I (getReport xs)
              | v37 andf v38::xs => I (getReport xs)
              | v39 orf v40::xs => I (getReport xs)
              | v41 impf v42::xs => I (getReport xs)
              | v43 eqf v44::xs => I (getReport xs)
              | v45 says TT::xs => I (getReport xs)
              | v45 says FF::xs => I (getReport xs)
              | Name v139 says prop NONE::xs => I (getReport xs)
              | Name PlatoonLeader says prop (SOME (ESCc v148))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL receiveMission)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL warno)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL tentativePlan)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL recon)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                    xs =>
                  I [SOME (SLc (PL report1))]
              | Name PlatoonLeader says
                prop (SOME (SLc (PL completePlan)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                    xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                    xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                    xs =>
                  I (getReport xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL plIncomplete)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL invalidPlCommand)))::xs =>
                  I (getReport xs)
              | Name PlatoonLeader says prop (SOME (SLc (PSG v153)))::xs =>
                  I (getReport xs)
              | Name PlatoonSergeant says prop (SOME v145)::xs =>
                  I (getReport xs)
              | v140 meet v141 says prop v101::xs => I (getReport xs)
              | v142 quoting v143 says prop v101::xs => I (getReport xs)
              | v45 says notf v102::xs => I (getReport xs)
              | v45 says (v103 andf v104)::xs => I (getReport xs)
              | v45 says (v105 orf v106)::xs => I (getReport xs)
              | v45 says (v107 impf v108)::xs => I (getReport xs)
              | v45 says (v109 eqf v110)::xs => I (getReport xs)
              | v45 says v111 says v112::xs => I (getReport xs)
              | v45 says v113 speaks_for v114::xs => I (getReport xs)
              | v45 says v115 controls v116::xs => I (getReport xs)
              | v45 says reps v117 v118 v119::xs => I (getReport xs)
              | v45 says v120 domi v121::xs => I (getReport xs)
              | v45 says v122 eqi v123::xs => I (getReport xs)
              | v45 says v124 doms v125::xs => I (getReport xs)
              | v45 says v126 eqs v127::xs => I (getReport xs)
              | v45 says v128 eqn v129::xs => I (getReport xs)
              | v45 says v130 lte v131::xs => I (getReport xs)
              | v45 says v132 lt v133::xs => I (getReport xs)
              | v47 speaks_for v48::xs => I (getReport xs)
              | v49 controls v50::xs => I (getReport xs)
              | reps v51 v52 v53::xs => I (getReport xs)
              | v54 domi v55::xs => I (getReport xs)
              | v56 eqi v57::xs => I (getReport xs)
              | v58 doms v59::xs => I (getReport xs)
              | v60 eqs v61::xs => I (getReport xs)
              | v62 eqn v63::xs => I (getReport xs)
              | v64 lte v65::xs => I (getReport xs)
              | v66 lt v67::xs => I (getReport xs))

   [getTenativePlan_primitive_def]  Definition

      |- getTenativePlan =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL receiveMission)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL report1)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL completePlan)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::
                        xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL supervise)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL report2)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL complete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL plIncomplete)))::xs)) ∧
              (∀xs.
                 R xs
                   (Name PlatoonLeader says
                    prop (SOME (SLc (PL invalidPlCommand)))::xs)) ∧
              (∀v151 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                        xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetTenativePlan a.
              case a of
                [] => I [NONE]
              | TT::xs => I (getTenativePlan xs)
              | FF::xs => I (getTenativePlan xs)
              | prop v35::xs => I (getTenativePlan xs)
              | notf v36::xs => I (getTenativePlan xs)
              | v37 andf v38::xs => I (getTenativePlan xs)
              | v39 orf v40::xs => I (getTenativePlan xs)
              | v41 impf v42::xs => I (getTenativePlan xs)
              | v43 eqf v44::xs => I (getTenativePlan xs)
              | v45 says TT::xs => I (getTenativePlan xs)
              | v45 says FF::xs => I (getTenativePlan xs)
              | Name v139 says prop NONE::xs => I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (ESCc v148))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL receiveMission)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL warno)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL tentativePlan)))::xs =>
                  I [SOME (SLc (PL tentativePlan))]
              | Name PlatoonLeader says prop (SOME (SLc (PL recon)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                    xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL completePlan)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                    xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                    xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                    xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL plIncomplete)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says
                prop (SOME (SLc (PL invalidPlCommand)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonLeader says prop (SOME (SLc (PSG v153)))::xs =>
                  I (getTenativePlan xs)
              | Name PlatoonSergeant says prop (SOME v145)::xs =>
                  I (getTenativePlan xs)
              | v140 meet v141 says prop v101::xs => I (getTenativePlan xs)
              | v142 quoting v143 says prop v101::xs =>
                  I (getTenativePlan xs)
              | v45 says notf v102::xs => I (getTenativePlan xs)
              | v45 says (v103 andf v104)::xs => I (getTenativePlan xs)
              | v45 says (v105 orf v106)::xs => I (getTenativePlan xs)
              | v45 says (v107 impf v108)::xs => I (getTenativePlan xs)
              | v45 says (v109 eqf v110)::xs => I (getTenativePlan xs)
              | v45 says v111 says v112::xs => I (getTenativePlan xs)
              | v45 says v113 speaks_for v114::xs => I (getTenativePlan xs)
              | v45 says v115 controls v116::xs => I (getTenativePlan xs)
              | v45 says reps v117 v118 v119::xs => I (getTenativePlan xs)
              | v45 says v120 domi v121::xs => I (getTenativePlan xs)
              | v45 says v122 eqi v123::xs => I (getTenativePlan xs)
              | v45 says v124 doms v125::xs => I (getTenativePlan xs)
              | v45 says v126 eqs v127::xs => I (getTenativePlan xs)
              | v45 says v128 eqn v129::xs => I (getTenativePlan xs)
              | v45 says v130 lte v131::xs => I (getTenativePlan xs)
              | v45 says v132 lt v133::xs => I (getTenativePlan xs)
              | v47 speaks_for v48::xs => I (getTenativePlan xs)
              | v49 controls v50::xs => I (getTenativePlan xs)
              | reps v51 v52 v53::xs => I (getTenativePlan xs)
              | v54 domi v55::xs => I (getTenativePlan xs)
              | v56 eqi v57::xs => I (getTenativePlan xs)
              | v58 doms v59::xs => I (getTenativePlan xs)
              | v60 eqs v61::xs => I (getTenativePlan xs)
              | v62 eqn v63::xs => I (getTenativePlan xs)
              | v64 lte v65::xs => I (getTenativePlan xs)
              | v66 lt v67::xs => I (getTenativePlan xs))

   [secContextNull_def]  Definition

      |- ∀x. secContextNull x = [TT]

   [secContext_def]  Definition

      |- ∀s x.
           secContext s x =
           if s = WARNO then
             if
               (getRecon x = [SOME (SLc (PL recon))]) ∧
               (getTenativePlan x = [SOME (SLc (PL tentativePlan))]) ∧
               (getReport x = [SOME (SLc (PL report1))]) ∧
               (getInitMove x = [SOME (SLc (PSG initiateMovement))])
             then
               [PL_WARNO_Auth;
                Name PlatoonLeader controls prop (SOME (SLc (PL recon)));
                Name PlatoonLeader controls
                prop (SOME (SLc (PL tentativePlan)));
                Name PlatoonSergeant controls
                prop (SOME (SLc (PSG initiateMovement)))]
             else [prop NONE]
           else if getPlCom x = invalidPlCommand then [prop NONE]
           else [PL_notWARNO_Auth (getPlCom x)]

   [getInitMove_def]  Theorem

      |- (getInitMove [] = [NONE]) ∧
         (∀xs.
            getInitMove
              (Name PlatoonSergeant says
               prop (SOME (SLc (PSG initiateMovement)))::xs) =
            [SOME (SLc (PSG initiateMovement))]) ∧
         (∀xs. getInitMove (TT::xs) = getInitMove xs) ∧
         (∀xs. getInitMove (FF::xs) = getInitMove xs) ∧
         (∀xs v2. getInitMove (prop v2::xs) = getInitMove xs) ∧
         (∀xs v3. getInitMove (notf v3::xs) = getInitMove xs) ∧
         (∀xs v5 v4. getInitMove (v4 andf v5::xs) = getInitMove xs) ∧
         (∀xs v7 v6. getInitMove (v6 orf v7::xs) = getInitMove xs) ∧
         (∀xs v9 v8. getInitMove (v8 impf v9::xs) = getInitMove xs) ∧
         (∀xs v11 v10. getInitMove (v10 eqf v11::xs) = getInitMove xs) ∧
         (∀xs v12. getInitMove (v12 says TT::xs) = getInitMove xs) ∧
         (∀xs v12. getInitMove (v12 says FF::xs) = getInitMove xs) ∧
         (∀xs v134.
            getInitMove (Name v134 says prop NONE::xs) = getInitMove xs) ∧
         (∀xs v144.
            getInitMove (Name PlatoonLeader says prop (SOME v144)::xs) =
            getInitMove xs) ∧
         (∀xs v146.
            getInitMove
              (Name PlatoonSergeant says prop (SOME (ESCc v146))::xs) =
            getInitMove xs) ∧
         (∀xs v150.
            getInitMove
              (Name PlatoonSergeant says prop (SOME (SLc (PL v150)))::xs) =
            getInitMove xs) ∧
         (∀xs.
            getInitMove
              (Name PlatoonSergeant says
               prop (SOME (SLc (PSG psgIncomplete)))::xs) =
            getInitMove xs) ∧
         (∀xs.
            getInitMove
              (Name PlatoonSergeant says
               prop (SOME (SLc (PSG invalidPsgCommand)))::xs) =
            getInitMove xs) ∧
         (∀xs v68 v136 v135.
            getInitMove (v135 meet v136 says prop v68::xs) =
            getInitMove xs) ∧
         (∀xs v68 v138 v137.
            getInitMove (v137 quoting v138 says prop v68::xs) =
            getInitMove xs) ∧
         (∀xs v69 v12.
            getInitMove (v12 says notf v69::xs) = getInitMove xs) ∧
         (∀xs v71 v70 v12.
            getInitMove (v12 says (v70 andf v71)::xs) = getInitMove xs) ∧
         (∀xs v73 v72 v12.
            getInitMove (v12 says (v72 orf v73)::xs) = getInitMove xs) ∧
         (∀xs v75 v74 v12.
            getInitMove (v12 says (v74 impf v75)::xs) = getInitMove xs) ∧
         (∀xs v77 v76 v12.
            getInitMove (v12 says (v76 eqf v77)::xs) = getInitMove xs) ∧
         (∀xs v79 v78 v12.
            getInitMove (v12 says v78 says v79::xs) = getInitMove xs) ∧
         (∀xs v81 v80 v12.
            getInitMove (v12 says v80 speaks_for v81::xs) =
            getInitMove xs) ∧
         (∀xs v83 v82 v12.
            getInitMove (v12 says v82 controls v83::xs) = getInitMove xs) ∧
         (∀xs v86 v85 v84 v12.
            getInitMove (v12 says reps v84 v85 v86::xs) = getInitMove xs) ∧
         (∀xs v88 v87 v12.
            getInitMove (v12 says v87 domi v88::xs) = getInitMove xs) ∧
         (∀xs v90 v89 v12.
            getInitMove (v12 says v89 eqi v90::xs) = getInitMove xs) ∧
         (∀xs v92 v91 v12.
            getInitMove (v12 says v91 doms v92::xs) = getInitMove xs) ∧
         (∀xs v94 v93 v12.
            getInitMove (v12 says v93 eqs v94::xs) = getInitMove xs) ∧
         (∀xs v96 v95 v12.
            getInitMove (v12 says v95 eqn v96::xs) = getInitMove xs) ∧
         (∀xs v98 v97 v12.
            getInitMove (v12 says v97 lte v98::xs) = getInitMove xs) ∧
         (∀xs v99 v12 v100.
            getInitMove (v12 says v99 lt v100::xs) = getInitMove xs) ∧
         (∀xs v15 v14.
            getInitMove (v14 speaks_for v15::xs) = getInitMove xs) ∧
         (∀xs v17 v16.
            getInitMove (v16 controls v17::xs) = getInitMove xs) ∧
         (∀xs v20 v19 v18.
            getInitMove (reps v18 v19 v20::xs) = getInitMove xs) ∧
         (∀xs v22 v21. getInitMove (v21 domi v22::xs) = getInitMove xs) ∧
         (∀xs v24 v23. getInitMove (v23 eqi v24::xs) = getInitMove xs) ∧
         (∀xs v26 v25. getInitMove (v25 doms v26::xs) = getInitMove xs) ∧
         (∀xs v28 v27. getInitMove (v27 eqs v28::xs) = getInitMove xs) ∧
         (∀xs v30 v29. getInitMove (v29 eqn v30::xs) = getInitMove xs) ∧
         (∀xs v32 v31. getInitMove (v31 lte v32::xs) = getInitMove xs) ∧
         ∀xs v34 v33. getInitMove (v33 lt v34::xs) = getInitMove xs

   [getInitMove_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀xs.
              P
                (Name PlatoonSergeant says
                 prop (SOME (SLc (PSG initiateMovement)))::xs)) ∧
           (∀xs. P xs ⇒ P (TT::xs)) ∧ (∀xs. P xs ⇒ P (FF::xs)) ∧
           (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name PlatoonSergeant says prop (SOME (ESCc v146))::xs)) ∧
           (∀v150 xs.
              P xs ⇒
              P
                (Name PlatoonSergeant says prop (SOME (SLc (PL v150)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonSergeant says
                 prop (SOME (SLc (PSG psgIncomplete)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonSergeant says
                 prop (SOME (SLc (PSG invalidPsgCommand)))::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [getPlCom_def]  Theorem

      |- (getPlCom [] = invalidPlCommand) ∧
         (∀xs cmd.
            getPlCom
              (Name PlatoonLeader says prop (SOME (SLc (PL cmd)))::xs) =
            cmd) ∧ (∀xs. getPlCom (TT::xs) = getPlCom xs) ∧
         (∀xs. getPlCom (FF::xs) = getPlCom xs) ∧
         (∀xs v2. getPlCom (prop v2::xs) = getPlCom xs) ∧
         (∀xs v3. getPlCom (notf v3::xs) = getPlCom xs) ∧
         (∀xs v5 v4. getPlCom (v4 andf v5::xs) = getPlCom xs) ∧
         (∀xs v7 v6. getPlCom (v6 orf v7::xs) = getPlCom xs) ∧
         (∀xs v9 v8. getPlCom (v8 impf v9::xs) = getPlCom xs) ∧
         (∀xs v11 v10. getPlCom (v10 eqf v11::xs) = getPlCom xs) ∧
         (∀xs v12. getPlCom (v12 says TT::xs) = getPlCom xs) ∧
         (∀xs v12. getPlCom (v12 says FF::xs) = getPlCom xs) ∧
         (∀xs v134.
            getPlCom (Name v134 says prop NONE::xs) = getPlCom xs) ∧
         (∀xs v146.
            getPlCom
              (Name PlatoonLeader says prop (SOME (ESCc v146))::xs) =
            getPlCom xs) ∧
         (∀xs v151.
            getPlCom
              (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::xs) =
            getPlCom xs) ∧
         (∀xs v144.
            getPlCom (Name PlatoonSergeant says prop (SOME v144)::xs) =
            getPlCom xs) ∧
         (∀xs v68 v136 v135.
            getPlCom (v135 meet v136 says prop v68::xs) = getPlCom xs) ∧
         (∀xs v68 v138 v137.
            getPlCom (v137 quoting v138 says prop v68::xs) = getPlCom xs) ∧
         (∀xs v69 v12. getPlCom (v12 says notf v69::xs) = getPlCom xs) ∧
         (∀xs v71 v70 v12.
            getPlCom (v12 says (v70 andf v71)::xs) = getPlCom xs) ∧
         (∀xs v73 v72 v12.
            getPlCom (v12 says (v72 orf v73)::xs) = getPlCom xs) ∧
         (∀xs v75 v74 v12.
            getPlCom (v12 says (v74 impf v75)::xs) = getPlCom xs) ∧
         (∀xs v77 v76 v12.
            getPlCom (v12 says (v76 eqf v77)::xs) = getPlCom xs) ∧
         (∀xs v79 v78 v12.
            getPlCom (v12 says v78 says v79::xs) = getPlCom xs) ∧
         (∀xs v81 v80 v12.
            getPlCom (v12 says v80 speaks_for v81::xs) = getPlCom xs) ∧
         (∀xs v83 v82 v12.
            getPlCom (v12 says v82 controls v83::xs) = getPlCom xs) ∧
         (∀xs v86 v85 v84 v12.
            getPlCom (v12 says reps v84 v85 v86::xs) = getPlCom xs) ∧
         (∀xs v88 v87 v12.
            getPlCom (v12 says v87 domi v88::xs) = getPlCom xs) ∧
         (∀xs v90 v89 v12.
            getPlCom (v12 says v89 eqi v90::xs) = getPlCom xs) ∧
         (∀xs v92 v91 v12.
            getPlCom (v12 says v91 doms v92::xs) = getPlCom xs) ∧
         (∀xs v94 v93 v12.
            getPlCom (v12 says v93 eqs v94::xs) = getPlCom xs) ∧
         (∀xs v96 v95 v12.
            getPlCom (v12 says v95 eqn v96::xs) = getPlCom xs) ∧
         (∀xs v98 v97 v12.
            getPlCom (v12 says v97 lte v98::xs) = getPlCom xs) ∧
         (∀xs v99 v12 v100.
            getPlCom (v12 says v99 lt v100::xs) = getPlCom xs) ∧
         (∀xs v15 v14. getPlCom (v14 speaks_for v15::xs) = getPlCom xs) ∧
         (∀xs v17 v16. getPlCom (v16 controls v17::xs) = getPlCom xs) ∧
         (∀xs v20 v19 v18. getPlCom (reps v18 v19 v20::xs) = getPlCom xs) ∧
         (∀xs v22 v21. getPlCom (v21 domi v22::xs) = getPlCom xs) ∧
         (∀xs v24 v23. getPlCom (v23 eqi v24::xs) = getPlCom xs) ∧
         (∀xs v26 v25. getPlCom (v25 doms v26::xs) = getPlCom xs) ∧
         (∀xs v28 v27. getPlCom (v27 eqs v28::xs) = getPlCom xs) ∧
         (∀xs v30 v29. getPlCom (v29 eqn v30::xs) = getPlCom xs) ∧
         (∀xs v32 v31. getPlCom (v31 lte v32::xs) = getPlCom xs) ∧
         ∀xs v34 v33. getPlCom (v33 lt v34::xs) = getPlCom xs

   [getPlCom_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs.
              P (Name PlatoonLeader says prop (SOME (SLc (PL cmd)))::xs)) ∧
           (∀xs. P xs ⇒ P (TT::xs)) ∧ (∀xs. P xs ⇒ P (FF::xs)) ∧
           (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
           (∀v151 xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                     xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [getPsgCom_def]  Theorem

      |- (getPsgCom [] = invalidPsgCommand) ∧
         (∀xs cmd.
            getPsgCom
              (Name PlatoonSergeant says prop (SOME (SLc (PSG cmd)))::xs) =
            cmd) ∧ (∀xs. getPsgCom (TT::xs) = getPsgCom xs) ∧
         (∀xs. getPsgCom (FF::xs) = getPsgCom xs) ∧
         (∀xs v2. getPsgCom (prop v2::xs) = getPsgCom xs) ∧
         (∀xs v3. getPsgCom (notf v3::xs) = getPsgCom xs) ∧
         (∀xs v5 v4. getPsgCom (v4 andf v5::xs) = getPsgCom xs) ∧
         (∀xs v7 v6. getPsgCom (v6 orf v7::xs) = getPsgCom xs) ∧
         (∀xs v9 v8. getPsgCom (v8 impf v9::xs) = getPsgCom xs) ∧
         (∀xs v11 v10. getPsgCom (v10 eqf v11::xs) = getPsgCom xs) ∧
         (∀xs v12. getPsgCom (v12 says TT::xs) = getPsgCom xs) ∧
         (∀xs v12. getPsgCom (v12 says FF::xs) = getPsgCom xs) ∧
         (∀xs v134.
            getPsgCom (Name v134 says prop NONE::xs) = getPsgCom xs) ∧
         (∀xs v144.
            getPsgCom (Name PlatoonLeader says prop (SOME v144)::xs) =
            getPsgCom xs) ∧
         (∀xs v146.
            getPsgCom
              (Name PlatoonSergeant says prop (SOME (ESCc v146))::xs) =
            getPsgCom xs) ∧
         (∀xs v150.
            getPsgCom
              (Name PlatoonSergeant says prop (SOME (SLc (PL v150)))::xs) =
            getPsgCom xs) ∧
         (∀xs v68 v136 v135.
            getPsgCom (v135 meet v136 says prop v68::xs) = getPsgCom xs) ∧
         (∀xs v68 v138 v137.
            getPsgCom (v137 quoting v138 says prop v68::xs) =
            getPsgCom xs) ∧
         (∀xs v69 v12. getPsgCom (v12 says notf v69::xs) = getPsgCom xs) ∧
         (∀xs v71 v70 v12.
            getPsgCom (v12 says (v70 andf v71)::xs) = getPsgCom xs) ∧
         (∀xs v73 v72 v12.
            getPsgCom (v12 says (v72 orf v73)::xs) = getPsgCom xs) ∧
         (∀xs v75 v74 v12.
            getPsgCom (v12 says (v74 impf v75)::xs) = getPsgCom xs) ∧
         (∀xs v77 v76 v12.
            getPsgCom (v12 says (v76 eqf v77)::xs) = getPsgCom xs) ∧
         (∀xs v79 v78 v12.
            getPsgCom (v12 says v78 says v79::xs) = getPsgCom xs) ∧
         (∀xs v81 v80 v12.
            getPsgCom (v12 says v80 speaks_for v81::xs) = getPsgCom xs) ∧
         (∀xs v83 v82 v12.
            getPsgCom (v12 says v82 controls v83::xs) = getPsgCom xs) ∧
         (∀xs v86 v85 v84 v12.
            getPsgCom (v12 says reps v84 v85 v86::xs) = getPsgCom xs) ∧
         (∀xs v88 v87 v12.
            getPsgCom (v12 says v87 domi v88::xs) = getPsgCom xs) ∧
         (∀xs v90 v89 v12.
            getPsgCom (v12 says v89 eqi v90::xs) = getPsgCom xs) ∧
         (∀xs v92 v91 v12.
            getPsgCom (v12 says v91 doms v92::xs) = getPsgCom xs) ∧
         (∀xs v94 v93 v12.
            getPsgCom (v12 says v93 eqs v94::xs) = getPsgCom xs) ∧
         (∀xs v96 v95 v12.
            getPsgCom (v12 says v95 eqn v96::xs) = getPsgCom xs) ∧
         (∀xs v98 v97 v12.
            getPsgCom (v12 says v97 lte v98::xs) = getPsgCom xs) ∧
         (∀xs v99 v12 v100.
            getPsgCom (v12 says v99 lt v100::xs) = getPsgCom xs) ∧
         (∀xs v15 v14. getPsgCom (v14 speaks_for v15::xs) = getPsgCom xs) ∧
         (∀xs v17 v16. getPsgCom (v16 controls v17::xs) = getPsgCom xs) ∧
         (∀xs v20 v19 v18.
            getPsgCom (reps v18 v19 v20::xs) = getPsgCom xs) ∧
         (∀xs v22 v21. getPsgCom (v21 domi v22::xs) = getPsgCom xs) ∧
         (∀xs v24 v23. getPsgCom (v23 eqi v24::xs) = getPsgCom xs) ∧
         (∀xs v26 v25. getPsgCom (v25 doms v26::xs) = getPsgCom xs) ∧
         (∀xs v28 v27. getPsgCom (v27 eqs v28::xs) = getPsgCom xs) ∧
         (∀xs v30 v29. getPsgCom (v29 eqn v30::xs) = getPsgCom xs) ∧
         (∀xs v32 v31. getPsgCom (v31 lte v32::xs) = getPsgCom xs) ∧
         ∀xs v34 v33. getPsgCom (v33 lt v34::xs) = getPsgCom xs

   [getPsgCom_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs.
              P
                (Name PlatoonSergeant says prop (SOME (SLc (PSG cmd)))::
                     xs)) ∧ (∀xs. P xs ⇒ P (TT::xs)) ∧
           (∀xs. P xs ⇒ P (FF::xs)) ∧ (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name PlatoonSergeant says prop (SOME (ESCc v146))::xs)) ∧
           (∀v150 xs.
              P xs ⇒
              P
                (Name PlatoonSergeant says prop (SOME (SLc (PL v150)))::
                     xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [getRecon_def]  Theorem

      |- (getRecon [] = [NONE]) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::xs) =
            [SOME (SLc (PL recon))]) ∧
         (∀xs. getRecon (TT::xs) = getRecon xs) ∧
         (∀xs. getRecon (FF::xs) = getRecon xs) ∧
         (∀xs v2. getRecon (prop v2::xs) = getRecon xs) ∧
         (∀xs v3. getRecon (notf v3::xs) = getRecon xs) ∧
         (∀xs v5 v4. getRecon (v4 andf v5::xs) = getRecon xs) ∧
         (∀xs v7 v6. getRecon (v6 orf v7::xs) = getRecon xs) ∧
         (∀xs v9 v8. getRecon (v8 impf v9::xs) = getRecon xs) ∧
         (∀xs v11 v10. getRecon (v10 eqf v11::xs) = getRecon xs) ∧
         (∀xs v12. getRecon (v12 says TT::xs) = getRecon xs) ∧
         (∀xs v12. getRecon (v12 says FF::xs) = getRecon xs) ∧
         (∀xs v134.
            getRecon (Name v134 says prop NONE::xs) = getRecon xs) ∧
         (∀xs v146.
            getRecon
              (Name PlatoonLeader says prop (SOME (ESCc v146))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says
               prop (SOME (SLc (PL receiveMission)))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says
               prop (SOME (SLc (PL tentativePlan)))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                   xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says
               prop (SOME (SLc (PL completePlan)))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                   xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                   xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                   xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says
               prop (SOME (SLc (PL plIncomplete)))::xs) =
            getRecon xs) ∧
         (∀xs.
            getRecon
              (Name PlatoonLeader says
               prop (SOME (SLc (PL invalidPlCommand)))::xs) =
            getRecon xs) ∧
         (∀xs v151.
            getRecon
              (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::xs) =
            getRecon xs) ∧
         (∀xs v144.
            getRecon (Name PlatoonSergeant says prop (SOME v144)::xs) =
            getRecon xs) ∧
         (∀xs v68 v136 v135.
            getRecon (v135 meet v136 says prop v68::xs) = getRecon xs) ∧
         (∀xs v68 v138 v137.
            getRecon (v137 quoting v138 says prop v68::xs) = getRecon xs) ∧
         (∀xs v69 v12. getRecon (v12 says notf v69::xs) = getRecon xs) ∧
         (∀xs v71 v70 v12.
            getRecon (v12 says (v70 andf v71)::xs) = getRecon xs) ∧
         (∀xs v73 v72 v12.
            getRecon (v12 says (v72 orf v73)::xs) = getRecon xs) ∧
         (∀xs v75 v74 v12.
            getRecon (v12 says (v74 impf v75)::xs) = getRecon xs) ∧
         (∀xs v77 v76 v12.
            getRecon (v12 says (v76 eqf v77)::xs) = getRecon xs) ∧
         (∀xs v79 v78 v12.
            getRecon (v12 says v78 says v79::xs) = getRecon xs) ∧
         (∀xs v81 v80 v12.
            getRecon (v12 says v80 speaks_for v81::xs) = getRecon xs) ∧
         (∀xs v83 v82 v12.
            getRecon (v12 says v82 controls v83::xs) = getRecon xs) ∧
         (∀xs v86 v85 v84 v12.
            getRecon (v12 says reps v84 v85 v86::xs) = getRecon xs) ∧
         (∀xs v88 v87 v12.
            getRecon (v12 says v87 domi v88::xs) = getRecon xs) ∧
         (∀xs v90 v89 v12.
            getRecon (v12 says v89 eqi v90::xs) = getRecon xs) ∧
         (∀xs v92 v91 v12.
            getRecon (v12 says v91 doms v92::xs) = getRecon xs) ∧
         (∀xs v94 v93 v12.
            getRecon (v12 says v93 eqs v94::xs) = getRecon xs) ∧
         (∀xs v96 v95 v12.
            getRecon (v12 says v95 eqn v96::xs) = getRecon xs) ∧
         (∀xs v98 v97 v12.
            getRecon (v12 says v97 lte v98::xs) = getRecon xs) ∧
         (∀xs v99 v12 v100.
            getRecon (v12 says v99 lt v100::xs) = getRecon xs) ∧
         (∀xs v15 v14. getRecon (v14 speaks_for v15::xs) = getRecon xs) ∧
         (∀xs v17 v16. getRecon (v16 controls v17::xs) = getRecon xs) ∧
         (∀xs v20 v19 v18. getRecon (reps v18 v19 v20::xs) = getRecon xs) ∧
         (∀xs v22 v21. getRecon (v21 domi v22::xs) = getRecon xs) ∧
         (∀xs v24 v23. getRecon (v23 eqi v24::xs) = getRecon xs) ∧
         (∀xs v26 v25. getRecon (v25 doms v26::xs) = getRecon xs) ∧
         (∀xs v28 v27. getRecon (v27 eqs v28::xs) = getRecon xs) ∧
         (∀xs v30 v29. getRecon (v29 eqn v30::xs) = getRecon xs) ∧
         (∀xs v32 v31. getRecon (v31 lte v32::xs) = getRecon xs) ∧
         ∀xs v34 v33. getRecon (v33 lt v34::xs) = getRecon xs

   [getRecon_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀xs.
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::
                     xs)) ∧ (∀xs. P xs ⇒ P (TT::xs)) ∧
           (∀xs. P xs ⇒ P (FF::xs)) ∧ (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL receiveMission)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL tentativePlan)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL completePlan)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL plIncomplete)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL invalidPlCommand)))::xs)) ∧
           (∀v151 xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                     xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [getReport_def]  Theorem

      |- (getReport [] = [NONE]) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                   xs) =
            [SOME (SLc (PL report1))]) ∧
         (∀xs. getReport (TT::xs) = getReport xs) ∧
         (∀xs. getReport (FF::xs) = getReport xs) ∧
         (∀xs v2. getReport (prop v2::xs) = getReport xs) ∧
         (∀xs v3. getReport (notf v3::xs) = getReport xs) ∧
         (∀xs v5 v4. getReport (v4 andf v5::xs) = getReport xs) ∧
         (∀xs v7 v6. getReport (v6 orf v7::xs) = getReport xs) ∧
         (∀xs v9 v8. getReport (v8 impf v9::xs) = getReport xs) ∧
         (∀xs v11 v10. getReport (v10 eqf v11::xs) = getReport xs) ∧
         (∀xs v12. getReport (v12 says TT::xs) = getReport xs) ∧
         (∀xs v12. getReport (v12 says FF::xs) = getReport xs) ∧
         (∀xs v134.
            getReport (Name v134 says prop NONE::xs) = getReport xs) ∧
         (∀xs v146.
            getReport
              (Name PlatoonLeader says prop (SOME (ESCc v146))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says
               prop (SOME (SLc (PL receiveMission)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says
               prop (SOME (SLc (PL tentativePlan)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says
               prop (SOME (SLc (PL completePlan)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                   xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                   xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                   xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says
               prop (SOME (SLc (PL plIncomplete)))::xs) =
            getReport xs) ∧
         (∀xs.
            getReport
              (Name PlatoonLeader says
               prop (SOME (SLc (PL invalidPlCommand)))::xs) =
            getReport xs) ∧
         (∀xs v151.
            getReport
              (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::xs) =
            getReport xs) ∧
         (∀xs v144.
            getReport (Name PlatoonSergeant says prop (SOME v144)::xs) =
            getReport xs) ∧
         (∀xs v68 v136 v135.
            getReport (v135 meet v136 says prop v68::xs) = getReport xs) ∧
         (∀xs v68 v138 v137.
            getReport (v137 quoting v138 says prop v68::xs) =
            getReport xs) ∧
         (∀xs v69 v12. getReport (v12 says notf v69::xs) = getReport xs) ∧
         (∀xs v71 v70 v12.
            getReport (v12 says (v70 andf v71)::xs) = getReport xs) ∧
         (∀xs v73 v72 v12.
            getReport (v12 says (v72 orf v73)::xs) = getReport xs) ∧
         (∀xs v75 v74 v12.
            getReport (v12 says (v74 impf v75)::xs) = getReport xs) ∧
         (∀xs v77 v76 v12.
            getReport (v12 says (v76 eqf v77)::xs) = getReport xs) ∧
         (∀xs v79 v78 v12.
            getReport (v12 says v78 says v79::xs) = getReport xs) ∧
         (∀xs v81 v80 v12.
            getReport (v12 says v80 speaks_for v81::xs) = getReport xs) ∧
         (∀xs v83 v82 v12.
            getReport (v12 says v82 controls v83::xs) = getReport xs) ∧
         (∀xs v86 v85 v84 v12.
            getReport (v12 says reps v84 v85 v86::xs) = getReport xs) ∧
         (∀xs v88 v87 v12.
            getReport (v12 says v87 domi v88::xs) = getReport xs) ∧
         (∀xs v90 v89 v12.
            getReport (v12 says v89 eqi v90::xs) = getReport xs) ∧
         (∀xs v92 v91 v12.
            getReport (v12 says v91 doms v92::xs) = getReport xs) ∧
         (∀xs v94 v93 v12.
            getReport (v12 says v93 eqs v94::xs) = getReport xs) ∧
         (∀xs v96 v95 v12.
            getReport (v12 says v95 eqn v96::xs) = getReport xs) ∧
         (∀xs v98 v97 v12.
            getReport (v12 says v97 lte v98::xs) = getReport xs) ∧
         (∀xs v99 v12 v100.
            getReport (v12 says v99 lt v100::xs) = getReport xs) ∧
         (∀xs v15 v14. getReport (v14 speaks_for v15::xs) = getReport xs) ∧
         (∀xs v17 v16. getReport (v16 controls v17::xs) = getReport xs) ∧
         (∀xs v20 v19 v18.
            getReport (reps v18 v19 v20::xs) = getReport xs) ∧
         (∀xs v22 v21. getReport (v21 domi v22::xs) = getReport xs) ∧
         (∀xs v24 v23. getReport (v23 eqi v24::xs) = getReport xs) ∧
         (∀xs v26 v25. getReport (v25 doms v26::xs) = getReport xs) ∧
         (∀xs v28 v27. getReport (v27 eqs v28::xs) = getReport xs) ∧
         (∀xs v30 v29. getReport (v29 eqn v30::xs) = getReport xs) ∧
         (∀xs v32 v31. getReport (v31 lte v32::xs) = getReport xs) ∧
         ∀xs v34 v33. getReport (v33 lt v34::xs) = getReport xs

   [getReport_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀xs.
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                     xs)) ∧ (∀xs. P xs ⇒ P (TT::xs)) ∧
           (∀xs. P xs ⇒ P (FF::xs)) ∧ (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL receiveMission)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL tentativePlan)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL completePlan)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL plIncomplete)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL invalidPlCommand)))::xs)) ∧
           (∀v151 xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                     xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [getTenativePlan_def]  Theorem

      |- (getTenativePlan [] = [NONE]) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says
               prop (SOME (SLc (PL tentativePlan)))::xs) =
            [SOME (SLc (PL tentativePlan))]) ∧
         (∀xs. getTenativePlan (TT::xs) = getTenativePlan xs) ∧
         (∀xs. getTenativePlan (FF::xs) = getTenativePlan xs) ∧
         (∀xs v2. getTenativePlan (prop v2::xs) = getTenativePlan xs) ∧
         (∀xs v3. getTenativePlan (notf v3::xs) = getTenativePlan xs) ∧
         (∀xs v5 v4.
            getTenativePlan (v4 andf v5::xs) = getTenativePlan xs) ∧
         (∀xs v7 v6.
            getTenativePlan (v6 orf v7::xs) = getTenativePlan xs) ∧
         (∀xs v9 v8.
            getTenativePlan (v8 impf v9::xs) = getTenativePlan xs) ∧
         (∀xs v11 v10.
            getTenativePlan (v10 eqf v11::xs) = getTenativePlan xs) ∧
         (∀xs v12.
            getTenativePlan (v12 says TT::xs) = getTenativePlan xs) ∧
         (∀xs v12.
            getTenativePlan (v12 says FF::xs) = getTenativePlan xs) ∧
         (∀xs v134.
            getTenativePlan (Name v134 says prop NONE::xs) =
            getTenativePlan xs) ∧
         (∀xs v146.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (ESCc v146))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says
               prop (SOME (SLc (PL receiveMission)))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                   xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says
               prop (SOME (SLc (PL completePlan)))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                   xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                   xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                   xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says
               prop (SOME (SLc (PL plIncomplete)))::xs) =
            getTenativePlan xs) ∧
         (∀xs.
            getTenativePlan
              (Name PlatoonLeader says
               prop (SOME (SLc (PL invalidPlCommand)))::xs) =
            getTenativePlan xs) ∧
         (∀xs v151.
            getTenativePlan
              (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::xs) =
            getTenativePlan xs) ∧
         (∀xs v144.
            getTenativePlan
              (Name PlatoonSergeant says prop (SOME v144)::xs) =
            getTenativePlan xs) ∧
         (∀xs v68 v136 v135.
            getTenativePlan (v135 meet v136 says prop v68::xs) =
            getTenativePlan xs) ∧
         (∀xs v68 v138 v137.
            getTenativePlan (v137 quoting v138 says prop v68::xs) =
            getTenativePlan xs) ∧
         (∀xs v69 v12.
            getTenativePlan (v12 says notf v69::xs) = getTenativePlan xs) ∧
         (∀xs v71 v70 v12.
            getTenativePlan (v12 says (v70 andf v71)::xs) =
            getTenativePlan xs) ∧
         (∀xs v73 v72 v12.
            getTenativePlan (v12 says (v72 orf v73)::xs) =
            getTenativePlan xs) ∧
         (∀xs v75 v74 v12.
            getTenativePlan (v12 says (v74 impf v75)::xs) =
            getTenativePlan xs) ∧
         (∀xs v77 v76 v12.
            getTenativePlan (v12 says (v76 eqf v77)::xs) =
            getTenativePlan xs) ∧
         (∀xs v79 v78 v12.
            getTenativePlan (v12 says v78 says v79::xs) =
            getTenativePlan xs) ∧
         (∀xs v81 v80 v12.
            getTenativePlan (v12 says v80 speaks_for v81::xs) =
            getTenativePlan xs) ∧
         (∀xs v83 v82 v12.
            getTenativePlan (v12 says v82 controls v83::xs) =
            getTenativePlan xs) ∧
         (∀xs v86 v85 v84 v12.
            getTenativePlan (v12 says reps v84 v85 v86::xs) =
            getTenativePlan xs) ∧
         (∀xs v88 v87 v12.
            getTenativePlan (v12 says v87 domi v88::xs) =
            getTenativePlan xs) ∧
         (∀xs v90 v89 v12.
            getTenativePlan (v12 says v89 eqi v90::xs) =
            getTenativePlan xs) ∧
         (∀xs v92 v91 v12.
            getTenativePlan (v12 says v91 doms v92::xs) =
            getTenativePlan xs) ∧
         (∀xs v94 v93 v12.
            getTenativePlan (v12 says v93 eqs v94::xs) =
            getTenativePlan xs) ∧
         (∀xs v96 v95 v12.
            getTenativePlan (v12 says v95 eqn v96::xs) =
            getTenativePlan xs) ∧
         (∀xs v98 v97 v12.
            getTenativePlan (v12 says v97 lte v98::xs) =
            getTenativePlan xs) ∧
         (∀xs v99 v12 v100.
            getTenativePlan (v12 says v99 lt v100::xs) =
            getTenativePlan xs) ∧
         (∀xs v15 v14.
            getTenativePlan (v14 speaks_for v15::xs) =
            getTenativePlan xs) ∧
         (∀xs v17 v16.
            getTenativePlan (v16 controls v17::xs) = getTenativePlan xs) ∧
         (∀xs v20 v19 v18.
            getTenativePlan (reps v18 v19 v20::xs) = getTenativePlan xs) ∧
         (∀xs v22 v21.
            getTenativePlan (v21 domi v22::xs) = getTenativePlan xs) ∧
         (∀xs v24 v23.
            getTenativePlan (v23 eqi v24::xs) = getTenativePlan xs) ∧
         (∀xs v26 v25.
            getTenativePlan (v25 doms v26::xs) = getTenativePlan xs) ∧
         (∀xs v28 v27.
            getTenativePlan (v27 eqs v28::xs) = getTenativePlan xs) ∧
         (∀xs v30 v29.
            getTenativePlan (v29 eqn v30::xs) = getTenativePlan xs) ∧
         (∀xs v32 v31.
            getTenativePlan (v31 lte v32::xs) = getTenativePlan xs) ∧
         ∀xs v34 v33. getTenativePlan (v33 lt v34::xs) = getTenativePlan xs

   [getTenativePlan_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀xs.
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL tentativePlan)))::xs)) ∧
           (∀xs. P xs ⇒ P (TT::xs)) ∧ (∀xs. P xs ⇒ P (FF::xs)) ∧
           (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name PlatoonLeader says prop (SOME (ESCc v146))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL receiveMission)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL warno)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL recon)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL report1)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL completePlan)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL opoid)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL supervise)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL report2)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PL complete)))::
                     xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL plIncomplete)))::xs)) ∧
           (∀xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (SLc (PL invalidPlCommand)))::xs)) ∧
           (∀v151 xs.
              P xs ⇒
              P
                (Name PlatoonLeader says prop (SOME (SLc (PSG v151)))::
                     xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v


*)
end
