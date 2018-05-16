signature aclfoundationTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val Form_TY_DEF : thm
    val Form_case_def : thm
    val Form_size_def : thm
    val IntLevel_TY_DEF : thm
    val IntLevel_case_def : thm
    val IntLevel_size_def : thm
    val Kripke_TY_DEF : thm
    val Kripke_case_def : thm
    val Kripke_size_def : thm
    val O1_def : thm
    val Princ_TY_DEF : thm
    val Princ_case_def : thm
    val Princ_size_def : thm
    val SecLevel_TY_DEF : thm
    val SecLevel_case_def : thm
    val SecLevel_size_def : thm
    val Subset_PO_def : thm
    val imapKS_def : thm
    val intpKS_def : thm
    val jKS_def : thm
    val one_weakorder_def : thm
    val po_TY_DEF : thm
    val po_tybij : thm
    val prod_PO_def : thm
    val smapKS_def : thm

  (*  Theorems  *)
    val EQ_WeakOrder : thm
    val Form_11 : thm
    val Form_Axiom : thm
    val Form_case_cong : thm
    val Form_distinct : thm
    val Form_induction : thm
    val Form_nchotomy : thm
    val IntLevel_11 : thm
    val IntLevel_Axiom : thm
    val IntLevel_case_cong : thm
    val IntLevel_distinct : thm
    val IntLevel_induction : thm
    val IntLevel_nchotomy : thm
    val KS_bij : thm
    val Kripke_11 : thm
    val Kripke_Axiom : thm
    val Kripke_case_cong : thm
    val Kripke_induction : thm
    val Kripke_nchotomy : thm
    val PO_repPO : thm
    val Princ_11 : thm
    val Princ_Axiom : thm
    val Princ_case_cong : thm
    val Princ_distinct : thm
    val Princ_induction : thm
    val Princ_nchotomy : thm
    val RPROD_THM : thm
    val SUBSET_WO : thm
    val SecLevel_11 : thm
    val SecLevel_Axiom : thm
    val SecLevel_case_cong : thm
    val SecLevel_distinct : thm
    val SecLevel_induction : thm
    val SecLevel_nchotomy : thm
    val WO_prod_WO : thm
    val WO_repPO : thm
    val WeakOrder_Exists : thm
    val absPO_fn_onto : thm
    val abs_po11 : thm
    val antisym_prod_antisym : thm
    val datatype_Form : thm
    val datatype_Kripke : thm
    val datatype_Princ : thm
    val one_weakorder_WO : thm
    val onto_po : thm
    val po_bij : thm
    val refl_prod_refl : thm
    val repPO_O1 : thm
    val repPO_Subset_PO : thm
    val repPO_iPO_partial_order : thm
    val repPO_prod_PO : thm
    val trans_prod_trans : thm

  val aclfoundation_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "aclfoundation"

   [patternMatches] Parent theory of "aclfoundation"

   [Form_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'Form' .
                  (∀a0'.
                     (a0' =
                      ind_type$CONSTR 0
                        (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                        (λn. ind_type$BOTTOM)) ∨
                     (a0' =
                      ind_type$CONSTR (SUC 0)
                        (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                        (λn. ind_type$BOTTOM)) ∨
                     (∃a.
                        a0' =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0))
                             (a,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        (a0' =
                         (λa.
                            ind_type$CONSTR (SUC (SUC (SUC 0)))
                              (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a (λn. ind_type$BOTTOM)))
                           a) ∧ 'Form' a) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC (SUC (SUC (SUC 0))))
                              (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'Form' a0 ∧ 'Form' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC (SUC (SUC (SUC (SUC 0)))))
                              (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'Form' a0 ∧ 'Form' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR
                              (SUC (SUC (SUC (SUC (SUC (SUC 0))))))
                              (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'Form' a0 ∧ 'Form' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR
                              (SUC (SUC (SUC (SUC (SUC (SUC (SUC 0)))))))
                              (ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'Form' a0 ∧ 'Form' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR
                              (SUC
                                 (SUC
                                    (SUC (SUC (SUC (SUC (SUC (SUC 0))))))))
                              (ARB,a0,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a1 (λn. ind_type$BOTTOM))) a0
                           a1) ∧ 'Form' a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC (SUC (SUC (SUC 0)))))))))
                             (ARB,a0,a1,ARB,ARB,ARB,ARB,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR
                              (SUC
                                 (SUC
                                    (SUC
                                       (SUC
                                          (SUC
                                             (SUC
                                                (SUC
                                                   (SUC
                                                      (SUC (SUC 0))))))))))
                              (ARB,a0,ARB,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a1 (λn. ind_type$BOTTOM))) a0
                           a1) ∧ 'Form' a1) ∨
                     (∃a0 a1 a2.
                        (a0' =
                         (λa0 a1 a2.
                            ind_type$CONSTR
                              (SUC
                                 (SUC
                                    (SUC
                                       (SUC
                                          (SUC
                                             (SUC
                                                (SUC
                                                   (SUC
                                                      (SUC
                                                         (SUC
                                                            (SUC
                                                               0)))))))))))
                              (ARB,a0,a1,ARB,ARB,ARB,ARB,ARB,ARB)
                              (ind_type$FCONS a2 (λn. ind_type$BOTTOM))) a0
                           a1 a2) ∧ 'Form' a2) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 0))))))))))))
                             (ARB,ARB,ARB,a0,a1,ARB,ARB,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 (SUC
                                                                    0)))))))))))))
                             (ARB,ARB,ARB,a0,a1,ARB,ARB,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 (SUC
                                                                    (SUC
                                                                       0))))))))))))))
                             (ARB,ARB,ARB,ARB,ARB,a0,a1,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 (SUC
                                                                    (SUC
                                                                       (SUC
                                                                          0)))))))))))))))
                             (ARB,ARB,ARB,ARB,ARB,a0,a1,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 (SUC
                                                                    (SUC
                                                                       (SUC
                                                                          (SUC
                                                                             0))))))))))))))))
                             (ARB,ARB,ARB,ARB,ARB,ARB,ARB,a0,a1)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 (SUC
                                                                    (SUC
                                                                       (SUC
                                                                          (SUC
                                                                             (SUC
                                                                                0)))))))))))))))))
                             (ARB,ARB,ARB,ARB,ARB,ARB,ARB,a0,a1)
                             (λn. ind_type$BOTTOM)) a0 a1) ∨
                     (∃a0 a1.
                        a0' =
                        (λa0 a1.
                           ind_type$CONSTR
                             (SUC
                                (SUC
                                   (SUC
                                      (SUC
                                         (SUC
                                            (SUC
                                               (SUC
                                                  (SUC
                                                     (SUC
                                                        (SUC
                                                           (SUC
                                                              (SUC
                                                                 (SUC
                                                                    (SUC
                                                                       (SUC
                                                                          (SUC
                                                                             (SUC
                                                                                (SUC
                                                                                   0))))))))))))))))))
                             (ARB,ARB,ARB,ARB,ARB,ARB,ARB,a0,a1)
                             (λn. ind_type$BOTTOM)) a0 a1) ⇒
                     'Form' a0') ⇒
                  'Form' a0') rep

   [Form_case_def]  Definition

      |- (∀v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16.
            Form_CASE TT v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13
              f14 f15 f16 =
            v) ∧
         (∀v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16.
            Form_CASE FF v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13
              f14 f15 f16 =
            v1) ∧
         (∀a v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16.
            Form_CASE (prop a) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f a) ∧
         (∀a v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16.
            Form_CASE (notf a) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f1 a) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 andf a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
              f11 f12 f13 f14 f15 f16 =
            f2 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 orf a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f3 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 impf a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
              f11 f12 f13 f14 f15 f16 =
            f4 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 eqf a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f5 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 says a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
              f11 f12 f13 f14 f15 f16 =
            f6 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 speaks_for a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9
              f10 f11 f12 f13 f14 f15 f16 =
            f7 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 controls a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9
              f10 f11 f12 f13 f14 f15 f16 =
            f8 a0 a1) ∧
         (∀a0 a1 a2 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14
             f15 f16.
            Form_CASE (reps a0 a1 a2) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
              f11 f12 f13 f14 f15 f16 =
            f9 a0 a1 a2) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 domi a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
              f11 f12 f13 f14 f15 f16 =
            f10 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 eqi a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f11 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 doms a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
              f11 f12 f13 f14 f15 f16 =
            f12 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 eqs a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f13 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 eqn a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f14 a0 a1) ∧
         (∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
             f16.
            Form_CASE (a0 lte a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
              f12 f13 f14 f15 f16 =
            f15 a0 a1) ∧
         ∀a0 a1 v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
            f16.
           Form_CASE (a0 lt a1) v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
             f12 f13 f14 f15 f16 =
           f16 a0 a1

   [Form_size_def]  Definition

      |- (∀f f1 f2 f3. Form_size f f1 f2 f3 TT = 0) ∧
         (∀f f1 f2 f3. Form_size f f1 f2 f3 FF = 0) ∧
         (∀f f1 f2 f3 a. Form_size f f1 f2 f3 (prop a) = 1 + f a) ∧
         (∀f f1 f2 f3 a.
            Form_size f f1 f2 f3 (notf a) = 1 + Form_size f f1 f2 f3 a) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 andf a1) =
            1 + (Form_size f f1 f2 f3 a0 + Form_size f f1 f2 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 orf a1) =
            1 + (Form_size f f1 f2 f3 a0 + Form_size f f1 f2 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 impf a1) =
            1 + (Form_size f f1 f2 f3 a0 + Form_size f f1 f2 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 eqf a1) =
            1 + (Form_size f f1 f2 f3 a0 + Form_size f f1 f2 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 says a1) =
            1 + (Princ_size f1 a0 + Form_size f f1 f2 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 speaks_for a1) =
            1 + (Princ_size f1 a0 + Princ_size f1 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 controls a1) =
            1 + (Princ_size f1 a0 + Form_size f f1 f2 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1 a2.
            Form_size f f1 f2 f3 (reps a0 a1 a2) =
            1 +
            (Princ_size f1 a0 +
             (Princ_size f1 a1 + Form_size f f1 f2 f3 a2))) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 domi a1) =
            1 + (IntLevel_size f1 f2 a0 + IntLevel_size f1 f2 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 eqi a1) =
            1 + (IntLevel_size f1 f2 a0 + IntLevel_size f1 f2 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 doms a1) =
            1 + (SecLevel_size f1 f3 a0 + SecLevel_size f1 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 eqs a1) =
            1 + (SecLevel_size f1 f3 a0 + SecLevel_size f1 f3 a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 eqn a1) = 1 + (a0 + a1)) ∧
         (∀f f1 f2 f3 a0 a1.
            Form_size f f1 f2 f3 (a0 lte a1) = 1 + (a0 + a1)) ∧
         ∀f f1 f2 f3 a0 a1. Form_size f f1 f2 f3 (a0 lt a1) = 1 + (a0 + a1)

   [IntLevel_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'IntLevel' .
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
                     'IntLevel' a0) ⇒
                  'IntLevel' a0) rep

   [IntLevel_case_def]  Definition

      |- (∀a f f1. IntLevel_CASE (iLab a) f f1 = f a) ∧
         ∀a f f1. IntLevel_CASE (il a) f f1 = f1 a

   [IntLevel_size_def]  Definition

      |- (∀f f1 a. IntLevel_size f f1 (iLab a) = 1 + f1 a) ∧
         ∀f f1 a. IntLevel_size f f1 (il a) = 1 + f a

   [Kripke_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'Kripke' .
                  (∀a0'.
                     (∃a0 a1 a2 a3.
                        a0' =
                        (λa0 a1 a2 a3.
                           ind_type$CONSTR 0 (a0,a1,a2,a3)
                             (λn. ind_type$BOTTOM)) a0 a1 a2 a3) ⇒
                     'Kripke' a0') ⇒
                  'Kripke' a0') rep

   [Kripke_case_def]  Definition

      |- ∀a0 a1 a2 a3 f. Kripke_CASE (KS a0 a1 a2 a3) f = f a0 a1 a2 a3

   [Kripke_size_def]  Definition

      |- ∀f f1 f2 f3 f4 a0 a1 a2 a3.
           Kripke_size f f1 f2 f3 f4 (KS a0 a1 a2 a3) = 1

   [O1_def]  Definition

      |- O1 = PO one_weakorder

   [Princ_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'Princ' .
                  (∀a0'.
                     (∃a.
                        a0' =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC 0) ARB
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'Princ' a0 ∧ 'Princ' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC (SUC 0)) ARB
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'Princ' a0 ∧ 'Princ' a1) ⇒
                     'Princ' a0') ⇒
                  'Princ' a0') rep

   [Princ_case_def]  Definition

      |- (∀a f f1 f2. Princ_CASE (Name a) f f1 f2 = f a) ∧
         (∀a0 a1 f f1 f2. Princ_CASE (a0 meet a1) f f1 f2 = f1 a0 a1) ∧
         ∀a0 a1 f f1 f2. Princ_CASE (a0 quoting a1) f f1 f2 = f2 a0 a1

   [Princ_size_def]  Definition

      |- (∀f a. Princ_size f (Name a) = 1 + f a) ∧
         (∀f a0 a1.
            Princ_size f (a0 meet a1) =
            1 + (Princ_size f a0 + Princ_size f a1)) ∧
         ∀f a0 a1.
           Princ_size f (a0 quoting a1) =
           1 + (Princ_size f a0 + Princ_size f a1)

   [SecLevel_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'SecLevel' .
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
                     'SecLevel' a0) ⇒
                  'SecLevel' a0) rep

   [SecLevel_case_def]  Definition

      |- (∀a f f1. SecLevel_CASE (sLab a) f f1 = f a) ∧
         ∀a f f1. SecLevel_CASE (sl a) f f1 = f1 a

   [SecLevel_size_def]  Definition

      |- (∀f f1 a. SecLevel_size f f1 (sLab a) = 1 + f1 a) ∧
         ∀f f1 a. SecLevel_size f f1 (sl a) = 1 + f a

   [Subset_PO_def]  Definition

      |- Subset_PO = PO $SUBSET

   [imapKS_def]  Definition

      |- ∀Intp Jfn ilmap slmap. imapKS (KS Intp Jfn ilmap slmap) = ilmap

   [intpKS_def]  Definition

      |- ∀Intp Jfn ilmap slmap. intpKS (KS Intp Jfn ilmap slmap) = Intp

   [jKS_def]  Definition

      |- ∀Intp Jfn ilmap slmap. jKS (KS Intp Jfn ilmap slmap) = Jfn

   [one_weakorder_def]  Definition

      |- ∀x y. one_weakorder x y ⇔ T

   [po_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION WeakOrder rep

   [po_tybij]  Definition

      |- (∀a. PO (repPO a) = a) ∧ ∀r. WeakOrder r ⇔ (repPO (PO r) = r)

   [prod_PO_def]  Definition

      |- ∀PO1 PO2. prod_PO PO1 PO2 = PO (RPROD (repPO PO1) (repPO PO2))

   [smapKS_def]  Definition

      |- ∀Intp Jfn ilmap slmap. smapKS (KS Intp Jfn ilmap slmap) = slmap

   [EQ_WeakOrder]  Theorem

      |- WeakOrder $=

   [Form_11]  Theorem

      |- (∀a a'. (prop a = prop a') ⇔ (a = a')) ∧
         (∀a a'. (notf a = notf a') ⇔ (a = a')) ∧
         (∀a0 a1 a0' a1'.
            (a0 andf a1 = a0' andf a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 orf a1 = a0' orf a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 impf a1 = a0' impf a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 eqf a1 = a0' eqf a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 says a1 = a0' says a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 speaks_for a1 = a0' speaks_for a1') ⇔
            (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 controls a1 = a0' controls a1') ⇔
            (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a2 a0' a1' a2'.
            (reps a0 a1 a2 = reps a0' a1' a2') ⇔
            (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2')) ∧
         (∀a0 a1 a0' a1'.
            (a0 domi a1 = a0' domi a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 eqi a1 = a0' eqi a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 doms a1 = a0' doms a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 eqs a1 = a0' eqs a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 eqn a1 = a0' eqn a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (a0 lte a1 = a0' lte a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         ∀a0 a1 a0' a1'. (a0 lt a1 = a0' lt a1') ⇔ (a0 = a0') ∧ (a1 = a1')

   [Form_Axiom]  Theorem

      |- ∀f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17
            f18.
           ∃fn.
             (fn TT = f0) ∧ (fn FF = f1) ∧ (∀a. fn (prop a) = f2 a) ∧
             (∀a. fn (notf a) = f3 a (fn a)) ∧
             (∀a0 a1. fn (a0 andf a1) = f4 a0 a1 (fn a0) (fn a1)) ∧
             (∀a0 a1. fn (a0 orf a1) = f5 a0 a1 (fn a0) (fn a1)) ∧
             (∀a0 a1. fn (a0 impf a1) = f6 a0 a1 (fn a0) (fn a1)) ∧
             (∀a0 a1. fn (a0 eqf a1) = f7 a0 a1 (fn a0) (fn a1)) ∧
             (∀a0 a1. fn (a0 says a1) = f8 a0 a1 (fn a1)) ∧
             (∀a0 a1. fn (a0 speaks_for a1) = f9 a0 a1) ∧
             (∀a0 a1. fn (a0 controls a1) = f10 a0 a1 (fn a1)) ∧
             (∀a0 a1 a2. fn (reps a0 a1 a2) = f11 a0 a1 a2 (fn a2)) ∧
             (∀a0 a1. fn (a0 domi a1) = f12 a0 a1) ∧
             (∀a0 a1. fn (a0 eqi a1) = f13 a0 a1) ∧
             (∀a0 a1. fn (a0 doms a1) = f14 a0 a1) ∧
             (∀a0 a1. fn (a0 eqs a1) = f15 a0 a1) ∧
             (∀a0 a1. fn (a0 eqn a1) = f16 a0 a1) ∧
             (∀a0 a1. fn (a0 lte a1) = f17 a0 a1) ∧
             ∀a0 a1. fn (a0 lt a1) = f18 a0 a1

   [Form_case_cong]  Theorem

      |- ∀M M' v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15
            f16.
           (M = M') ∧ ((M' = TT) ⇒ (v = v')) ∧ ((M' = FF) ⇒ (v1 = v1')) ∧
           (∀a. (M' = prop a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = notf a) ⇒ (f1 a = f1' a)) ∧
           (∀a0 a1. (M' = a0 andf a1) ⇒ (f2 a0 a1 = f2' a0 a1)) ∧
           (∀a0 a1. (M' = a0 orf a1) ⇒ (f3 a0 a1 = f3' a0 a1)) ∧
           (∀a0 a1. (M' = a0 impf a1) ⇒ (f4 a0 a1 = f4' a0 a1)) ∧
           (∀a0 a1. (M' = a0 eqf a1) ⇒ (f5 a0 a1 = f5' a0 a1)) ∧
           (∀a0 a1. (M' = a0 says a1) ⇒ (f6 a0 a1 = f6' a0 a1)) ∧
           (∀a0 a1. (M' = a0 speaks_for a1) ⇒ (f7 a0 a1 = f7' a0 a1)) ∧
           (∀a0 a1. (M' = a0 controls a1) ⇒ (f8 a0 a1 = f8' a0 a1)) ∧
           (∀a0 a1 a2.
              (M' = reps a0 a1 a2) ⇒ (f9 a0 a1 a2 = f9' a0 a1 a2)) ∧
           (∀a0 a1. (M' = a0 domi a1) ⇒ (f10 a0 a1 = f10' a0 a1)) ∧
           (∀a0 a1. (M' = a0 eqi a1) ⇒ (f11 a0 a1 = f11' a0 a1)) ∧
           (∀a0 a1. (M' = a0 doms a1) ⇒ (f12 a0 a1 = f12' a0 a1)) ∧
           (∀a0 a1. (M' = a0 eqs a1) ⇒ (f13 a0 a1 = f13' a0 a1)) ∧
           (∀a0 a1. (M' = a0 eqn a1) ⇒ (f14 a0 a1 = f14' a0 a1)) ∧
           (∀a0 a1. (M' = a0 lte a1) ⇒ (f15 a0 a1 = f15' a0 a1)) ∧
           (∀a0 a1. (M' = a0 lt a1) ⇒ (f16 a0 a1 = f16' a0 a1)) ⇒
           (Form_CASE M v v1 f f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13
              f14 f15 f16 =
            Form_CASE M' v' v1' f' f1' f2' f3' f4' f5' f6' f7' f8' f9' f10'
              f11' f12' f13' f14' f15' f16')

   [Form_distinct]  Theorem

      |- TT ≠ FF ∧ (∀a. TT ≠ prop a) ∧ (∀a. TT ≠ notf a) ∧
         (∀a1 a0. TT ≠ a0 andf a1) ∧ (∀a1 a0. TT ≠ a0 orf a1) ∧
         (∀a1 a0. TT ≠ a0 impf a1) ∧ (∀a1 a0. TT ≠ a0 eqf a1) ∧
         (∀a1 a0. TT ≠ a0 says a1) ∧ (∀a1 a0. TT ≠ a0 speaks_for a1) ∧
         (∀a1 a0. TT ≠ a0 controls a1) ∧ (∀a2 a1 a0. TT ≠ reps a0 a1 a2) ∧
         (∀a1 a0. TT ≠ a0 domi a1) ∧ (∀a1 a0. TT ≠ a0 eqi a1) ∧
         (∀a1 a0. TT ≠ a0 doms a1) ∧ (∀a1 a0. TT ≠ a0 eqs a1) ∧
         (∀a1 a0. TT ≠ a0 eqn a1) ∧ (∀a1 a0. TT ≠ a0 lte a1) ∧
         (∀a1 a0. TT ≠ a0 lt a1) ∧ (∀a. FF ≠ prop a) ∧ (∀a. FF ≠ notf a) ∧
         (∀a1 a0. FF ≠ a0 andf a1) ∧ (∀a1 a0. FF ≠ a0 orf a1) ∧
         (∀a1 a0. FF ≠ a0 impf a1) ∧ (∀a1 a0. FF ≠ a0 eqf a1) ∧
         (∀a1 a0. FF ≠ a0 says a1) ∧ (∀a1 a0. FF ≠ a0 speaks_for a1) ∧
         (∀a1 a0. FF ≠ a0 controls a1) ∧ (∀a2 a1 a0. FF ≠ reps a0 a1 a2) ∧
         (∀a1 a0. FF ≠ a0 domi a1) ∧ (∀a1 a0. FF ≠ a0 eqi a1) ∧
         (∀a1 a0. FF ≠ a0 doms a1) ∧ (∀a1 a0. FF ≠ a0 eqs a1) ∧
         (∀a1 a0. FF ≠ a0 eqn a1) ∧ (∀a1 a0. FF ≠ a0 lte a1) ∧
         (∀a1 a0. FF ≠ a0 lt a1) ∧ (∀a' a. prop a ≠ notf a') ∧
         (∀a1 a0 a. prop a ≠ a0 andf a1) ∧ (∀a1 a0 a. prop a ≠ a0 orf a1) ∧
         (∀a1 a0 a. prop a ≠ a0 impf a1) ∧ (∀a1 a0 a. prop a ≠ a0 eqf a1) ∧
         (∀a1 a0 a. prop a ≠ a0 says a1) ∧
         (∀a1 a0 a. prop a ≠ a0 speaks_for a1) ∧
         (∀a1 a0 a. prop a ≠ a0 controls a1) ∧
         (∀a2 a1 a0 a. prop a ≠ reps a0 a1 a2) ∧
         (∀a1 a0 a. prop a ≠ a0 domi a1) ∧ (∀a1 a0 a. prop a ≠ a0 eqi a1) ∧
         (∀a1 a0 a. prop a ≠ a0 doms a1) ∧ (∀a1 a0 a. prop a ≠ a0 eqs a1) ∧
         (∀a1 a0 a. prop a ≠ a0 eqn a1) ∧ (∀a1 a0 a. prop a ≠ a0 lte a1) ∧
         (∀a1 a0 a. prop a ≠ a0 lt a1) ∧ (∀a1 a0 a. notf a ≠ a0 andf a1) ∧
         (∀a1 a0 a. notf a ≠ a0 orf a1) ∧ (∀a1 a0 a. notf a ≠ a0 impf a1) ∧
         (∀a1 a0 a. notf a ≠ a0 eqf a1) ∧ (∀a1 a0 a. notf a ≠ a0 says a1) ∧
         (∀a1 a0 a. notf a ≠ a0 speaks_for a1) ∧
         (∀a1 a0 a. notf a ≠ a0 controls a1) ∧
         (∀a2 a1 a0 a. notf a ≠ reps a0 a1 a2) ∧
         (∀a1 a0 a. notf a ≠ a0 domi a1) ∧ (∀a1 a0 a. notf a ≠ a0 eqi a1) ∧
         (∀a1 a0 a. notf a ≠ a0 doms a1) ∧ (∀a1 a0 a. notf a ≠ a0 eqs a1) ∧
         (∀a1 a0 a. notf a ≠ a0 eqn a1) ∧ (∀a1 a0 a. notf a ≠ a0 lte a1) ∧
         (∀a1 a0 a. notf a ≠ a0 lt a1) ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' orf a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' impf a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' eqf a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' says a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' speaks_for a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' controls a1') ∧
         (∀a2 a1' a1 a0' a0. a0 andf a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 andf a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' impf a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' eqf a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' says a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' speaks_for a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' controls a1') ∧
         (∀a2 a1' a1 a0' a0. a0 orf a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 orf a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' eqf a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' says a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' speaks_for a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' controls a1') ∧
         (∀a2 a1' a1 a0' a0. a0 impf a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 impf a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' says a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' speaks_for a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' controls a1') ∧
         (∀a2 a1' a1 a0' a0. a0 eqf a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 eqf a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' speaks_for a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' controls a1') ∧
         (∀a2 a1' a1 a0' a0. a0 says a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 says a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' controls a1') ∧
         (∀a2 a1' a1 a0' a0. a0 speaks_for a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 speaks_for a1 ≠ a0' lt a1') ∧
         (∀a2 a1' a1 a0' a0. a0 controls a1 ≠ reps a0' a1' a2) ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' domi a1') ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 controls a1 ≠ a0' lt a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' domi a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' eqi a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' doms a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' eqs a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' eqn a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' lte a1') ∧
         (∀a2 a1' a1 a0' a0. reps a0 a1 a2 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 domi a1 ≠ a0' eqi a1') ∧
         (∀a1' a1 a0' a0. a0 domi a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 domi a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 domi a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 domi a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 domi a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 eqi a1 ≠ a0' doms a1') ∧
         (∀a1' a1 a0' a0. a0 eqi a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 eqi a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 eqi a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 eqi a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 doms a1 ≠ a0' eqs a1') ∧
         (∀a1' a1 a0' a0. a0 doms a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 doms a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 doms a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 eqs a1 ≠ a0' eqn a1') ∧
         (∀a1' a1 a0' a0. a0 eqs a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 eqs a1 ≠ a0' lt a1') ∧
         (∀a1' a1 a0' a0. a0 eqn a1 ≠ a0' lte a1') ∧
         (∀a1' a1 a0' a0. a0 eqn a1 ≠ a0' lt a1') ∧
         ∀a1' a1 a0' a0. a0 lte a1 ≠ a0' lt a1'

   [Form_induction]  Theorem

      |- ∀P.
           P TT ∧ P FF ∧ (∀a. P (prop a)) ∧ (∀F. P F ⇒ P (notf F)) ∧
           (∀F F0. P F ∧ P F0 ⇒ P (F andf F0)) ∧
           (∀F F0. P F ∧ P F0 ⇒ P (F orf F0)) ∧
           (∀F F0. P F ∧ P F0 ⇒ P (F impf F0)) ∧
           (∀F F0. P F ∧ P F0 ⇒ P (F eqf F0)) ∧
           (∀F. P F ⇒ ∀P0. P (P0 says F)) ∧
           (∀P0 P1. P (P0 speaks_for P1)) ∧
           (∀F. P F ⇒ ∀P0. P (P0 controls F)) ∧
           (∀F. P F ⇒ ∀P0 P1. P (reps P1 P0 F)) ∧ (∀I I0. P (I domi I0)) ∧
           (∀I I0. P (I eqi I0)) ∧ (∀S S0. P (S doms S0)) ∧
           (∀S S0. P (S eqs S0)) ∧ (∀n n0. P (n eqn n0)) ∧
           (∀n n0. P (n lte n0)) ∧ (∀n n0. P (n lt n0)) ⇒
           ∀F. P F

   [Form_nchotomy]  Theorem

      |- ∀FF.
           (FF = TT) ∨ (FF = FF) ∨ (∃a. FF = prop a) ∨ (∃F. FF = notf F) ∨
           (∃F F0. FF = F andf F0) ∨ (∃F F0. FF = F orf F0) ∨
           (∃F F0. FF = F impf F0) ∨ (∃F F0. FF = F eqf F0) ∨
           (∃P0 F. FF = P0 says F) ∨ (∃P0 P1. FF = P0 speaks_for P1) ∨
           (∃P0 F. FF = P0 controls F) ∨ (∃P1 P0 F. FF = reps P1 P0 F) ∨
           (∃I I0. FF = I domi I0) ∨ (∃I I0. FF = I eqi I0) ∨
           (∃S S0. FF = S doms S0) ∨ (∃S S0. FF = S eqs S0) ∨
           (∃n n0. FF = n eqn n0) ∨ (∃n n0. FF = n lte n0) ∨
           ∃n n0. FF = n lt n0

   [IntLevel_11]  Theorem

      |- (∀a a'. (iLab a = iLab a') ⇔ (a = a')) ∧
         ∀a a'. (il a = il a') ⇔ (a = a')

   [IntLevel_Axiom]  Theorem

      |- ∀f0 f1. ∃fn. (∀a. fn (iLab a) = f0 a) ∧ ∀a. fn (il a) = f1 a

   [IntLevel_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = iLab a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = il a) ⇒ (f1 a = f1' a)) ⇒
           (IntLevel_CASE M f f1 = IntLevel_CASE M' f' f1')

   [IntLevel_distinct]  Theorem

      |- ∀a' a. iLab a ≠ il a'

   [IntLevel_induction]  Theorem

      |- ∀P. (∀i. P (iLab i)) ∧ (∀a. P (il a)) ⇒ ∀I. P I

   [IntLevel_nchotomy]  Theorem

      |- ∀II. (∃i. II = iLab i) ∨ ∃a. II = il a

   [KS_bij]  Theorem

      |- ∀M. M = KS (intpKS M) (jKS M) (imapKS M) (smapKS M)

   [Kripke_11]  Theorem

      |- ∀a0 a1 a2 a3 a0' a1' a2' a3'.
           (KS a0 a1 a2 a3 = KS a0' a1' a2' a3') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2') ∧ (a3 = a3')

   [Kripke_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a0 a1 a2 a3. fn (KS a0 a1 a2 a3) = f a0 a1 a2 a3

   [Kripke_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧
           (∀a0 a1 a2 a3.
              (M' = KS a0 a1 a2 a3) ⇒ (f a0 a1 a2 a3 = f' a0 a1 a2 a3)) ⇒
           (Kripke_CASE M f = Kripke_CASE M' f')

   [Kripke_induction]  Theorem

      |- ∀P. (∀f f0 f1 f2. P (KS f f0 f1 f2)) ⇒ ∀K. P K

   [Kripke_nchotomy]  Theorem

      |- ∀KK. ∃f f0 f1 f2. KK = KS f f0 f1 f2

   [PO_repPO]  Theorem

      |- ∀a. PO (repPO a) = a

   [Princ_11]  Theorem

      |- (∀a a'. (Name a = Name a') ⇔ (a = a')) ∧
         (∀a0 a1 a0' a1'.
            (a0 meet a1 = a0' meet a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         ∀a0 a1 a0' a1'.
           (a0 quoting a1 = a0' quoting a1') ⇔ (a0 = a0') ∧ (a1 = a1')

   [Princ_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (Name a) = f0 a) ∧
             (∀a0 a1. fn (a0 meet a1) = f1 a0 a1 (fn a0) (fn a1)) ∧
             ∀a0 a1. fn (a0 quoting a1) = f2 a0 a1 (fn a0) (fn a1)

   [Princ_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = Name a) ⇒ (f a = f' a)) ∧
           (∀a0 a1. (M' = a0 meet a1) ⇒ (f1 a0 a1 = f1' a0 a1)) ∧
           (∀a0 a1. (M' = a0 quoting a1) ⇒ (f2 a0 a1 = f2' a0 a1)) ⇒
           (Princ_CASE M f f1 f2 = Princ_CASE M' f' f1' f2')

   [Princ_distinct]  Theorem

      |- (∀a1 a0 a. Name a ≠ a0 meet a1) ∧
         (∀a1 a0 a. Name a ≠ a0 quoting a1) ∧
         ∀a1' a1 a0' a0. a0 meet a1 ≠ a0' quoting a1'

   [Princ_induction]  Theorem

      |- ∀P.
           (∀a. P (Name a)) ∧ (∀P0 P1. P P0 ∧ P P1 ⇒ P (P0 meet P1)) ∧
           (∀P0 P1. P P0 ∧ P P1 ⇒ P (P0 quoting P1)) ⇒
           ∀P0. P P0

   [Princ_nchotomy]  Theorem

      |- ∀P0P0.
           (∃a. P0P0 = Name a) ∨ (∃P0 P1. P0P0 = P0 meet P1) ∨
           ∃P0 P1. P0P0 = P0 quoting P1

   [RPROD_THM]  Theorem

      |- ∀r s a b. RPROD r s a b ⇔ r (FST a) (FST b) ∧ s (SND a) (SND b)

   [SUBSET_WO]  Theorem

      |- WeakOrder $SUBSET

   [SecLevel_11]  Theorem

      |- (∀a a'. (sLab a = sLab a') ⇔ (a = a')) ∧
         ∀a a'. (sl a = sl a') ⇔ (a = a')

   [SecLevel_Axiom]  Theorem

      |- ∀f0 f1. ∃fn. (∀a. fn (sLab a) = f0 a) ∧ ∀a. fn (sl a) = f1 a

   [SecLevel_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = sLab a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = sl a) ⇒ (f1 a = f1' a)) ⇒
           (SecLevel_CASE M f f1 = SecLevel_CASE M' f' f1')

   [SecLevel_distinct]  Theorem

      |- ∀a' a. sLab a ≠ sl a'

   [SecLevel_induction]  Theorem

      |- ∀P. (∀s. P (sLab s)) ∧ (∀a. P (sl a)) ⇒ ∀S. P S

   [SecLevel_nchotomy]  Theorem

      |- ∀SS. (∃s. SS = sLab s) ∨ ∃a. SS = sl a

   [WO_prod_WO]  Theorem

      |- ∀r s. WeakOrder r ∧ WeakOrder s ⇒ WeakOrder (RPROD r s)

   [WO_repPO]  Theorem

      |- ∀r. WeakOrder r ⇔ (repPO (PO r) = r)

   [WeakOrder_Exists]  Theorem

      |- ∃R. WeakOrder R

   [absPO_fn_onto]  Theorem

      |- ∀a. ∃r. (a = PO r) ∧ WeakOrder r

   [abs_po11]  Theorem

      |- ∀r r'. WeakOrder r ⇒ WeakOrder r' ⇒ ((PO r = PO r') ⇔ (r = r'))

   [antisym_prod_antisym]  Theorem

      |- ∀r s.
           antisymmetric r ∧ antisymmetric s ⇒ antisymmetric (RPROD r s)

   [datatype_Form]  Theorem

      |- DATATYPE
           (Form TT FF prop notf $andf $orf $impf $eqf $says $speaks_for
              $controls reps $domi $eqi $doms $eqs $eqn $lte $lt)

   [datatype_Kripke]  Theorem

      |- DATATYPE (Kripke KS)

   [datatype_Princ]  Theorem

      |- DATATYPE
           (Princ Name $meet $quoting ∧ IntLevel iLab il ∧
            SecLevel sLab sl)

   [one_weakorder_WO]  Theorem

      |- WeakOrder one_weakorder

   [onto_po]  Theorem

      |- ∀r. WeakOrder r ⇔ ∃a. r = repPO a

   [po_bij]  Theorem

      |- (∀a. PO (repPO a) = a) ∧ ∀r. WeakOrder r ⇔ (repPO (PO r) = r)

   [refl_prod_refl]  Theorem

      |- ∀r s. reflexive r ∧ reflexive s ⇒ reflexive (RPROD r s)

   [repPO_O1]  Theorem

      |- repPO O1 = one_weakorder

   [repPO_Subset_PO]  Theorem

      |- repPO Subset_PO = $SUBSET

   [repPO_iPO_partial_order]  Theorem

      |- (∀x. repPO iPO x x) ∧
         (∀x y. repPO iPO x y ∧ repPO iPO y x ⇒ (x = y)) ∧
         ∀x y z. repPO iPO x y ∧ repPO iPO y z ⇒ repPO iPO x z

   [repPO_prod_PO]  Theorem

      |- ∀po1 po2. repPO (prod_PO po1 po2) = RPROD (repPO po1) (repPO po2)

   [trans_prod_trans]  Theorem

      |- ∀r s. transitive r ∧ transitive s ⇒ transitive (RPROD r s)


*)
end
