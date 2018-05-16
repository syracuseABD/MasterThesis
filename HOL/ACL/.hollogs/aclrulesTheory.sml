<<HOL message: Created theory "aclrules">>
Saved definition __ "sat_def"
Saved theorem _____ "world_says"
Saved theorem _____ "sat_allworld"
Saved theorem _____ "world_T"
Saved theorem _____ "world_F"
Saved theorem _____ "world_not"
Saved theorem _____ "world_not"
Saved theorem _____ "world_not"
Saved theorem _____ "world_and"
Saved theorem _____ "world_or"
Saved theorem _____ "world_imp"
Saved theorem _____ "world_eq"
Saved theorem _____ "world_eqn"
Saved theorem _____ "world_lte"
Saved theorem _____ "world_lt"
Saved theorem _____ "domi_reflexive"
Saved theorem _____ "domi_transitive"
Saved theorem _____ "domi_antisymmetric"
Saved theorem _____ "eqi_Eq"
Saved theorem _____ "doms_reflexive"
Saved theorem _____ "doms_transitive"
Saved theorem _____ "doms_antisymmetric"
Saved theorem _____ "eqs_Eq"
Saved theorem _____ "Modus_Ponens"
Saved theorem _____ "Says"
Saved theorem _____ "MP_Says"
Saved theorem _____ "UNIV_DIFF_SUBSET"
Saved theorem _____ "Image_SUBSET"
Saved theorem _____ "SUBSET_Image_SUBSET"
Saved theorem _____ "speaks_for_SUBSET"
Saved theorem _____ "Speaks_For"
Saved theorem _____ "Trans_Speaks_For"
Saved theorem _____ "Idemp_Speaks_For"
Saved theorem _____ "Mono_speaks_for"
Saved theorem _____ "Image_UNION"
Saved theorem _____ "and_says_lemma"
Saved theorem _____ "says_and_lemma"
Saved theorem _____ "And_Says"
Saved theorem _____ "eqf_and_impf"
Saved theorem _____ "eqf_sat"
Saved theorem _____ "INTER_EQ_UNIV"
Saved theorem _____ "sat_andf_eq_and_sat"
Saved theorem _____ "DIFF_UNIV_SUBSET"
Saved theorem _____ "eqf_eq"
Saved theorem _____ "eqf_notf"
Saved theorem _____ "eqf_andf1"
Saved theorem _____ "eqf_andf2"
Saved theorem _____ "eqf_orf1"
Saved theorem _____ "eqf_orf2"
Saved theorem _____ "eqf_impf1"
Saved theorem _____ "eqf_impf2"
Saved theorem _____ "eqf_eqf1"
Saved theorem _____ "eqf_eqf2"
Saved theorem _____ "eqf_says"
Saved theorem _____ "eqf_controls"
Saved theorem _____ "eqf_reps"
Saved theorem _____ "Image_cmp"
Saved theorem _____ "Quoting"
Saved theorem _____ "Quoting_Eq"
Saved theorem _____ "Controls_Eq"
Saved theorem _____ "reps_def_lemma"
Saved theorem _____ "Reps_Eq"
Saved theorem _____ "And_Says_Eq"
Saved theorem _____ "sat_TT"
Theory: aclrules

Parents:
    aclsemantics

Term constants:
    sat   :(α, 'world, β, γ, δ) Kripke # γ po # δ po ->
           (α, β, γ, δ) Form -> bool

Definitions:
    sat_def
      |- ∀M Oi Os f. (M,Oi,Os) sat f ⇔ (Efn Oi Os M f = 𝕌(:'world))

Theorems:
    And_Says
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P meet Q says f eqf P says f andf Q says f
    And_Says_Eq
      |- (M,Oi,Os) sat P meet Q says f ⇔
         (M,Oi,Os) sat P says f andf Q says f
    Controls_Eq
      |- ∀M Oi Os P f.
           (M,Oi,Os) sat P controls f ⇔ (M,Oi,Os) sat P says f impf f
    DIFF_UNIV_SUBSET
      |- (𝕌(:α) DIFF s ∪ t = 𝕌(:α)) ⇔ s ⊆ t
    INTER_EQ_UNIV
      |- (s ∩ t = 𝕌(:α)) ⇔ (s = 𝕌(:α)) ∧ (t = 𝕌(:α))
    Idemp_Speaks_For
      |- ∀M Oi Os P. (M,Oi,Os) sat P speaks_for P
    Image_SUBSET
      |- ∀R1 R2. R2 ⊆ᵣ R1 ⇒ ∀w. R2 w ⊆ R1 w
    Image_UNION
      |- ∀R1 R2 w. (R1 ∪ᵣ R2) w = R1 w ∪ R2 w
    Image_cmp
      |- ∀R1 R2 R3 u. (R1 ∘ᵣ R2) u ⊆ R3 ⇔ R2 u ⊆ {y | R1 y ⊆ R3}
    MP_Says
      |- ∀M Oi Os P f1 f2.
           (M,Oi,Os) sat
           P says (f1 impf f2) impf P says f1 impf P says f2
    Modus_Ponens
      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 ⇒
           (M,Oi,Os) sat f1 impf f2 ⇒
           (M,Oi,Os) sat f2
    Mono_speaks_for
      |- ∀M Oi Os P P' Q Q'.
           (M,Oi,Os) sat P speaks_for P' ⇒
           (M,Oi,Os) sat Q speaks_for Q' ⇒
           (M,Oi,Os) sat P quoting Q speaks_for P' quoting Q'
    Quoting
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P quoting Q says f eqf P says Q says f
    Quoting_Eq
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P quoting Q says f ⇔
           (M,Oi,Os) sat P says Q says f
    Reps_Eq
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat reps P Q f ⇔
           (M,Oi,Os) sat P quoting Q says f impf Q says f
    SUBSET_Image_SUBSET
      |- ∀R1 R2 R3.
           (∀w1. R2 w1 ⊆ R1 w1) ⇒ ∀w. {w | R1 w ⊆ R3} ⊆ {w | R2 w ⊆ R3}
    Says
      |- ∀M Oi Os P f. (M,Oi,Os) sat f ⇒ (M,Oi,Os) sat P says f
    Speaks_For
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P speaks_for Q impf P says f impf Q says f
    Trans_Speaks_For
      |- ∀M Oi Os P Q R.
           (M,Oi,Os) sat P speaks_for Q ⇒
           (M,Oi,Os) sat Q speaks_for R ⇒
           (M,Oi,Os) sat P speaks_for R
    UNIV_DIFF_SUBSET
      |- ∀R1 R2. R1 ⊆ R2 ⇒ (𝕌(:α) DIFF R1 ∪ R2 = 𝕌(:α))
    and_says_lemma
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P meet Q says f impf P says f andf Q says f
    domi_antisymmetric
      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 domi l2 ⇒
           (M,Oi,Os) sat l2 domi l1 ⇒
           (M,Oi,Os) sat l1 eqi l2
    domi_reflexive
      |- ∀M Oi Os l. (M,Oi,Os) sat l domi l
    domi_transitive
      |- ∀M Oi Os l1 l2 l3.
           (M,Oi,Os) sat l1 domi l2 ⇒
           (M,Oi,Os) sat l2 domi l3 ⇒
           (M,Oi,Os) sat l1 domi l3
    doms_antisymmetric
      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 doms l2 ⇒
           (M,Oi,Os) sat l2 doms l1 ⇒
           (M,Oi,Os) sat l1 eqs l2
    doms_reflexive
      |- ∀M Oi Os l. (M,Oi,Os) sat l doms l
    doms_transitive
      |- ∀M Oi Os l1 l2 l3.
           (M,Oi,Os) sat l1 doms l2 ⇒
           (M,Oi,Os) sat l2 doms l3 ⇒
           (M,Oi,Os) sat l1 doms l3
    eqf_and_impf
      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 eqf f2 ⇔
           (M,Oi,Os) sat (f1 impf f2) andf (f2 impf f1)
    eqf_andf1
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f andf g ⇒
           (M,Oi,Os) sat f' andf g
    eqf_andf2
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g andf f ⇒
           (M,Oi,Os) sat g andf f'
    eqf_controls
      |- ∀M Oi Os P f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat P controls f ⇒
           (M,Oi,Os) sat P controls f'
    eqf_eq
      |- (Efn Oi Os M (f1 eqf f2) = 𝕌(:β)) ⇔
         (Efn Oi Os M f1 = Efn Oi Os M f2)
    eqf_eqf1
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f eqf g ⇒
           (M,Oi,Os) sat f' eqf g
    eqf_eqf2
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g eqf f ⇒
           (M,Oi,Os) sat g eqf f'
    eqf_impf1
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f impf g ⇒
           (M,Oi,Os) sat f' impf g
    eqf_impf2
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g impf f ⇒
           (M,Oi,Os) sat g impf f'
    eqf_notf
      |- ∀M Oi Os f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat notf f ⇒
           (M,Oi,Os) sat notf f'
    eqf_orf1
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat f orf g ⇒
           (M,Oi,Os) sat f' orf g
    eqf_orf2
      |- ∀M Oi Os f f' g.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat g orf f ⇒
           (M,Oi,Os) sat g orf f'
    eqf_reps
      |- ∀M Oi Os P Q f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat reps P Q f ⇒
           (M,Oi,Os) sat reps P Q f'
    eqf_sat
      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 eqf f2 ⇒
           ((M,Oi,Os) sat f1 ⇔ (M,Oi,Os) sat f2)
    eqf_says
      |- ∀M Oi Os P f f'.
           (M,Oi,Os) sat f eqf f' ⇒
           (M,Oi,Os) sat P says f ⇒
           (M,Oi,Os) sat P says f'
    eqi_Eq
      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 eqi l2 ⇔
           (M,Oi,Os) sat l2 domi l1 andf l1 domi l2
    eqs_Eq
      |- ∀M Oi Os l1 l2.
           (M,Oi,Os) sat l1 eqs l2 ⇔
           (M,Oi,Os) sat l2 doms l1 andf l1 doms l2
    reps_def_lemma
      |- ∀M Oi Os P Q f.
           Efn Oi Os M (reps P Q f) =
           Efn Oi Os M (P quoting Q says f impf Q says f)
    sat_TT
      |- (M,Oi,Os) sat TT
    sat_allworld
      |- ∀M f. (M,Oi,Os) sat f ⇔ ∀w. w ∈ Efn Oi Os M f
    sat_andf_eq_and_sat
      |- (M,Oi,Os) sat f1 andf f2 ⇔ (M,Oi,Os) sat f1 ∧ (M,Oi,Os) sat f2
    says_and_lemma
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P says f andf Q says f impf P meet Q says f
    speaks_for_SUBSET
      |- ∀R3 R2 R1. R2 ⊆ᵣ R1 ⇒ ∀w. {w | R1 w ⊆ R3} ⊆ {w | R2 w ⊆ R3}
    world_F
      |- ∀M Oi Os w. w ∉ Efn Oi Os M FF
    world_T
      |- ∀M Oi Os w. w ∈ Efn Oi Os M TT
    world_and
      |- ∀M Oi Os f1 f2 w.
           w ∈ Efn Oi Os M (f1 andf f2) ⇔
           w ∈ Efn Oi Os M f1 ∧ w ∈ Efn Oi Os M f2
    world_eq
      |- ∀M Oi Os f1 f2 w.
           w ∈ Efn Oi Os M (f1 eqf f2) ⇔
           (w ∈ Efn Oi Os M f1 ⇔ w ∈ Efn Oi Os M f2)
    world_eqn
      |- ∀M Oi Os n1 n2 w. w ∈ Efn Oi Os m (n1 eqn n2) ⇔ (n1 = n2)
    world_imp
      |- ∀M Oi Os f1 f2 w.
           w ∈ Efn Oi Os M (f1 impf f2) ⇔
           w ∈ Efn Oi Os M f1 ⇒ w ∈ Efn Oi Os M f2
    world_lt
      |- ∀M Oi Os n1 n2 w. w ∈ Efn Oi Os m (n1 lt n2) ⇔ n1 < n2
    world_lte
      |- ∀M Oi Os n1 n2 w. w ∈ Efn Oi Os m (n1 lte n2) ⇔ n1 ≤ n2
    world_not
      |- ∀M Oi Os f w. w ∈ Efn Oi Os M (notf f) ⇔ w ∉ Efn Oi Os M f
    world_or
      |- ∀M f1 f2 w.
           w ∈ Efn Oi Os M (f1 orf f2) ⇔
           w ∈ Efn Oi Os M f1 ∨ w ∈ Efn Oi Os M f2
    world_says
      |- ∀M Oi Os P f w.
           w ∈ Efn Oi Os M (P says f) ⇔
           ∀v. v ∈ Jext (jKS M) P w ⇒ v ∈ Efn Oi Os M f
Exporting theory "aclrules" ... done.
Theory "aclrules" took 0.67907s to build
Completed load of aclrulesScript
