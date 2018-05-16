signature aclrulesTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val sat_def : thm

  (*  Theorems  *)
    val And_Says : thm
    val And_Says_Eq : thm
    val Controls_Eq : thm
    val DIFF_UNIV_SUBSET : thm
    val INTER_EQ_UNIV : thm
    val Idemp_Speaks_For : thm
    val Image_SUBSET : thm
    val Image_UNION : thm
    val Image_cmp : thm
    val MP_Says : thm
    val Modus_Ponens : thm
    val Mono_speaks_for : thm
    val Quoting : thm
    val Quoting_Eq : thm
    val Reps_Eq : thm
    val SUBSET_Image_SUBSET : thm
    val Says : thm
    val Speaks_For : thm
    val Trans_Speaks_For : thm
    val UNIV_DIFF_SUBSET : thm
    val and_says_lemma : thm
    val domi_antisymmetric : thm
    val domi_reflexive : thm
    val domi_transitive : thm
    val doms_antisymmetric : thm
    val doms_reflexive : thm
    val doms_transitive : thm
    val eqf_and_impf : thm
    val eqf_andf1 : thm
    val eqf_andf2 : thm
    val eqf_controls : thm
    val eqf_eq : thm
    val eqf_eqf1 : thm
    val eqf_eqf2 : thm
    val eqf_impf1 : thm
    val eqf_impf2 : thm
    val eqf_notf : thm
    val eqf_orf1 : thm
    val eqf_orf2 : thm
    val eqf_reps : thm
    val eqf_sat : thm
    val eqf_says : thm
    val eqi_Eq : thm
    val eqs_Eq : thm
    val reps_def_lemma : thm
    val sat_TT : thm
    val sat_allworld : thm
    val sat_andf_eq_and_sat : thm
    val says_and_lemma : thm
    val speaks_for_SUBSET : thm
    val world_F : thm
    val world_T : thm
    val world_and : thm
    val world_eq : thm
    val world_eqn : thm
    val world_imp : thm
    val world_lt : thm
    val world_lte : thm
    val world_not : thm
    val world_or : thm
    val world_says : thm

  val aclrules_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclsemantics] Parent theory of "aclrules"

   [sat_def]  Definition

      |- ∀M Oi Os f. (M,Oi,Os) sat f ⇔ (Efn Oi Os M f = 𝕌(:'world))

   [And_Says]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P meet Q says f eqf P says f andf Q says f

   [And_Says_Eq]  Theorem

      |- (M,Oi,Os) sat P meet Q says f ⇔
         (M,Oi,Os) sat P says f andf Q says f

   [Controls_Eq]  Theorem

      |- ∀M Oi Os P f.
           (M,Oi,Os) sat P controls f ⇔ (M,Oi,Os) sat P says f impf f

   [DIFF_UNIV_SUBSET]  Theorem

      |- (𝕌(:α) DIFF s ∪ t = 𝕌(:α)) ⇔ s ⊆ t

   [INTER_EQ_UNIV]  Theorem

      |- (s ∩ t = 𝕌(:α)) ⇔ (s = 𝕌(:α)) ∧ (t = 𝕌(:α))

   [Idemp_Speaks_For]  Theorem

      |- ∀M Oi Os P. (M,Oi,Os) sat P speaks_for P

   [Image_SUBSET]  Theorem

      |- ∀R1 R2. R2 ⊆ᵣ R1 ⇒ ∀w. R2 w ⊆ R1 w

   [Image_UNION]  Theorem

      |- ∀R1 R2 w. (R1 ∪ᵣ R2) w = R1 w ∪ R2 w

   [Image_cmp]  Theorem

      |- ∀R1 R2 R3 u. (R1 ∘ᵣ R2) u ⊆ R3 ⇔ R2 u ⊆ {y | R1 y ⊆ R3}

   [MP_Says]  Theorem

      |- ∀M Oi Os P f1 f2.
           (M,Oi,Os) sat P says (f1 impf f2) impf P says f1 impf P says f2

   [Modus_Ponens]  Theorem

      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 ⇒ (M,Oi,Os) sat f1 impf f2 ⇒ (M,Oi,Os) sat f2

   [Mono_speaks_for]  Theorem

      |- ∀M Oi Os P P' Q Q'.
           (M,Oi,Os) sat P speaks_for P' ⇒
           (M,Oi,Os) sat Q speaks_for Q' ⇒
           (M,Oi,Os) sat P quoting Q speaks_for P' quoting Q'

   [Quoting]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P quoting Q says f eqf P says Q says f

   [Quoting_Eq]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P quoting Q says f ⇔ (M,Oi,Os) sat P says Q says f

   [Reps_Eq]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat reps P Q f ⇔
           (M,Oi,Os) sat P quoting Q says f impf Q says f

   [SUBSET_Image_SUBSET]  Theorem

      |- ∀R1 R2 R3.
           (∀w1. R2 w1 ⊆ R1 w1) ⇒ ∀w. {w | R1 w ⊆ R3} ⊆ {w | R2 w ⊆ R3}

   [Says]  Theorem

      |- ∀M Oi Os P f. (M,Oi,Os) sat f ⇒ (M,Oi,Os) sat P says f

   [Speaks_For]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P speaks_for Q impf P says f impf Q says f

   [Trans_Speaks_For]  Theorem

      |- ∀M Oi Os P Q R.
           (M,Oi,Os) sat P speaks_for Q ⇒
           (M,Oi,Os) sat Q speaks_for R ⇒
           (M,Oi,Os) sat P speaks_for R

   [UNIV_DIFF_SUBSET]  Theorem

      |- ∀R1 R2. R1 ⊆ R2 ⇒ (𝕌(:α) DIFF R1 ∪ R2 = 𝕌(:α))

   [and_says_lemma]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P meet Q says f impf P says f andf Q says f

   [domi_antisymmetric]  Theorem

      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 domi l2 ⇒
           (M,Oi,Os) sat l2 domi l1 ⇒
           (M,Oi,Os) sat l1 eqi l2

   [domi_reflexive]  Theorem

      |- ∀M Oi Os l. (M,Oi,Os) sat l domi l

   [domi_transitive]  Theorem

      |- ∀M Oi Os l1 l2 l3.
           (M,Oi,Os) sat l1 domi l2 ⇒
           (M,Oi,Os) sat l2 domi l3 ⇒
           (M,Oi,Os) sat l1 domi l3

   [doms_antisymmetric]  Theorem

      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 doms l2 ⇒
           (M,Oi,Os) sat l2 doms l1 ⇒
           (M,Oi,Os) sat l1 eqs l2

   [doms_reflexive]  Theorem

      |- ∀M Oi Os l. (M,Oi,Os) sat l doms l

   [doms_transitive]  Theorem

      |- ∀M Oi Os l1 l2 l3.
           (M,Oi,Os) sat l1 doms l2 ⇒
           (M,Oi,Os) sat l2 doms l3 ⇒
           (M,Oi,Os) sat l1 doms l3

   [eqf_and_impf]  Theorem

      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 eqf f2 ⇔
           (M,Oi,Os) sat (f1 impf f2) andf (f2 impf f1)

   [eqf_andf1]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f andf g ⇒
           (M,Oi,Os) sat f' andf g

   [eqf_andf2]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g andf f ⇒
           (M,Oi,Os) sat g andf f'

   [eqf_controls]  Theorem

      |- ∀M Oi Os P f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat P controls f ⇒
           (M,Oi,Os) sat P controls f'

   [eqf_eq]  Theorem

      |- (Efn Oi Os M (f1 eqf f2) = 𝕌(:β)) ⇔
         (Efn Oi Os M f1 = Efn Oi Os M f2)

   [eqf_eqf1]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f eqf g ⇒
           (M,Oi,Os) sat f' eqf g

   [eqf_eqf2]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g eqf f ⇒
           (M,Oi,Os) sat g eqf f'

   [eqf_impf1]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f impf g ⇒
           (M,Oi,Os) sat f' impf g

   [eqf_impf2]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g impf f ⇒
           (M,Oi,Os) sat g impf f'

   [eqf_notf]  Theorem

      |- ∀M Oi Os f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat notf f ⇒
           (M,Oi,Os) sat notf f'

   [eqf_orf1]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f orf g ⇒
           (M,Oi,Os) sat f' orf g

   [eqf_orf2]  Theorem

      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g orf f ⇒
           (M,Oi,Os) sat g orf f'

   [eqf_reps]  Theorem

      |- ∀M Oi Os P Q f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat reps P Q f ⇒
           (M,Oi,Os) sat reps P Q f'

   [eqf_sat]  Theorem

      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 eqf f2 ⇒ ((M,Oi,Os) sat f1 ⇔ (M,Oi,Os) sat f2)

   [eqf_says]  Theorem

      |- ∀M Oi Os P f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat P says f ⇒
           (M,Oi,Os) sat P says f'

   [eqi_Eq]  Theorem

      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 eqi l2 ⇔
           (M,Oi,Os) sat l2 domi l1 andf l1 domi l2

   [eqs_Eq]  Theorem

      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 eqs l2 ⇔
           (M,Oi,Os) sat l2 doms l1 andf l1 doms l2

   [reps_def_lemma]  Theorem

      |- ∀M Oi Os P Q f.
           Efn Oi Os M (reps P Q f) =
           Efn Oi Os M (P quoting Q says f impf Q says f)

   [sat_TT]  Theorem

      |- (M,Oi,Os) sat TT

   [sat_allworld]  Theorem

      |- ∀M f. (M,Oi,Os) sat f ⇔ ∀w. w ∈ Efn Oi Os M f

   [sat_andf_eq_and_sat]  Theorem

      |- (M,Oi,Os) sat f1 andf f2 ⇔ (M,Oi,Os) sat f1 ∧ (M,Oi,Os) sat f2

   [says_and_lemma]  Theorem

      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P says f andf Q says f impf P meet Q says f

   [speaks_for_SUBSET]  Theorem

      |- ∀R3 R2 R1. R2 ⊆ᵣ R1 ⇒ ∀w. {w | R1 w ⊆ R3} ⊆ {w | R2 w ⊆ R3}

   [world_F]  Theorem

      |- ∀M Oi Os w. w ∉ Efn Oi Os M FF

   [world_T]  Theorem

      |- ∀M Oi Os w. w ∈ Efn Oi Os M TT

   [world_and]  Theorem

      |- ∀M Oi Os f1 f2 w.
           w ∈ Efn Oi Os M (f1 andf f2) ⇔
           w ∈ Efn Oi Os M f1 ∧ w ∈ Efn Oi Os M f2

   [world_eq]  Theorem

      |- ∀M Oi Os f1 f2 w.
           w ∈ Efn Oi Os M (f1 eqf f2) ⇔
           (w ∈ Efn Oi Os M f1 ⇔ w ∈ Efn Oi Os M f2)

   [world_eqn]  Theorem

      |- ∀M Oi Os n1 n2 w. w ∈ Efn Oi Os m (n1 eqn n2) ⇔ (n1 = n2)

   [world_imp]  Theorem

      |- ∀M Oi Os f1 f2 w.
           w ∈ Efn Oi Os M (f1 impf f2) ⇔
           w ∈ Efn Oi Os M f1 ⇒ w ∈ Efn Oi Os M f2

   [world_lt]  Theorem

      |- ∀M Oi Os n1 n2 w. w ∈ Efn Oi Os m (n1 lt n2) ⇔ n1 < n2

   [world_lte]  Theorem

      |- ∀M Oi Os n1 n2 w. w ∈ Efn Oi Os m (n1 lte n2) ⇔ n1 ≤ n2

   [world_not]  Theorem

      |- ∀M Oi Os f w. w ∈ Efn Oi Os M (notf f) ⇔ w ∉ Efn Oi Os M f

   [world_or]  Theorem

      |- ∀M f1 f2 w.
           w ∈ Efn Oi Os M (f1 orf f2) ⇔
           w ∈ Efn Oi Os M f1 ∨ w ∈ Efn Oi Os M f2

   [world_says]  Theorem

      |- ∀M Oi Os P f w.
           w ∈ Efn Oi Os M (P says f) ⇔
           ∀v. v ∈ Jext (jKS M) P w ⇒ v ∈ Efn Oi Os M f


*)
end
