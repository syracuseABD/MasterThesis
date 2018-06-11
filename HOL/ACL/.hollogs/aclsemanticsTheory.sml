<<HOL message: Created theory "aclsemantics">>
Saved definition __ "Jext_def"
Saved theorem _____ "name_def"
Saved theorem _____ "meet_def"
Saved theorem _____ "quoting_def"
Saved definition __ "Lifn_def"
Saved definition __ "Lsfn_def"
Saved definition __ "Efn_def"
Saved theorem _____ "TT_def"
Saved theorem _____ "FF_def"
Saved theorem _____ "prop_def"
Saved theorem _____ "notf_def"
Saved theorem _____ "andf_def"
Saved theorem _____ "orf_def"
Saved theorem _____ "impf_def"
Saved theorem _____ "eqf_def"
Saved theorem _____ "says_def"
Saved theorem _____ "speaks_for_def"
Saved theorem _____ "controls_def"
Saved theorem _____ "reps_def"
Saved theorem _____ "domi_def"
Saved theorem _____ "eqi_def"
Saved theorem _____ "doms_def"
Saved theorem _____ "eqs_def"
Saved theorem _____ "eqn_def"
Saved theorem _____ "lte_def"
Saved theorem _____ "lt_def"
Saved theorem _____ "eqf_impf"
Saved theorem _____ "controls_says"
Saved theorem _____ "eqi_domi"
Saved theorem _____ "eqs_doms"
Theory: aclsemantics

Parents:
    aclfoundation

Term constants:
    Efn    :'il po ->
            'is po ->
            (χ, φ, 'pn, 'il, 'is) Kripke ->
            (χ, 'pn, 'il, 'is) Form -> φ -> bool
    Jext   :('pn -> χ -> χ -> bool) -> 'pn Princ -> χ -> χ -> bool
    Lifn   :(β, γ, δ, α, ε) Kripke -> (δ, α) IntLevel -> α
    Lsfn   :(β, γ, δ, ε, α) Kripke -> (δ, α) SecLevel -> α

Definitions:
    Efn_def
      |- (∀Oi Os M. Efn Oi Os M TT = 𝕌(:φ)) ∧
         (∀Oi Os M. Efn Oi Os M FF = ∅) ∧
         (∀Oi Os M p. Efn Oi Os M (prop p) = intpKS M p) ∧
         (∀Oi Os M f. Efn Oi Os M (notf f) = 𝕌(:φ) DIFF Efn Oi Os M f) ∧
         (∀Oi Os M f1 f2.
            Efn Oi Os M (f1 andf f2) =
            Efn Oi Os M f1 ∩ Efn Oi Os M f2) ∧
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
            𝕌(:φ) DIFF
            {w | Jext (jKS M) (P quoting Q) w ⊆ Efn Oi Os M f} ∪
            {w | Jext (jKS M) Q w ⊆ Efn Oi Os M f}) ∧
         (∀Oi Os M intl1 intl2.
            Efn Oi Os M (intl1 domi intl2) =
            if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ)
            else ∅) ∧
         (∀Oi Os M intl2 intl1.
            Efn Oi Os M (intl2 eqi intl1) =
            (if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ)
             else ∅) ∩
            if repPO Oi (Lifn M intl1) (Lifn M intl2) then 𝕌(:φ)
            else ∅) ∧
         (∀Oi Os M secl1 secl2.
            Efn Oi Os M (secl1 doms secl2) =
            if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ)
            else ∅) ∧
         (∀Oi Os M secl2 secl1.
            Efn Oi Os M (secl2 eqs secl1) =
            (if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ)
             else ∅) ∩
            if repPO Os (Lsfn M secl1) (Lsfn M secl2) then 𝕌(:φ)
            else ∅) ∧
         (∀Oi Os M numExp1 numExp2.
            Efn Oi Os M (numExp1 eqn numExp2) =
            if numExp1 = numExp2 then 𝕌(:φ) else ∅) ∧
         (∀Oi Os M numExp1 numExp2.
            Efn Oi Os M (numExp1 lte numExp2) =
            if numExp1 ≤ numExp2 then 𝕌(:φ) else ∅) ∧
         ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 lt numExp2) =
           if numExp1 < numExp2 then 𝕌(:φ) else ∅
    Jext_def
      |- (∀J s. Jext J (Name s) = J s) ∧
         (∀J P1 P2. Jext J (P1 meet P2) = Jext J P1 ∪ᵣ Jext J P2) ∧
         ∀J P1 P2. Jext J (P1 quoting P2) = Jext J P2 ∘ᵣ Jext J P1
    Lifn_def
      |- (∀M l. Lifn M (iLab l) = l) ∧
         ∀M name. Lifn M (il name) = imapKS M name
    Lsfn_def
      |- (∀M l. Lsfn M (sLab l) = l) ∧
         ∀M name. Lsfn M (sl name) = smapKS M name

Theorems:
    FF_def
      |- ∀Oi Os M. Efn Oi Os M FF = ∅
    TT_def
      |- ∀Oi Os M. Efn Oi Os M TT = 𝕌(:φ)
    andf_def
      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 andf f2) = Efn Oi Os M f1 ∩ Efn Oi Os M f2
    controls_def
      |- ∀Oi Os M P f.
           Efn Oi Os M (P controls f) =
           𝕌(:φ) DIFF {w | Jext (jKS M) P w ⊆ Efn Oi Os M f} ∪
           Efn Oi Os M f
    controls_says
      |- ∀M P f.
           Efn Oi Os M (P controls f) = Efn Oi Os M (P says f impf f)
    domi_def
      |- ∀Oi Os M intl1 intl2.
           Efn Oi Os M (intl1 domi intl2) =
           if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ) else ∅
    doms_def
      |- ∀Oi Os M secl1 secl2.
           Efn Oi Os M (secl1 doms secl2) =
           if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ) else ∅
    eqf_def
      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 eqf f2) =
           (𝕌(:φ) DIFF Efn Oi Os M f1 ∪ Efn Oi Os M f2) ∩
           (𝕌(:φ) DIFF Efn Oi Os M f2 ∪ Efn Oi Os M f1)
    eqf_impf
      |- ∀M f1 f2.
           Efn Oi Os M (f1 eqf f2) =
           Efn Oi Os M ((f1 impf f2) andf (f2 impf f1))
    eqi_def
      |- ∀Oi Os M intl2 intl1.
           Efn Oi Os M (intl2 eqi intl1) =
           (if repPO Oi (Lifn M intl2) (Lifn M intl1) then 𝕌(:φ)
            else ∅) ∩
           if repPO Oi (Lifn M intl1) (Lifn M intl2) then 𝕌(:φ) else ∅
    eqi_domi
      |- ∀M intL1 intL2.
           Efn Oi Os M (intL1 eqi intL2) =
           Efn Oi Os M (intL2 domi intL1 andf intL1 domi intL2)
    eqn_def
      |- ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 eqn numExp2) =
           if numExp1 = numExp2 then 𝕌(:φ) else ∅
    eqs_def
      |- ∀Oi Os M secl2 secl1.
           Efn Oi Os M (secl2 eqs secl1) =
           (if repPO Os (Lsfn M secl2) (Lsfn M secl1) then 𝕌(:φ)
            else ∅) ∩
           if repPO Os (Lsfn M secl1) (Lsfn M secl2) then 𝕌(:φ) else ∅
    eqs_doms
      |- ∀M secL1 secL2.
           Efn Oi Os M (secL1 eqs secL2) =
           Efn Oi Os M (secL2 doms secL1 andf secL1 doms secL2)
    impf_def
      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 impf f2) =
           𝕌(:φ) DIFF Efn Oi Os M f1 ∪ Efn Oi Os M f2
    lt_def
      |- ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 lt numExp2) =
           if numExp1 < numExp2 then 𝕌(:φ) else ∅
    lte_def
      |- ∀Oi Os M numExp1 numExp2.
           Efn Oi Os M (numExp1 lte numExp2) =
           if numExp1 ≤ numExp2 then 𝕌(:φ) else ∅
    meet_def
      |- ∀J P1 P2. Jext J (P1 meet P2) = Jext J P1 ∪ᵣ Jext J P2
    name_def
      |- ∀J s. Jext J (Name s) = J s
    notf_def
      |- ∀Oi Os M f. Efn Oi Os M (notf f) = 𝕌(:φ) DIFF Efn Oi Os M f
    orf_def
      |- ∀Oi Os M f1 f2.
           Efn Oi Os M (f1 orf f2) = Efn Oi Os M f1 ∪ Efn Oi Os M f2
    prop_def
      |- ∀Oi Os M p. Efn Oi Os M (prop p) = intpKS M p
    quoting_def
      |- ∀J P1 P2. Jext J (P1 quoting P2) = Jext J P2 ∘ᵣ Jext J P1
    reps_def
      |- ∀Oi Os M P Q f.
           Efn Oi Os M (reps P Q f) =
           𝕌(:φ) DIFF
           {w | Jext (jKS M) (P quoting Q) w ⊆ Efn Oi Os M f} ∪
           {w | Jext (jKS M) Q w ⊆ Efn Oi Os M f}
    says_def
      |- ∀Oi Os M P f.
           Efn Oi Os M (P says f) =
           {w | Jext (jKS M) P w ⊆ Efn Oi Os M f}
    speaks_for_def
      |- ∀Oi Os M P Q.
           Efn Oi Os M (P speaks_for Q) =
           if Jext (jKS M) Q ⊆ᵣ Jext (jKS M) P then 𝕌(:φ) else ∅
Exporting theory "aclsemantics" ... done.
Theory "aclsemantics" took 0.65823s to build
Completed load of aclsemanticsScript
