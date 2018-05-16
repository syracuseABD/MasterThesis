signature PBIntegratedDefTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val getOmniCommand_primitive_def : thm
    val secAuthorization_def : thm
    val secHelper_def : thm

  (*  Theorems  *)
    val getOmniCommand_def : thm
    val getOmniCommand_ind : thm
    val secContext_def : thm
    val secContext_ind : thm

  val PBIntegratedDef_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [PBTypeIntegrated] Parent theory of "PBIntegratedDef"

   [aclfoundation] Parent theory of "PBIntegratedDef"

   [getOmniCommand_primitive_def]  Definition

      |- getOmniCommand =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v13 v12 xs. R xs (v12 says v13::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v16 xs. R xs (v16 controls TT::xs)) ∧
              (∀v16 xs. R xs (v16 controls FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 controls prop NONE::xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonLeader controls prop (SOME v144)::xs)) ∧
              (∀v146 xs.
                 R xs (Name Omni controls prop (SOME (ESCc v146))::xs)) ∧
              (∀v150 xs.
                 R xs
                   (Name Omni controls prop (SOME (SLc (PL v150)))::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 controls prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 controls prop v68::xs)) ∧
              (∀v69 v16 xs. R xs (v16 controls notf v69::xs)) ∧
              (∀v71 v70 v16 xs. R xs (v16 controls (v70 andf v71)::xs)) ∧
              (∀v73 v72 v16 xs. R xs (v16 controls (v72 orf v73)::xs)) ∧
              (∀v75 v74 v16 xs. R xs (v16 controls (v74 impf v75)::xs)) ∧
              (∀v77 v76 v16 xs. R xs (v16 controls (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v16 xs. R xs (v16 controls v78 says v79::xs)) ∧
              (∀v81 v80 v16 xs.
                 R xs (v16 controls v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v16 xs. R xs (v16 controls v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v16 xs.
                 R xs (v16 controls reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v16 xs. R xs (v16 controls v87 domi v88::xs)) ∧
              (∀v90 v89 v16 xs. R xs (v16 controls v89 eqi v90::xs)) ∧
              (∀v92 v91 v16 xs. R xs (v16 controls v91 doms v92::xs)) ∧
              (∀v94 v93 v16 xs. R xs (v16 controls v93 eqs v94::xs)) ∧
              (∀v96 v95 v16 xs. R xs (v16 controls v95 eqn v96::xs)) ∧
              (∀v98 v97 v16 xs. R xs (v16 controls v97 lte v98::xs)) ∧
              (∀v100 v99 v16 xs. R xs (v16 controls v99 lt v100::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetOmniCommand a.
              case a of
                [] => I invalidOmniCommand
              | TT::xs => I (getOmniCommand xs)
              | FF::xs => I (getOmniCommand xs)
              | prop v35::xs => I (getOmniCommand xs)
              | notf v36::xs => I (getOmniCommand xs)
              | v37 andf v38::xs => I (getOmniCommand xs)
              | v39 orf v40::xs => I (getOmniCommand xs)
              | v41 impf v42::xs => I (getOmniCommand xs)
              | v43 eqf v44::xs => I (getOmniCommand xs)
              | v45 says v46::xs => I (getOmniCommand xs)
              | v47 speaks_for v48::xs => I (getOmniCommand xs)
              | v49 controls TT::xs => I (getOmniCommand xs)
              | v49 controls FF::xs => I (getOmniCommand xs)
              | Name v139 controls prop NONE::xs => I (getOmniCommand xs)
              | Name PlatoonLeader controls prop (SOME v145)::xs =>
                  I (getOmniCommand xs)
              | Name Omni controls prop (SOME (ESCc v148))::xs =>
                  I (getOmniCommand xs)
              | Name Omni controls prop (SOME (SLc (PL v152)))::xs =>
                  I (getOmniCommand xs)
              | Name Omni controls prop (SOME (SLc (OMNI cmd)))::xs =>
                  I cmd
              | v140 meet v141 controls prop v101::xs =>
                  I (getOmniCommand xs)
              | v142 quoting v143 controls prop v101::xs =>
                  I (getOmniCommand xs)
              | v49 controls notf v102::xs => I (getOmniCommand xs)
              | v49 controls (v103 andf v104)::xs => I (getOmniCommand xs)
              | v49 controls (v105 orf v106)::xs => I (getOmniCommand xs)
              | v49 controls (v107 impf v108)::xs => I (getOmniCommand xs)
              | v49 controls (v109 eqf v110)::xs => I (getOmniCommand xs)
              | v49 controls v111 says v112::xs => I (getOmniCommand xs)
              | v49 controls v113 speaks_for v114::xs =>
                  I (getOmniCommand xs)
              | v49 controls v115 controls v116::xs =>
                  I (getOmniCommand xs)
              | v49 controls reps v117 v118 v119::xs =>
                  I (getOmniCommand xs)
              | v49 controls v120 domi v121::xs => I (getOmniCommand xs)
              | v49 controls v122 eqi v123::xs => I (getOmniCommand xs)
              | v49 controls v124 doms v125::xs => I (getOmniCommand xs)
              | v49 controls v126 eqs v127::xs => I (getOmniCommand xs)
              | v49 controls v128 eqn v129::xs => I (getOmniCommand xs)
              | v49 controls v130 lte v131::xs => I (getOmniCommand xs)
              | v49 controls v132 lt v133::xs => I (getOmniCommand xs)
              | reps v51 v52 v53::xs => I (getOmniCommand xs)
              | v54 domi v55::xs => I (getOmniCommand xs)
              | v56 eqi v57::xs => I (getOmniCommand xs)
              | v58 doms v59::xs => I (getOmniCommand xs)
              | v60 eqs v61::xs => I (getOmniCommand xs)
              | v62 eqn v63::xs => I (getOmniCommand xs)
              | v64 lte v65::xs => I (getOmniCommand xs)
              | v66 lt v67::xs => I (getOmniCommand xs))

   [secAuthorization_def]  Definition

      |- ∀xs. secAuthorization xs = secHelper (getOmniCommand xs)

   [secHelper_def]  Definition

      |- ∀cmd.
           secHelper cmd =
           [Name Omni controls prop (SOME (SLc (OMNI cmd)))]

   [getOmniCommand_def]  Theorem

      |- (getOmniCommand [] = invalidOmniCommand) ∧
         (∀xs cmd.
            getOmniCommand
              (Name Omni controls prop (SOME (SLc (OMNI cmd)))::xs) =
            cmd) ∧ (∀xs. getOmniCommand (TT::xs) = getOmniCommand xs) ∧
         (∀xs. getOmniCommand (FF::xs) = getOmniCommand xs) ∧
         (∀xs v2. getOmniCommand (prop v2::xs) = getOmniCommand xs) ∧
         (∀xs v3. getOmniCommand (notf v3::xs) = getOmniCommand xs) ∧
         (∀xs v5 v4. getOmniCommand (v4 andf v5::xs) = getOmniCommand xs) ∧
         (∀xs v7 v6. getOmniCommand (v6 orf v7::xs) = getOmniCommand xs) ∧
         (∀xs v9 v8. getOmniCommand (v8 impf v9::xs) = getOmniCommand xs) ∧
         (∀xs v11 v10.
            getOmniCommand (v10 eqf v11::xs) = getOmniCommand xs) ∧
         (∀xs v13 v12.
            getOmniCommand (v12 says v13::xs) = getOmniCommand xs) ∧
         (∀xs v15 v14.
            getOmniCommand (v14 speaks_for v15::xs) = getOmniCommand xs) ∧
         (∀xs v16.
            getOmniCommand (v16 controls TT::xs) = getOmniCommand xs) ∧
         (∀xs v16.
            getOmniCommand (v16 controls FF::xs) = getOmniCommand xs) ∧
         (∀xs v134.
            getOmniCommand (Name v134 controls prop NONE::xs) =
            getOmniCommand xs) ∧
         (∀xs v144.
            getOmniCommand
              (Name PlatoonLeader controls prop (SOME v144)::xs) =
            getOmniCommand xs) ∧
         (∀xs v146.
            getOmniCommand
              (Name Omni controls prop (SOME (ESCc v146))::xs) =
            getOmniCommand xs) ∧
         (∀xs v150.
            getOmniCommand
              (Name Omni controls prop (SOME (SLc (PL v150)))::xs) =
            getOmniCommand xs) ∧
         (∀xs v68 v136 v135.
            getOmniCommand (v135 meet v136 controls prop v68::xs) =
            getOmniCommand xs) ∧
         (∀xs v68 v138 v137.
            getOmniCommand (v137 quoting v138 controls prop v68::xs) =
            getOmniCommand xs) ∧
         (∀xs v69 v16.
            getOmniCommand (v16 controls notf v69::xs) =
            getOmniCommand xs) ∧
         (∀xs v71 v70 v16.
            getOmniCommand (v16 controls (v70 andf v71)::xs) =
            getOmniCommand xs) ∧
         (∀xs v73 v72 v16.
            getOmniCommand (v16 controls (v72 orf v73)::xs) =
            getOmniCommand xs) ∧
         (∀xs v75 v74 v16.
            getOmniCommand (v16 controls (v74 impf v75)::xs) =
            getOmniCommand xs) ∧
         (∀xs v77 v76 v16.
            getOmniCommand (v16 controls (v76 eqf v77)::xs) =
            getOmniCommand xs) ∧
         (∀xs v79 v78 v16.
            getOmniCommand (v16 controls v78 says v79::xs) =
            getOmniCommand xs) ∧
         (∀xs v81 v80 v16.
            getOmniCommand (v16 controls v80 speaks_for v81::xs) =
            getOmniCommand xs) ∧
         (∀xs v83 v82 v16.
            getOmniCommand (v16 controls v82 controls v83::xs) =
            getOmniCommand xs) ∧
         (∀xs v86 v85 v84 v16.
            getOmniCommand (v16 controls reps v84 v85 v86::xs) =
            getOmniCommand xs) ∧
         (∀xs v88 v87 v16.
            getOmniCommand (v16 controls v87 domi v88::xs) =
            getOmniCommand xs) ∧
         (∀xs v90 v89 v16.
            getOmniCommand (v16 controls v89 eqi v90::xs) =
            getOmniCommand xs) ∧
         (∀xs v92 v91 v16.
            getOmniCommand (v16 controls v91 doms v92::xs) =
            getOmniCommand xs) ∧
         (∀xs v94 v93 v16.
            getOmniCommand (v16 controls v93 eqs v94::xs) =
            getOmniCommand xs) ∧
         (∀xs v96 v95 v16.
            getOmniCommand (v16 controls v95 eqn v96::xs) =
            getOmniCommand xs) ∧
         (∀xs v98 v97 v16.
            getOmniCommand (v16 controls v97 lte v98::xs) =
            getOmniCommand xs) ∧
         (∀xs v99 v16 v100.
            getOmniCommand (v16 controls v99 lt v100::xs) =
            getOmniCommand xs) ∧
         (∀xs v20 v19 v18.
            getOmniCommand (reps v18 v19 v20::xs) = getOmniCommand xs) ∧
         (∀xs v22 v21.
            getOmniCommand (v21 domi v22::xs) = getOmniCommand xs) ∧
         (∀xs v24 v23.
            getOmniCommand (v23 eqi v24::xs) = getOmniCommand xs) ∧
         (∀xs v26 v25.
            getOmniCommand (v25 doms v26::xs) = getOmniCommand xs) ∧
         (∀xs v28 v27.
            getOmniCommand (v27 eqs v28::xs) = getOmniCommand xs) ∧
         (∀xs v30 v29.
            getOmniCommand (v29 eqn v30::xs) = getOmniCommand xs) ∧
         (∀xs v32 v31.
            getOmniCommand (v31 lte v32::xs) = getOmniCommand xs) ∧
         ∀xs v34 v33. getOmniCommand (v33 lt v34::xs) = getOmniCommand xs

   [getOmniCommand_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs.
              P (Name Omni controls prop (SOME (SLc (OMNI cmd)))::xs)) ∧
           (∀xs. P xs ⇒ P (TT::xs)) ∧ (∀xs. P xs ⇒ P (FF::xs)) ∧
           (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 v13 xs. P xs ⇒ P (v12 says v13::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 xs. P xs ⇒ P (v16 controls TT::xs)) ∧
           (∀v16 xs. P xs ⇒ P (v16 controls FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 controls prop NONE::xs)) ∧
           (∀v144 xs.
              P xs ⇒
              P (Name PlatoonLeader controls prop (SOME v144)::xs)) ∧
           (∀v146 xs.
              P xs ⇒ P (Name Omni controls prop (SOME (ESCc v146))::xs)) ∧
           (∀v150 xs.
              P xs ⇒
              P (Name Omni controls prop (SOME (SLc (PL v150)))::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 controls prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 controls prop v68::xs)) ∧
           (∀v16 v69 xs. P xs ⇒ P (v16 controls notf v69::xs)) ∧
           (∀v16 v70 v71 xs. P xs ⇒ P (v16 controls (v70 andf v71)::xs)) ∧
           (∀v16 v72 v73 xs. P xs ⇒ P (v16 controls (v72 orf v73)::xs)) ∧
           (∀v16 v74 v75 xs. P xs ⇒ P (v16 controls (v74 impf v75)::xs)) ∧
           (∀v16 v76 v77 xs. P xs ⇒ P (v16 controls (v76 eqf v77)::xs)) ∧
           (∀v16 v78 v79 xs. P xs ⇒ P (v16 controls v78 says v79::xs)) ∧
           (∀v16 v80 v81 xs.
              P xs ⇒ P (v16 controls v80 speaks_for v81::xs)) ∧
           (∀v16 v82 v83 xs.
              P xs ⇒ P (v16 controls v82 controls v83::xs)) ∧
           (∀v16 v84 v85 v86 xs.
              P xs ⇒ P (v16 controls reps v84 v85 v86::xs)) ∧
           (∀v16 v87 v88 xs. P xs ⇒ P (v16 controls v87 domi v88::xs)) ∧
           (∀v16 v89 v90 xs. P xs ⇒ P (v16 controls v89 eqi v90::xs)) ∧
           (∀v16 v91 v92 xs. P xs ⇒ P (v16 controls v91 doms v92::xs)) ∧
           (∀v16 v93 v94 xs. P xs ⇒ P (v16 controls v93 eqs v94::xs)) ∧
           (∀v16 v95 v96 xs. P xs ⇒ P (v16 controls v95 eqn v96::xs)) ∧
           (∀v16 v97 v98 xs. P xs ⇒ P (v16 controls v97 lte v98::xs)) ∧
           (∀v16 v99 v100 xs. P xs ⇒ P (v16 controls v99 lt v100::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [secContext_def]  Theorem

      |- (secContext PLAN_PB (x::xs) =
          [prop (SOME (SLc (OMNI ssmPlanPBComplete))) impf
           Name PlatoonLeader controls prop (SOME (SLc (PL crossLD)))]) ∧
         (secContext MOVE_TO_ORP (x::xs) =
          [prop (SOME (SLc (OMNI ssmMoveToORPComplete))) impf
           Name PlatoonLeader controls
           prop (SOME (SLc (PL conductORP)))]) ∧
         (secContext CONDUCT_ORP (x::xs) =
          [prop (SOME (SLc (OMNI ssmConductORPComplete))) impf
           Name PlatoonLeader controls prop (SOME (SLc (PL moveToPB)))]) ∧
         (secContext MOVE_TO_PB (x::xs) =
          [prop (SOME (SLc (OMNI ssmMoveToPBComplete))) impf
           Name PlatoonLeader controls prop (SOME (SLc (PL conductPB)))]) ∧
         (secContext CONDUCT_PB (x::xs) =
          [prop (SOME (SLc (OMNI ssmConductPBComplete))) impf
           Name PlatoonLeader controls prop (SOME (SLc (PL completePB)))])

   [secContext_ind]  Theorem

      |- ∀P.
           (∀x xs. P PLAN_PB (x::xs)) ∧ (∀x xs. P MOVE_TO_ORP (x::xs)) ∧
           (∀x xs. P CONDUCT_ORP (x::xs)) ∧ (∀x xs. P MOVE_TO_PB (x::xs)) ∧
           (∀x xs. P CONDUCT_PB (x::xs)) ∧ (∀v4. P v4 []) ∧
           (∀v5 v6. P COMPLETE_PB (v5::v6)) ⇒
           ∀v v1. P v v1


*)
end
