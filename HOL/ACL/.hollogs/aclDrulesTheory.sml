<<HOL message: Created theory "aclDrules">>
Saved theorem _____ "INTER_EQ_UNIV"
Saved theorem _____ "Simplification1"
Saved theorem _____ "Simplification2"
Saved theorem _____ "Controls"
Saved theorem _____ "Reps"
Saved theorem _____ "Rep_Controls_Eq"
Saved theorem _____ "Rep_Says"
Saved theorem _____ "Conjunction"
Saved theorem _____ "Disjunction1"
Saved theorem _____ "Disjunction2"
Saved theorem _____ "Modus_Tollens"
Saved theorem _____ "Double_Negation"
Saved theorem _____ "Hypothetical_Syllogism"
Saved theorem _____ "Disjunctive_Syllogism"
Saved theorem _____ "Says_Simplification1"
Saved theorem _____ "Says_Simplification2"
Saved theorem _____ "Derived_Speaks_For"
Saved theorem _____ "Derived_Controls"
Saved theorem _____ "sl_doms"
Saved theorem _____ "il_domi"
Saved theorem _____ "eqn_lte"
Saved theorem _____ "eqn_lt"
Saved theorem _____ "eqn_eqn"
Theory: aclDrules

Parents:
    aclrules

Theorems:
    Conjunction
      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 ⇒
           (M,Oi,Os) sat f2 ⇒
           (M,Oi,Os) sat f1 andf f2
    Controls
      |- ∀M Oi Os P f.
           (M,Oi,Os) sat P says f ⇒
           (M,Oi,Os) sat P controls f ⇒
           (M,Oi,Os) sat f
    Derived_Controls
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P speaks_for Q ⇒
           (M,Oi,Os) sat Q controls f ⇒
           (M,Oi,Os) sat P controls f
    Derived_Speaks_For
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat P speaks_for Q ⇒
           (M,Oi,Os) sat P says f ⇒
           (M,Oi,Os) sat Q says f
    Disjunction1
      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f1 ⇒ (M,Oi,Os) sat f1 orf f2
    Disjunction2
      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f2 ⇒ (M,Oi,Os) sat f1 orf f2
    Disjunctive_Syllogism
      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 orf f2 ⇒
           (M,Oi,Os) sat notf f1 ⇒
           (M,Oi,Os) sat f2
    Double_Negation
      |- ∀M Oi Os f. (M,Oi,Os) sat notf (notf f) ⇒ (M,Oi,Os) sat f
    Hypothetical_Syllogism
      |- ∀M Oi Os f1 f2 f3.
           (M,Oi,Os) sat f1 impf f2 ⇒
           (M,Oi,Os) sat f2 impf f3 ⇒
           (M,Oi,Os) sat f1 impf f3
    INTER_EQ_UNIV
      |- ∀s1 s2. (s1 ∩ s2 = 𝕌(:α)) ⇔ (s1 = 𝕌(:α)) ∧ (s2 = 𝕌(:α))
    Modus_Tollens
      |- ∀M Oi Os f1 f2.
           (M,Oi,Os) sat f1 impf f2 ⇒
           (M,Oi,Os) sat notf f2 ⇒
           (M,Oi,Os) sat notf f1
    Rep_Controls_Eq
      |- ∀M Oi Os A B f.
           (M,Oi,Os) sat reps A B f ⇔ (M,Oi,Os) sat A controls B says f
    Rep_Says
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat reps P Q f ⇒
           (M,Oi,Os) sat P quoting Q says f ⇒
           (M,Oi,Os) sat Q says f
    Reps
      |- ∀M Oi Os P Q f.
           (M,Oi,Os) sat reps P Q f ⇒
           (M,Oi,Os) sat P quoting Q says f ⇒
           (M,Oi,Os) sat Q controls f ⇒
           (M,Oi,Os) sat f
    Says_Simplification1
      |- ∀M Oi Os P f1 f2.
           (M,Oi,Os) sat P says (f1 andf f2) ⇒ (M,Oi,Os) sat P says f1
    Says_Simplification2
      |- ∀M Oi Os P f1 f2.
           (M,Oi,Os) sat P says (f1 andf f2) ⇒ (M,Oi,Os) sat P says f2
    Simplification1
      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f1 andf f2 ⇒ (M,Oi,Os) sat f1
    Simplification2
      |- ∀M Oi Os f1 f2. (M,Oi,Os) sat f1 andf f2 ⇒ (M,Oi,Os) sat f2
    eqn_eqn
      |- (M,Oi,Os) sat c1 eqn n1 ⇒
         (M,Oi,Os) sat c2 eqn n2 ⇒
         (M,Oi,Os) sat n1 eqn n2 ⇒
         (M,Oi,Os) sat c1 eqn c2
    eqn_lt
      |- (M,Oi,Os) sat c1 eqn n1 ⇒
         (M,Oi,Os) sat c2 eqn n2 ⇒
         (M,Oi,Os) sat n1 lt n2 ⇒
         (M,Oi,Os) sat c1 lt c2
    eqn_lte
      |- (M,Oi,Os) sat c1 eqn n1 ⇒
         (M,Oi,Os) sat c2 eqn n2 ⇒
         (M,Oi,Os) sat n1 lte n2 ⇒
         (M,Oi,Os) sat c1 lte c2
    il_domi
      |- ∀M Oi Os P Q l1 l2.
           (M,Oi,Os) sat il P eqi l1 ⇒
           (M,Oi,Os) sat il Q eqi l2 ⇒
           (M,Oi,Os) sat l2 domi l1 ⇒
           (M,Oi,Os) sat il Q domi il P
    sl_doms
      |- ∀M Oi Os P Q l1 l2.
           (M,Oi,Os) sat sl P eqs l1 ⇒
           (M,Oi,Os) sat sl Q eqs l2 ⇒
           (M,Oi,Os) sat l2 doms l1 ⇒
           (M,Oi,Os) sat sl Q doms sl P
Exporting theory "aclDrules" ... done.
Theory "aclDrules" took 0.57643s to build
Completed load of aclDrulesScript
