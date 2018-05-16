signature ssmTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val TR_def : thm
    val authenticationTest_def : thm
    val commandList_def : thm
    val configuration_TY_DEF : thm
    val configuration_case_def : thm
    val configuration_size_def : thm
    val extractCommand_primitive_def : thm
    val extractInput_primitive_def : thm
    val extractPropCommand_primitive_def : thm
    val inputList_def : thm
    val propCommandList_def : thm
    val trType_TY_DEF : thm
    val trType_case_def : thm
    val trType_size_def : thm

  (*  Theorems  *)
    val CFGInterpret_def : thm
    val CFGInterpret_ind : thm
    val TR_EQ_rules_thm : thm
    val TR_cases : thm
    val TR_discard_cmd_rule : thm
    val TR_exec_cmd_rule : thm
    val TR_ind : thm
    val TR_rules : thm
    val TR_strongind : thm
    val TR_trap_cmd_rule : thm
    val TRrule0 : thm
    val TRrule1 : thm
    val configuration_11 : thm
    val configuration_Axiom : thm
    val configuration_case_cong : thm
    val configuration_induction : thm
    val configuration_nchotomy : thm
    val configuration_one_one : thm
    val datatype_configuration : thm
    val datatype_trType : thm
    val extractCommand_def : thm
    val extractCommand_ind : thm
    val extractInput_def : thm
    val extractInput_ind : thm
    val extractPropCommand_def : thm
    val extractPropCommand_ind : thm
    val trType_11 : thm
    val trType_Axiom : thm
    val trType_case_cong : thm
    val trType_distinct : thm
    val trType_distinct_clauses : thm
    val trType_induction : thm
    val trType_nchotomy : thm
    val trType_one_one : thm

  val ssm_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [satList] Parent theory of "ssm"

   [TR_def]  Definition

      |- TR =
         (λa0 a1 a2 a3.
            ∀TR'.
              (∀a0 a1 a2 a3.
                 (∃elementTest NS M Oi Os Out s context stateInterp x ins
                     outs.
                    (a0 = (M,Oi,Os)) ∧ (a1 = exec (inputList x)) ∧
                    (a2 =
                     CFG elementTest stateInterp context (x::ins) s outs) ∧
                    (a3 =
                     CFG elementTest stateInterp context ins
                       (NS s (exec (inputList x)))
                       (Out s (exec (inputList x))::outs)) ∧
                    authenticationTest elementTest x ∧
                    CFGInterpret (M,Oi,Os)
                      (CFG elementTest stateInterp context (x::ins) s
                         outs)) ∨
                 (∃elementTest NS M Oi Os Out s context stateInterp x ins
                     outs.
                    (a0 = (M,Oi,Os)) ∧ (a1 = trap (inputList x)) ∧
                    (a2 =
                     CFG elementTest stateInterp context (x::ins) s outs) ∧
                    (a3 =
                     CFG elementTest stateInterp context ins
                       (NS s (trap (inputList x)))
                       (Out s (trap (inputList x))::outs)) ∧
                    authenticationTest elementTest x ∧
                    CFGInterpret (M,Oi,Os)
                      (CFG elementTest stateInterp context (x::ins) s
                         outs)) ∨
                 (∃elementTest NS M Oi Os Out s context stateInterp x ins
                     outs.
                    (a0 = (M,Oi,Os)) ∧ (a1 = discard (inputList x)) ∧
                    (a2 =
                     CFG elementTest stateInterp context (x::ins) s outs) ∧
                    (a3 =
                     CFG elementTest stateInterp context ins
                       (NS s (discard (inputList x)))
                       (Out s (discard (inputList x))::outs)) ∧
                    ¬authenticationTest elementTest x) ⇒
                 TR' a0 a1 a2 a3) ⇒
              TR' a0 a1 a2 a3)

   [authenticationTest_def]  Definition

      |- ∀elementTest x.
           authenticationTest elementTest x ⇔
           FOLDR (λp q. p ∧ q) T (MAP elementTest x)

   [commandList_def]  Definition

      |- ∀x. commandList x = MAP extractCommand x

   [configuration_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'configuration' .
                  (∀a0'.
                     (∃a0 a1 a2 a3 a4 a5.
                        a0' =
                        (λa0 a1 a2 a3 a4 a5.
                           ind_type$CONSTR 0 (a0,a1,a2,a3,a4,a5)
                             (λn. ind_type$BOTTOM)) a0 a1 a2 a3 a4 a5) ⇒
                     'configuration' a0') ⇒
                  'configuration' a0') rep

   [configuration_case_def]  Definition

      |- ∀a0 a1 a2 a3 a4 a5 f.
           configuration_CASE (CFG a0 a1 a2 a3 a4 a5) f =
           f a0 a1 a2 a3 a4 a5

   [configuration_size_def]  Definition

      |- ∀f f1 f2 f3 f4 f5 a0 a1 a2 a3 a4 a5.
           configuration_size f f1 f2 f3 f4 f5 (CFG a0 a1 a2 a3 a4 a5) =
           1 +
           (list_size (list_size (Form_size (option_size f) f4 f1 f2)) a3 +
            (f5 a4 + list_size f3 a5))

   [extractCommand_primitive_def]  Definition

      |- extractCommand =
         WFREC (@R. WF R)
           (λextractCommand a.
              case a of
                TT => ARB
              | FF => ARB
              | prop v => ARB
              | notf v2 => ARB
              | v4 andf v5 => ARB
              | v8 orf v9 => ARB
              | v12 impf v13 => ARB
              | v16 eqf v17 => ARB
              | P says TT => ARB
              | P says FF => ARB
              | P says prop NONE => ARB
              | P says prop (SOME cmd) => I cmd
              | P says notf v65 => ARB
              | P says (v67 andf v68) => ARB
              | P says (v71 orf v72) => ARB
              | P says (v75 impf v76) => ARB
              | P says (v79 eqf v80) => ARB
              | P says v83 says v84 => ARB
              | P says v87 speaks_for v88 => ARB
              | P says v91 controls v92 => ARB
              | P says reps v95 v96 v97 => ARB
              | P says v101 domi v102 => ARB
              | P says v105 eqi v106 => ARB
              | P says v109 doms v110 => ARB
              | P says v113 eqs v114 => ARB
              | P says v117 eqn v118 => ARB
              | P says v121 lte v122 => ARB
              | P says v125 lt v126 => ARB
              | v22 speaks_for v23 => ARB
              | v26 controls v27 => ARB
              | reps v30 v31 v32 => ARB
              | v36 domi v37 => ARB
              | v40 eqi v41 => ARB
              | v44 doms v45 => ARB
              | v48 eqs v49 => ARB
              | v52 eqn v53 => ARB
              | v56 lte v57 => ARB
              | v60 lt v61 => ARB)

   [extractInput_primitive_def]  Definition

      |- extractInput =
         WFREC (@R. WF R)
           (λextractInput a.
              case a of
                TT => ARB
              | FF => ARB
              | prop v => ARB
              | notf v2 => ARB
              | v4 andf v5 => ARB
              | v8 orf v9 => ARB
              | v12 impf v13 => ARB
              | v16 eqf v17 => ARB
              | P says TT => ARB
              | P says FF => ARB
              | P says prop x => I x
              | P says notf v65 => ARB
              | P says (v67 andf v68) => ARB
              | P says (v71 orf v72) => ARB
              | P says (v75 impf v76) => ARB
              | P says (v79 eqf v80) => ARB
              | P says v83 says v84 => ARB
              | P says v87 speaks_for v88 => ARB
              | P says v91 controls v92 => ARB
              | P says reps v95 v96 v97 => ARB
              | P says v101 domi v102 => ARB
              | P says v105 eqi v106 => ARB
              | P says v109 doms v110 => ARB
              | P says v113 eqs v114 => ARB
              | P says v117 eqn v118 => ARB
              | P says v121 lte v122 => ARB
              | P says v125 lt v126 => ARB
              | v22 speaks_for v23 => ARB
              | v26 controls v27 => ARB
              | reps v30 v31 v32 => ARB
              | v36 domi v37 => ARB
              | v40 eqi v41 => ARB
              | v44 doms v45 => ARB
              | v48 eqs v49 => ARB
              | v52 eqn v53 => ARB
              | v56 lte v57 => ARB
              | v60 lt v61 => ARB)

   [extractPropCommand_primitive_def]  Definition

      |- extractPropCommand =
         WFREC (@R. WF R)
           (λextractPropCommand a.
              case a of
                TT => ARB
              | FF => ARB
              | prop v => ARB
              | notf v2 => ARB
              | v4 andf v5 => ARB
              | v8 orf v9 => ARB
              | v12 impf v13 => ARB
              | v16 eqf v17 => ARB
              | P says TT => ARB
              | P says FF => ARB
              | P says prop NONE => ARB
              | P says prop (SOME cmd) => I (prop (SOME cmd))
              | P says notf v65 => ARB
              | P says (v67 andf v68) => ARB
              | P says (v71 orf v72) => ARB
              | P says (v75 impf v76) => ARB
              | P says (v79 eqf v80) => ARB
              | P says v83 says v84 => ARB
              | P says v87 speaks_for v88 => ARB
              | P says v91 controls v92 => ARB
              | P says reps v95 v96 v97 => ARB
              | P says v101 domi v102 => ARB
              | P says v105 eqi v106 => ARB
              | P says v109 doms v110 => ARB
              | P says v113 eqs v114 => ARB
              | P says v117 eqn v118 => ARB
              | P says v121 lte v122 => ARB
              | P says v125 lt v126 => ARB
              | v22 speaks_for v23 => ARB
              | v26 controls v27 => ARB
              | reps v30 v31 v32 => ARB
              | v36 domi v37 => ARB
              | v40 eqi v41 => ARB
              | v44 doms v45 => ARB
              | v48 eqs v49 => ARB
              | v52 eqn v53 => ARB
              | v56 lte v57 => ARB
              | v60 lt v61 => ARB)

   [inputList_def]  Definition

      |- ∀xs. inputList xs = MAP extractInput xs

   [propCommandList_def]  Definition

      |- ∀x. propCommandList x = MAP extractPropCommand x

   [trType_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'trType' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) a (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) a
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'trType' a0) ⇒
                  'trType' a0) rep

   [trType_case_def]  Definition

      |- (∀a f f1 f2. trType_CASE (discard a) f f1 f2 = f a) ∧
         (∀a f f1 f2. trType_CASE (trap a) f f1 f2 = f1 a) ∧
         ∀a f f1 f2. trType_CASE (exec a) f f1 f2 = f2 a

   [trType_size_def]  Definition

      |- (∀f a. trType_size f (discard a) = 1 + f a) ∧
         (∀f a. trType_size f (trap a) = 1 + f a) ∧
         ∀f a. trType_size f (exec a) = 1 + f a

   [CFGInterpret_def]  Theorem

      |- CFGInterpret (M,Oi,Os)
           (CFG elementTest stateInterp context (x::ins) state outStream) ⇔
         (M,Oi,Os) satList context x ∧ (M,Oi,Os) satList x ∧
         (M,Oi,Os) satList stateInterp state x

   [CFGInterpret_ind]  Theorem

      |- ∀P.
           (∀M Oi Os elementTest stateInterp context x ins state outStream.
              P (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) state
                   outStream)) ∧
           (∀v15 v10 v11 v12 v13 v14. P v15 (CFG v10 v11 v12 [] v13 v14)) ⇒
           ∀v v1 v2 v3. P (v,v1,v2) v3

   [TR_EQ_rules_thm]  Theorem

      |- (TR (M,Oi,Os) (exec (inputList x))
            (CFG elementTest stateInterp context (x::ins) s outs)
            (CFG elementTest stateInterp context ins
               (NS s (exec (inputList x)))
               (Out s (exec (inputList x))::outs)) ⇔
          authenticationTest elementTest x ∧
          CFGInterpret (M,Oi,Os)
            (CFG elementTest stateInterp context (x::ins) s outs)) ∧
         (TR (M,Oi,Os) (trap (inputList x))
            (CFG elementTest stateInterp context (x::ins) s outs)
            (CFG elementTest stateInterp context ins
               (NS s (trap (inputList x)))
               (Out s (trap (inputList x))::outs)) ⇔
          authenticationTest elementTest x ∧
          CFGInterpret (M,Oi,Os)
            (CFG elementTest stateInterp context (x::ins) s outs)) ∧
         (TR (M,Oi,Os) (discard (inputList x))
            (CFG elementTest stateInterp context (x::ins) s outs)
            (CFG elementTest stateInterp context ins
               (NS s (discard (inputList x)))
               (Out s (discard (inputList x))::outs)) ⇔
          ¬authenticationTest elementTest x)

   [TR_cases]  Theorem

      |- ∀a0 a1 a2 a3.
           TR a0 a1 a2 a3 ⇔
           (∃elementTest NS M Oi Os Out s context stateInterp x ins outs.
              (a0 = (M,Oi,Os)) ∧ (a1 = exec (inputList x)) ∧
              (a2 = CFG elementTest stateInterp context (x::ins) s outs) ∧
              (a3 =
               CFG elementTest stateInterp context ins
                 (NS s (exec (inputList x)))
                 (Out s (exec (inputList x))::outs)) ∧
              authenticationTest elementTest x ∧
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs)) ∨
           (∃elementTest NS M Oi Os Out s context stateInterp x ins outs.
              (a0 = (M,Oi,Os)) ∧ (a1 = trap (inputList x)) ∧
              (a2 = CFG elementTest stateInterp context (x::ins) s outs) ∧
              (a3 =
               CFG elementTest stateInterp context ins
                 (NS s (trap (inputList x)))
                 (Out s (trap (inputList x))::outs)) ∧
              authenticationTest elementTest x ∧
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs)) ∨
           ∃elementTest NS M Oi Os Out s context stateInterp x ins outs.
             (a0 = (M,Oi,Os)) ∧ (a1 = discard (inputList x)) ∧
             (a2 = CFG elementTest stateInterp context (x::ins) s outs) ∧
             (a3 =
              CFG elementTest stateInterp context ins
                (NS s (discard (inputList x)))
                (Out s (discard (inputList x))::outs)) ∧
             ¬authenticationTest elementTest x

   [TR_discard_cmd_rule]  Theorem

      |- TR (M,Oi,Os) (discard (inputList x))
           (CFG elementTest stateInterp context (x::ins) s outs)
           (CFG elementTest stateInterp context ins
              (NS s (discard (inputList x)))
              (Out s (discard (inputList x))::outs)) ⇔
         ¬authenticationTest elementTest x

   [TR_exec_cmd_rule]  Theorem

      |- ∀elementTest context stateInterp x ins s outs.
           (∀M Oi Os.
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs) ⇒
              (M,Oi,Os) satList propCommandList x) ⇒
           ∀NS Out M Oi Os.
             TR (M,Oi,Os) (exec (inputList x))
               (CFG elementTest stateInterp context (x::ins) s outs)
               (CFG elementTest stateInterp context ins
                  (NS s (exec (inputList x)))
                  (Out s (exec (inputList x))::outs)) ⇔
             authenticationTest elementTest x ∧
             CFGInterpret (M,Oi,Os)
               (CFG elementTest stateInterp context (x::ins) s outs) ∧
             (M,Oi,Os) satList propCommandList x

   [TR_ind]  Theorem

      |- ∀TR'.
           (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
              authenticationTest elementTest x ∧
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs) ⇒
              TR' (M,Oi,Os) (exec (inputList x))
                (CFG elementTest stateInterp context (x::ins) s outs)
                (CFG elementTest stateInterp context ins
                   (NS s (exec (inputList x)))
                   (Out s (exec (inputList x))::outs))) ∧
           (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
              authenticationTest elementTest x ∧
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs) ⇒
              TR' (M,Oi,Os) (trap (inputList x))
                (CFG elementTest stateInterp context (x::ins) s outs)
                (CFG elementTest stateInterp context ins
                   (NS s (trap (inputList x)))
                   (Out s (trap (inputList x))::outs))) ∧
           (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
              ¬authenticationTest elementTest x ⇒
              TR' (M,Oi,Os) (discard (inputList x))
                (CFG elementTest stateInterp context (x::ins) s outs)
                (CFG elementTest stateInterp context ins
                   (NS s (discard (inputList x)))
                   (Out s (discard (inputList x))::outs))) ⇒
           ∀a0 a1 a2 a3. TR a0 a1 a2 a3 ⇒ TR' a0 a1 a2 a3

   [TR_rules]  Theorem

      |- (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
            authenticationTest elementTest x ∧
            CFGInterpret (M,Oi,Os)
              (CFG elementTest stateInterp context (x::ins) s outs) ⇒
            TR (M,Oi,Os) (exec (inputList x))
              (CFG elementTest stateInterp context (x::ins) s outs)
              (CFG elementTest stateInterp context ins
                 (NS s (exec (inputList x)))
                 (Out s (exec (inputList x))::outs))) ∧
         (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
            authenticationTest elementTest x ∧
            CFGInterpret (M,Oi,Os)
              (CFG elementTest stateInterp context (x::ins) s outs) ⇒
            TR (M,Oi,Os) (trap (inputList x))
              (CFG elementTest stateInterp context (x::ins) s outs)
              (CFG elementTest stateInterp context ins
                 (NS s (trap (inputList x)))
                 (Out s (trap (inputList x))::outs))) ∧
         ∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
           ¬authenticationTest elementTest x ⇒
           TR (M,Oi,Os) (discard (inputList x))
             (CFG elementTest stateInterp context (x::ins) s outs)
             (CFG elementTest stateInterp context ins
                (NS s (discard (inputList x)))
                (Out s (discard (inputList x))::outs))

   [TR_strongind]  Theorem

      |- ∀TR'.
           (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
              authenticationTest elementTest x ∧
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs) ⇒
              TR' (M,Oi,Os) (exec (inputList x))
                (CFG elementTest stateInterp context (x::ins) s outs)
                (CFG elementTest stateInterp context ins
                   (NS s (exec (inputList x)))
                   (Out s (exec (inputList x))::outs))) ∧
           (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
              authenticationTest elementTest x ∧
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs) ⇒
              TR' (M,Oi,Os) (trap (inputList x))
                (CFG elementTest stateInterp context (x::ins) s outs)
                (CFG elementTest stateInterp context ins
                   (NS s (trap (inputList x)))
                   (Out s (trap (inputList x))::outs))) ∧
           (∀elementTest NS M Oi Os Out s context stateInterp x ins outs.
              ¬authenticationTest elementTest x ⇒
              TR' (M,Oi,Os) (discard (inputList x))
                (CFG elementTest stateInterp context (x::ins) s outs)
                (CFG elementTest stateInterp context ins
                   (NS s (discard (inputList x)))
                   (Out s (discard (inputList x))::outs))) ⇒
           ∀a0 a1 a2 a3. TR a0 a1 a2 a3 ⇒ TR' a0 a1 a2 a3

   [TR_trap_cmd_rule]  Theorem

      |- ∀elementTest context stateInterp x ins s outs.
           (∀M Oi Os.
              CFGInterpret (M,Oi,Os)
                (CFG elementTest stateInterp context (x::ins) s outs) ⇒
              (M,Oi,Os) sat prop NONE) ⇒
           ∀NS Out M Oi Os.
             TR (M,Oi,Os) (trap (inputList x))
               (CFG elementTest stateInterp context (x::ins) s outs)
               (CFG elementTest stateInterp context ins
                  (NS s (trap (inputList x)))
                  (Out s (trap (inputList x))::outs)) ⇔
             authenticationTest elementTest x ∧
             CFGInterpret (M,Oi,Os)
               (CFG elementTest stateInterp context (x::ins) s outs) ∧
             (M,Oi,Os) sat prop NONE

   [TRrule0]  Theorem

      |- TR (M,Oi,Os) (exec (inputList x))
           (CFG elementTest stateInterp context (x::ins) s outs)
           (CFG elementTest stateInterp context ins
              (NS s (exec (inputList x)))
              (Out s (exec (inputList x))::outs)) ⇔
         authenticationTest elementTest x ∧
         CFGInterpret (M,Oi,Os)
           (CFG elementTest stateInterp context (x::ins) s outs)

   [TRrule1]  Theorem

      |- TR (M,Oi,Os) (trap (inputList x))
           (CFG elementTest stateInterp context (x::ins) s outs)
           (CFG elementTest stateInterp context ins
              (NS s (trap (inputList x)))
              (Out s (trap (inputList x))::outs)) ⇔
         authenticationTest elementTest x ∧
         CFGInterpret (M,Oi,Os)
           (CFG elementTest stateInterp context (x::ins) s outs)

   [configuration_11]  Theorem

      |- ∀a0 a1 a2 a3 a4 a5 a0' a1' a2' a3' a4' a5'.
           (CFG a0 a1 a2 a3 a4 a5 = CFG a0' a1' a2' a3' a4' a5') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2') ∧ (a3 = a3') ∧ (a4 = a4') ∧
           (a5 = a5')

   [configuration_Axiom]  Theorem

      |- ∀f.
           ∃fn.
             ∀a0 a1 a2 a3 a4 a5.
               fn (CFG a0 a1 a2 a3 a4 a5) = f a0 a1 a2 a3 a4 a5

   [configuration_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧
           (∀a0 a1 a2 a3 a4 a5.
              (M' = CFG a0 a1 a2 a3 a4 a5) ⇒
              (f a0 a1 a2 a3 a4 a5 = f' a0 a1 a2 a3 a4 a5)) ⇒
           (configuration_CASE M f = configuration_CASE M' f')

   [configuration_induction]  Theorem

      |- ∀P. (∀f f0 f1 l s l0. P (CFG f f0 f1 l s l0)) ⇒ ∀c. P c

   [configuration_nchotomy]  Theorem

      |- ∀cc. ∃f f0 f1 l s l0. cc = CFG f f0 f1 l s l0

   [configuration_one_one]  Theorem

      |- ∀a0 a1 a2 a3 a4 a5 a0' a1' a2' a3' a4' a5'.
           (CFG a0 a1 a2 a3 a4 a5 = CFG a0' a1' a2' a3' a4' a5') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2') ∧ (a3 = a3') ∧ (a4 = a4') ∧
           (a5 = a5')

   [datatype_configuration]  Theorem

      |- DATATYPE (configuration CFG)

   [datatype_trType]  Theorem

      |- DATATYPE (trType discard trap exec)

   [extractCommand_def]  Theorem

      |- extractCommand (P says prop (SOME cmd)) = cmd

   [extractCommand_ind]  Theorem

      |- ∀P'.
           (∀P cmd. P' (P says prop (SOME cmd))) ∧ P' TT ∧ P' FF ∧
           (∀v1. P' (prop v1)) ∧ (∀v3. P' (notf v3)) ∧
           (∀v6 v7. P' (v6 andf v7)) ∧ (∀v10 v11. P' (v10 orf v11)) ∧
           (∀v14 v15. P' (v14 impf v15)) ∧ (∀v18 v19. P' (v18 eqf v19)) ∧
           (∀v129. P' (v129 says TT)) ∧ (∀v130. P' (v130 says FF)) ∧
           (∀v132. P' (v132 says prop NONE)) ∧
           (∀v133 v66. P' (v133 says notf v66)) ∧
           (∀v134 v69 v70. P' (v134 says (v69 andf v70))) ∧
           (∀v135 v73 v74. P' (v135 says (v73 orf v74))) ∧
           (∀v136 v77 v78. P' (v136 says (v77 impf v78))) ∧
           (∀v137 v81 v82. P' (v137 says (v81 eqf v82))) ∧
           (∀v138 v85 v86. P' (v138 says v85 says v86)) ∧
           (∀v139 v89 v90. P' (v139 says v89 speaks_for v90)) ∧
           (∀v140 v93 v94. P' (v140 says v93 controls v94)) ∧
           (∀v141 v98 v99 v100. P' (v141 says reps v98 v99 v100)) ∧
           (∀v142 v103 v104. P' (v142 says v103 domi v104)) ∧
           (∀v143 v107 v108. P' (v143 says v107 eqi v108)) ∧
           (∀v144 v111 v112. P' (v144 says v111 doms v112)) ∧
           (∀v145 v115 v116. P' (v145 says v115 eqs v116)) ∧
           (∀v146 v119 v120. P' (v146 says v119 eqn v120)) ∧
           (∀v147 v123 v124. P' (v147 says v123 lte v124)) ∧
           (∀v148 v127 v128. P' (v148 says v127 lt v128)) ∧
           (∀v24 v25. P' (v24 speaks_for v25)) ∧
           (∀v28 v29. P' (v28 controls v29)) ∧
           (∀v33 v34 v35. P' (reps v33 v34 v35)) ∧
           (∀v38 v39. P' (v38 domi v39)) ∧ (∀v42 v43. P' (v42 eqi v43)) ∧
           (∀v46 v47. P' (v46 doms v47)) ∧ (∀v50 v51. P' (v50 eqs v51)) ∧
           (∀v54 v55. P' (v54 eqn v55)) ∧ (∀v58 v59. P' (v58 lte v59)) ∧
           (∀v62 v63. P' (v62 lt v63)) ⇒
           ∀v. P' v

   [extractInput_def]  Theorem

      |- extractInput (P says prop x) = x

   [extractInput_ind]  Theorem

      |- ∀P'.
           (∀P x. P' (P says prop x)) ∧ P' TT ∧ P' FF ∧
           (∀v1. P' (prop v1)) ∧ (∀v3. P' (notf v3)) ∧
           (∀v6 v7. P' (v6 andf v7)) ∧ (∀v10 v11. P' (v10 orf v11)) ∧
           (∀v14 v15. P' (v14 impf v15)) ∧ (∀v18 v19. P' (v18 eqf v19)) ∧
           (∀v129. P' (v129 says TT)) ∧ (∀v130. P' (v130 says FF)) ∧
           (∀v131 v66. P' (v131 says notf v66)) ∧
           (∀v132 v69 v70. P' (v132 says (v69 andf v70))) ∧
           (∀v133 v73 v74. P' (v133 says (v73 orf v74))) ∧
           (∀v134 v77 v78. P' (v134 says (v77 impf v78))) ∧
           (∀v135 v81 v82. P' (v135 says (v81 eqf v82))) ∧
           (∀v136 v85 v86. P' (v136 says v85 says v86)) ∧
           (∀v137 v89 v90. P' (v137 says v89 speaks_for v90)) ∧
           (∀v138 v93 v94. P' (v138 says v93 controls v94)) ∧
           (∀v139 v98 v99 v100. P' (v139 says reps v98 v99 v100)) ∧
           (∀v140 v103 v104. P' (v140 says v103 domi v104)) ∧
           (∀v141 v107 v108. P' (v141 says v107 eqi v108)) ∧
           (∀v142 v111 v112. P' (v142 says v111 doms v112)) ∧
           (∀v143 v115 v116. P' (v143 says v115 eqs v116)) ∧
           (∀v144 v119 v120. P' (v144 says v119 eqn v120)) ∧
           (∀v145 v123 v124. P' (v145 says v123 lte v124)) ∧
           (∀v146 v127 v128. P' (v146 says v127 lt v128)) ∧
           (∀v24 v25. P' (v24 speaks_for v25)) ∧
           (∀v28 v29. P' (v28 controls v29)) ∧
           (∀v33 v34 v35. P' (reps v33 v34 v35)) ∧
           (∀v38 v39. P' (v38 domi v39)) ∧ (∀v42 v43. P' (v42 eqi v43)) ∧
           (∀v46 v47. P' (v46 doms v47)) ∧ (∀v50 v51. P' (v50 eqs v51)) ∧
           (∀v54 v55. P' (v54 eqn v55)) ∧ (∀v58 v59. P' (v58 lte v59)) ∧
           (∀v62 v63. P' (v62 lt v63)) ⇒
           ∀v. P' v

   [extractPropCommand_def]  Theorem

      |- extractPropCommand (P says prop (SOME cmd)) = prop (SOME cmd)

   [extractPropCommand_ind]  Theorem

      |- ∀P'.
           (∀P cmd. P' (P says prop (SOME cmd))) ∧ P' TT ∧ P' FF ∧
           (∀v1. P' (prop v1)) ∧ (∀v3. P' (notf v3)) ∧
           (∀v6 v7. P' (v6 andf v7)) ∧ (∀v10 v11. P' (v10 orf v11)) ∧
           (∀v14 v15. P' (v14 impf v15)) ∧ (∀v18 v19. P' (v18 eqf v19)) ∧
           (∀v129. P' (v129 says TT)) ∧ (∀v130. P' (v130 says FF)) ∧
           (∀v132. P' (v132 says prop NONE)) ∧
           (∀v133 v66. P' (v133 says notf v66)) ∧
           (∀v134 v69 v70. P' (v134 says (v69 andf v70))) ∧
           (∀v135 v73 v74. P' (v135 says (v73 orf v74))) ∧
           (∀v136 v77 v78. P' (v136 says (v77 impf v78))) ∧
           (∀v137 v81 v82. P' (v137 says (v81 eqf v82))) ∧
           (∀v138 v85 v86. P' (v138 says v85 says v86)) ∧
           (∀v139 v89 v90. P' (v139 says v89 speaks_for v90)) ∧
           (∀v140 v93 v94. P' (v140 says v93 controls v94)) ∧
           (∀v141 v98 v99 v100. P' (v141 says reps v98 v99 v100)) ∧
           (∀v142 v103 v104. P' (v142 says v103 domi v104)) ∧
           (∀v143 v107 v108. P' (v143 says v107 eqi v108)) ∧
           (∀v144 v111 v112. P' (v144 says v111 doms v112)) ∧
           (∀v145 v115 v116. P' (v145 says v115 eqs v116)) ∧
           (∀v146 v119 v120. P' (v146 says v119 eqn v120)) ∧
           (∀v147 v123 v124. P' (v147 says v123 lte v124)) ∧
           (∀v148 v127 v128. P' (v148 says v127 lt v128)) ∧
           (∀v24 v25. P' (v24 speaks_for v25)) ∧
           (∀v28 v29. P' (v28 controls v29)) ∧
           (∀v33 v34 v35. P' (reps v33 v34 v35)) ∧
           (∀v38 v39. P' (v38 domi v39)) ∧ (∀v42 v43. P' (v42 eqi v43)) ∧
           (∀v46 v47. P' (v46 doms v47)) ∧ (∀v50 v51. P' (v50 eqs v51)) ∧
           (∀v54 v55. P' (v54 eqn v55)) ∧ (∀v58 v59. P' (v58 lte v59)) ∧
           (∀v62 v63. P' (v62 lt v63)) ⇒
           ∀v. P' v

   [trType_11]  Theorem

      |- (∀a a'. (discard a = discard a') ⇔ (a = a')) ∧
         (∀a a'. (trap a = trap a') ⇔ (a = a')) ∧
         ∀a a'. (exec a = exec a') ⇔ (a = a')

   [trType_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (discard a) = f0 a) ∧ (∀a. fn (trap a) = f1 a) ∧
             ∀a. fn (exec a) = f2 a

   [trType_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = discard a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = trap a) ⇒ (f1 a = f1' a)) ∧
           (∀a. (M' = exec a) ⇒ (f2 a = f2' a)) ⇒
           (trType_CASE M f f1 f2 = trType_CASE M' f' f1' f2')

   [trType_distinct]  Theorem

      |- (∀a' a. discard a ≠ trap a') ∧ (∀a' a. discard a ≠ exec a') ∧
         ∀a' a. trap a ≠ exec a'

   [trType_distinct_clauses]  Theorem

      |- (∀a' a. discard a ≠ trap a') ∧ (∀a' a. discard a ≠ exec a') ∧
         ∀a' a. trap a ≠ exec a'

   [trType_induction]  Theorem

      |- ∀P.
           (∀c. P (discard c)) ∧ (∀c. P (trap c)) ∧ (∀c. P (exec c)) ⇒
           ∀t. P t

   [trType_nchotomy]  Theorem

      |- ∀tt. (∃c. tt = discard c) ∨ (∃c. tt = trap c) ∨ ∃c. tt = exec c

   [trType_one_one]  Theorem

      |- (∀a a'. (discard a = discard a') ⇔ (a = a')) ∧
         (∀a a'. (trap a = trap a') ⇔ (a = a')) ∧
         ∀a a'. (exec a = exec a') ⇔ (a = a')


*)
end
