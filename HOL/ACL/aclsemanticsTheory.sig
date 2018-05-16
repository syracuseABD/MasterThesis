signature aclsemanticsTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val Efn_def : thm
    val Jext_def : thm
    val Lifn_def : thm
    val Lsfn_def : thm

  (*  Theorems  *)
    val FF_def : thm
    val TT_def : thm
    val andf_def : thm
    val controls_def : thm
    val controls_says : thm
    val domi_def : thm
    val doms_def : thm
    val eqf_def : thm
    val eqf_impf : thm
    val eqi_def : thm
    val eqi_domi : thm
    val eqn_def : thm
    val eqs_def : thm
    val eqs_doms : thm
    val impf_def : thm
    val lt_def : thm
    val lte_def : thm
    val meet_def : thm
    val name_def : thm
    val notf_def : thm
    val orf_def : thm
    val prop_def : thm
    val quoting_def : thm
    val reps_def : thm
    val says_def : thm
    val speaks_for_def : thm

  val aclsemantics_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclfoundation] Parent theory of "aclsemantics"

   [Efn_def]  Definition

      |- (∀Oi Os M. Efn Oi Os M TT = 𝕌(:φ)) ∧
         (∀Oi Os M. Efn Oi Os M FF = ∅) ∧
         (∀Oi Os M p. Efn Oi Os M (prop p) = intpKS M p) ∧
         (∀Oi Os M f. Efn Oi Os M (notf f) = 𝕌(:φ) DIFF Efn Oi Os M f) ∧
         (∀Oi Os M f1 f2.
            Efn Oi Os M (f1 andf f2) = Efn Oi Os M f1 ∩ Efn Oi Os M f2) ∧
         (∀Oi Os M f1 f2.
            Efn Oi Os M (f1 orf f2) = Efn Oi Os M f1 ∪ Efn Oi Os M f2) ∧
         (∀Oi Os M f1 f2.
            Efn Oi Os M (f1 impf f2) =
            𝕌(:φ) DIFF Efn Oi Os M f1 ∪ Efn Oi Os M f2) ∧
         (∀Oi Os M f1 f2.
            Efn Oi Os M (f1 eqf f2) =
            (𝕌(:φ) DIFF Efn Oi Os M f1 ∪ Efn Oi Os M f2) ∩
            (𝕌(:φ) DIFF Efn Oi Os M f2 ∪ Efn Oi Os M f1)) ∧
         (∀Oi Os M P f.
            Efn Oi Os M (P says f) =
            {w | Jext (jKS M) P w ⊆ Efn Oi Os M f}) ∧
         (∀Oi Os M P Q.
            Efn Oi Os M (P speaks_for Q) =
            if Jext (jKS M) Q ⊆ᵣ Jext (jKS M) P then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M P f.
            Efn Oi Os M (P controls f) =
            𝕌(:φ) DIFF {w | Jext (jKS M) P w ⊆ Efn Oi Os M f} ∪
            Efn Oi Os M f) ∧
         (∀Oi Os M P Q f.
            Efn Oi Os M (reps P Q f) =
            𝕌(:φ) DIFF {w | Jext (jKS M) (P quoting Q) w ⊆ Efn Oi Os M f} ∪
            {w | Jext (jKS M) Q w ⊆ Efn Oi Os M f}) ∧
         (∀Oi Os M intl1 intl2.
            Efn Oi Os M (intl1 domi intl2) =
            if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M intl2 intl1.
            Efn Oi Os M (intl2 eqi intl1) =
            (if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ) else ∅) ∩
            if repPO Oi (Lifn M intl1) (Lifn M intl2) then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M secl1 secl2.
            Efn Oi Os M (secl1 doms secl2) =
            if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M secl2 secl1.
            Efn Oi Os M (secl2 eqs secl1) =
            (if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ) else ∅) ∩
            if repPO Os (Lsfn M secl1) (Lsfn M secl2) then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M numExp1 numExp2.
            Efn Oi Os M (numExp1 eqn numExp2) =
            if numExp1 = numExp2 then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M numExp1 numExp2.
            Efn Oi Os M (numExp1 lte numExp2) =
            if numExp1 ≤ numExp2 then 𝕌(:φ) else ∅) ∧
         ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 lt numExp2) =
           if numExp1 < numExp2 then 𝕌(:φ) else ∅

   [Jext_def]  Definition

      |- (∀J s. Jext J (Name s) = J s) ∧
         (∀J P1 P2. Jext J (P1 meet P2) = Jext J P1 ∪ᵣ Jext J P2) ∧
         ∀J P1 P2. Jext J (P1 quoting P2) = Jext J P2 ∘ᵣ Jext J P1

   [Lifn_def]  Definition

      |- (∀M l. Lifn M (iLab l) = l) ∧
         ∀M name. Lifn M (il name) = imapKS M name

   [Lsfn_def]  Definition

      |- (∀M l. Lsfn M (sLab l) = l) ∧
         ∀M name. Lsfn M (sl name) = smapKS M name

   [FF_def]  Theorem

      |- ∀Oi Os M. Efn Oi Os M FF = ∅

   [TT_def]  Theorem

      |- ∀Oi Os M. Efn Oi Os M TT = 𝕌(:φ)

   [andf_def]  Theorem

      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 andf f2) = Efn Oi Os M f1 ∩ Efn Oi Os M f2

   [controls_def]  Theorem

      |- ∀Oi Os M P f.
           Efn Oi Os M (P controls f) =
           𝕌(:φ) DIFF {w | Jext (jKS M) P w ⊆ Efn Oi Os M f} ∪
           Efn Oi Os M f

   [controls_says]  Theorem

      |- ∀M P f. Efn Oi Os M (P controls f) = Efn Oi Os M (P says f impf f)

   [domi_def]  Theorem

      |- ∀Oi Os M intl1 intl2.
           Efn Oi Os M (intl1 domi intl2) =
           if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ) else ∅

   [doms_def]  Theorem

      |- ∀Oi Os M secl1 secl2.
           Efn Oi Os M (secl1 doms secl2) =
           if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ) else ∅

   [eqf_def]  Theorem

      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 eqf f2) =
           (𝕌(:φ) DIFF Efn Oi Os M f1 ∪ Efn Oi Os M f2) ∩
           (𝕌(:φ) DIFF Efn Oi Os M f2 ∪ Efn Oi Os M f1)

   [eqf_impf]  Theorem

      |- ∀M f1 f2.
           Efn Oi Os M (f1 eqf f2) =
           Efn Oi Os M ((f1 impf f2) andf (f2 impf f1))

   [eqi_def]  Theorem

      |- ∀Oi Os M intl2 intl1.
           Efn Oi Os M (intl2 eqi intl1) =
           (if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ) else ∅) ∩
           if repPO Oi (Lifn M intl1) (Lifn M intl2) then 𝕌(:φ) else ∅

   [eqi_domi]  Theorem

      |- ∀M intL1 intL2.
           Efn Oi Os M (intL1 eqi intL2) =
           Efn Oi Os M (intL2 domi intL1 andf intL1 domi intL2)

   [eqn_def]  Theorem

      |- ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 eqn numExp2) =
           if numExp1 = numExp2 then 𝕌(:φ) else ∅

   [eqs_def]  Theorem

      |- ∀Oi Os M secl2 secl1.
           Efn Oi Os M (secl2 eqs secl1) =
           (if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ) else ∅) ∩
           if repPO Os (Lsfn M secl1) (Lsfn M secl2) then 𝕌(:φ) else ∅

   [eqs_doms]  Theorem

      |- ∀M secL1 secL2.
           Efn Oi Os M (secL1 eqs secL2) =
           Efn Oi Os M (secL2 doms secL1 andf secL1 doms secL2)

   [impf_def]  Theorem

      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 impf f2) =
           𝕌(:φ) DIFF Efn Oi Os M f1 ∪ Efn Oi Os M f2

   [lt_def]  Theorem

      |- ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 lt numExp2) =
           if numExp1 < numExp2 then 𝕌(:φ) else ∅

   [lte_def]  Theorem

      |- ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 lte numExp2) =
           if numExp1 ≤ numExp2 then 𝕌(:φ) else ∅

   [meet_def]  Theorem

      |- ∀J P1 P2. Jext J (P1 meet P2) = Jext J P1 ∪ᵣ Jext J P2

   [name_def]  Theorem

      |- ∀J s. Jext J (Name s) = J s

   [notf_def]  Theorem

      |- ∀Oi Os M f. Efn Oi Os M (notf f) = 𝕌(:φ) DIFF Efn Oi Os M f

   [orf_def]  Theorem

      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 orf f2) = Efn Oi Os M f1 ∪ Efn Oi Os M f2

   [prop_def]  Theorem

      |- ∀Oi Os M p. Efn Oi Os M (prop p) = intpKS M p

   [quoting_def]  Theorem

      |- ∀J P1 P2. Jext J (P1 quoting P2) = Jext J P2 ∘ᵣ Jext J P1

   [reps_def]  Theorem

      |- ∀Oi Os M P Q f.
           Efn Oi Os M (reps P Q f) =
           𝕌(:φ) DIFF {w | Jext (jKS M) (P quoting Q) w ⊆ Efn Oi Os M f} ∪
           {w | Jext (jKS M) Q w ⊆ Efn Oi Os M f}

   [says_def]  Theorem

      |- ∀Oi Os M P f.
           Efn Oi Os M (P says f) = {w | Jext (jKS M) P w ⊆ Efn Oi Os M f}

   [speaks_for_def]  Theorem

      |- ∀Oi Os M P Q.
           Efn Oi Os M (P speaks_for Q) =
           if Jext (jKS M) Q ⊆ᵣ Jext (jKS M) P then 𝕌(:φ) else ∅


*)
end
