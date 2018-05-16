signature aclDrulesTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val Conjunction : thm
    val Controls : thm
    val Derived_Controls : thm
    val Derived_Speaks_For : thm
    val Disjunction1 : thm
    val Disjunction2 : thm
    val Disjunctive_Syllogism : thm
    val Double_Negation : thm
    val Hypothetical_Syllogism : thm
    val INTER_EQ_UNIV : thm
    val Modus_Tollens : thm
    val Rep_Controls_Eq : thm
    val Rep_Says : thm
    val Reps : thm
    val Says_Simplification1 : thm
    val Says_Simplification2 : thm
    val Simplification1 : thm
    val Simplification2 : thm
    val eqn_eqn : thm
    val eqn_lt : thm
    val eqn_lte : thm
    val il_domi : thm
    val sl_doms : thm

  val aclDrules_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclrules] Parent theory of "aclDrules"

   [Conjunction]  Theorem

      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 ⇒ (M,Oi,Os) sat f2 ⇒ (M,Oi,Os) sat f1 andf f2

   [Controls]  Theorem

      |- ∀M Oi Os P f.
           (M,Oi,Os) sat P says f ⇒
           (M,Oi,Os) sat P controls f ⇒
           (M,Oi,Os) sat f

   [Derived_Controls]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P speaks_for Q ⇒
           (M,Oi,Os) sat Q controls f ⇒
           (M,Oi,Os) sat P controls f

   [Derived_Speaks_For]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P speaks_for Q ⇒
           (M,Oi,Os) sat P says f ⇒
           (M,Oi,Os) sat Q says f

   [Disjunction1]  Theorem

      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f1 ⇒ (M,Oi,Os) sat f1 orf f2

   [Disjunction2]  Theorem

      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f2 ⇒ (M,Oi,Os) sat f1 orf f2

   [Disjunctive_Syllogism]  Theorem

      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 orf f2 ⇒
           (M,Oi,Os) sat notf f1 ⇒
           (M,Oi,Os) sat f2

   [Double_Negation]  Theorem

      |- ∀M Oi Os f. (M,Oi,Os) sat notf (notf f) ⇒ (M,Oi,Os) sat f

   [Hypothetical_Syllogism]  Theorem

      |- ∀M Oi Os f1 f2 f3.
           (M,Oi,Os) sat f1 impf f2 ⇒
           (M,Oi,Os) sat f2 impf f3 ⇒
           (M,Oi,Os) sat f1 impf f3

   [INTER_EQ_UNIV]  Theorem

      |- ∀s1 s2. (s1 ∩ s2 = 𝕌(:α)) ⇔ (s1 = 𝕌(:α)) ∧ (s2 = 𝕌(:α))

   [Modus_Tollens]  Theorem

      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 impf f2 ⇒
           (M,Oi,Os) sat notf f2 ⇒
           (M,Oi,Os) sat notf f1

   [Rep_Controls_Eq]  Theorem

      |- ∀M Oi Os A B f.
           (M,Oi,Os) sat reps A B f ⇔ (M,Oi,Os) sat A controls B says f

   [Rep_Says]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat reps P Q f ⇒
           (M,Oi,Os) sat P quoting Q says f ⇒
           (M,Oi,Os) sat Q says f

   [Reps]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat reps P Q f ⇒
           (M,Oi,Os) sat P quoting Q says f ⇒
           (M,Oi,Os) sat Q controls f ⇒
           (M,Oi,Os) sat f

   [Says_Simplification1]  Theorem

      |- ∀M Oi Os P f1 f2.
           (M,Oi,Os) sat P says (f1 andf f2) ⇒ (M,Oi,Os) sat P says f1

   [Says_Simplification2]  Theorem

      |- ∀M Oi Os P f1 f2.
           (M,Oi,Os) sat P says (f1 andf f2) ⇒ (M,Oi,Os) sat P says f2

   [Simplification1]  Theorem

      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f1 andf f2 ⇒ (M,Oi,Os) sat f1

   [Simplification2]  Theorem

      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f1 andf f2 ⇒ (M,Oi,Os) sat f2

   [eqn_eqn]  Theorem

      |- (M,Oi,Os) sat c1 eqn n1 ⇒
         (M,Oi,Os) sat c2 eqn n2 ⇒
         (M,Oi,Os) sat n1 eqn n2 ⇒
         (M,Oi,Os) sat c1 eqn c2

   [eqn_lt]  Theorem

      |- (M,Oi,Os) sat c1 eqn n1 ⇒
         (M,Oi,Os) sat c2 eqn n2 ⇒
         (M,Oi,Os) sat n1 lt n2 ⇒
         (M,Oi,Os) sat c1 lt c2

   [eqn_lte]  Theorem

      |- (M,Oi,Os) sat c1 eqn n1 ⇒
         (M,Oi,Os) sat c2 eqn n2 ⇒
         (M,Oi,Os) sat n1 lte n2 ⇒
         (M,Oi,Os) sat c1 lte c2

   [il_domi]  Theorem

      |- ∀M Oi Os P Q l1 l2.
           (M,Oi,Os) sat il P eqi l1 ⇒
           (M,Oi,Os) sat il Q eqi l2 ⇒
           (M,Oi,Os) sat l2 domi l1 ⇒
           (M,Oi,Os) sat il Q domi il P

   [sl_doms]  Theorem

      |- ∀M Oi Os P Q l1 l2.
           (M,Oi,Os) sat sl P eqs l1 ⇒
           (M,Oi,Os) sat sl Q eqs l2 ⇒
           (M,Oi,Os) sat l2 doms l1 ⇒
           (M,Oi,Os) sat sl Q doms sl P


*)
end
