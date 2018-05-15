(**************************************************** SecurityLevels: Created by S-K Chin, 4/9/2011* Based on Examples 13.1, 13.2, and 13.3 in textbook**************************************************)(************ Add the path to where aclfoundationTheory resides.* Then, add the path to HOL's search path.***********)(* Interactive modeval aclPath1 = "/home/chin/Documents/HOL/ACL";val aclPath2 = "/users/shiu-kaichin/Documents/RESEARCH/HOL/ACL";loadPath := aclPath1::(aclPath2::(!loadPath));*)(************ Load necessary theories***********)(* Interactive modeset_trace "Unicode" 0;app load ["pred_setTheory", "relationTheory", "PFset_conv",          "aclfoundationTheory","aclsemanticsTheory", "aclrulesTheory"];*)structure SecurityLevelsScript = structopen HolKernel boolLib Parse bossLibopen pred_setTheory relationTheory PFset_conv;open aclfoundationTheory aclsemanticsTheory aclrulesTheory pairTheory;(************ create a new theory***********)val _ = new_theory "SecurityLevels";(*************************************************These are the security classifications:************************************************* Hi and Lo** Define the Security Classification Labels************************************************)val _ = Hol_datatype `SClass = Lo | Hi`;(************************************************* We have the following categories:* Bin1 and Bin2************************************************)val _ = Hol_datatype    `Categories = Bin1 | Bin2`;(*************************************************** * We aim at defining a po which is the product of an * enumerated order on {Hi,Lo} with the Subset * partial order on (Categories set). The domain of* this partial order is what we may consider * "security labels"; that is, there is no call for * another Hol_datatype.***************************************************)(******* Define the accessor functions*****)(* SClass retrieves the security classification from a label *)val getSClass_def =  Define `getSClass = (FST:SClass # Categories set -> SClass)`;(* SCat retrieves the set of categories from a label *)val getSCat_def =  Define `getSCat = (SND:SClass # Categories set -> Categories set)`;(******** Properties of accessor functions are those of FST and SND*******)(******** Define the ordering on SClass with Lo on the bottom* SCorder y x = y <= x*******)val SCOrder_def = Define `SCOrder y x =  if x = Hi then T else if y = Hi then F else T`;(************ Tabulate SCOrder***********)val SCO_table = foldl (uncurry append) []   (map (fn x => map (fn y =>     REWRITE_CONV [SCOrder_def, TypeBase.distinct_of (Type`:SClass`),                          GSYM (TypeBase.distinct_of (Type`:SClass`))]            (Term`SCOrder ^x ^y`))            [``Hi``,``Lo``])            [``Hi``,``Lo``]);(* SCO_table = [|- SCOrder Lo Hi <=> T, |- SCOrder Lo Lo <=> T, |- SCOrder Hi Hi <=> T,  |- SCOrder Hi Lo <=> F]*)(************** Show that SCOrder is antisymmetric, reflexive, transitive, and* a partial order.*************)val SCOrder_antisymmetric =store_thm  ("SCOrder_antisymmetric",  ``antisymmetric SCOrder``,  REWRITE_TAC [antisymmetric_def] THEN  Cases THEN  Cases THEN  REWRITE_TAC SCO_table);val SCOrder_reflexive =store_thm  ("SCOrder_reflexive",  ``reflexive SCOrder``,  REWRITE_TAC [reflexive_def] THEN  Cases THEN  REWRITE_TAC SCO_table);val SCOrder_transitive =store_thm  ("SCOrder_transitive",  ``transitive SCOrder``,  REWRITE_TAC [transitive_def] THEN  Cases THEN  Cases THEN  Cases THEN REWRITE_TAC SCO_table);val SCOrder_WO =store_thm   ("SCOrder_WO",    ``WeakOrder SCOrder``,   REWRITE_TAC [SCOrder_antisymmetric,                SCOrder_reflexive, SCOrder_transitive,WeakOrder]);(**************** Define classification level po***************)val SCOrder_PO_def =    Define `SCOrder_PO = PO SCOrder`;val repPO_SCOrder_PO =    store_thm    ("repPO_SCOrder_PO",     Term`repPO SCOrder_PO = SCOrder`,    REWRITE_TAC     [SCOrder_PO_def, po_bij,     EQ_MP (ISPEC (Term`SCOrder`) WO_repPO) SCOrder_WO]);(*************** Partial order properties on SClass for any partial ordering on IClass***************)val SClass_PO_reflexive =   store_thm( "SClass_PO_reflexive",   Term`!(l:('pName,SClass)SecLevel)   (M:('propVar,'Worlds,'pName,'Int,SClass)Kripke)    (Oi:'Int po)(Os:SClass po).   (M,Oi,Os) sat (l doms l):('propVar,'pName,'Int,SClass)Form`,   REWRITE_TAC [doms_reflexive]);val SClass_PO_transitive =   store_thm(   "SClass_PO_transitive",   Term`!(l1:('pName,SClass)SecLevel)         (l2:('pName,SClass)SecLevel)         (l3:('pName,SClass)SecLevel)         (M:('propVar,'Worlds,'pName,'Int,SClass)Kripke)         (Oi:'Int po)(Os:SClass po).         (M,Oi,Os) sat (l1 doms l2):('propVar,'pName,'Int,SClass)Form ==>	 (M,Oi,Os) sat (l2 doms l3):('propVar,'pName,'Int,SClass)Form ==>	 (M,Oi,Os) sat (l1 doms l3):('propVar,'pName,'Int,SClass)Form`,   REWRITE_TAC [doms_transitive]);val SClass_PO_antisymmetric =   store_thm(   "SClass_PO_antisymmetric",   Term`!(l1:('pName,SClass)SecLevel)         (l2:('pName,SClass)SecLevel)         (M:('propVar,'Worlds,'pName,'Int,SClass)Kripke)         (Oi:'Int po)(Os:SClass po).         (M,Oi,Os) sat (l1 doms l2):('propVar,'pName,'Int,SClass)Form ==>	 (M,Oi,Os) sat (l2 doms l1):('propVar,'pName,'Int,SClass)Form ==>	 (M,Oi,Os) sat (l1 eqs l2):('propVar,'pName,'Int,SClass)Form`,   REWRITE_TAC [doms_antisymmetric]);(*************** Gather up one big theorem for SL_DOMS to use**************)val SCOrder_simp =    save_thm    ("SCOrder_simp",    CONJ     repPO_SCOrder_PO     (CONJ      SCOrder_def     (CONJ       (TypeBase.distinct_of (Type`:SClass`))      (GSYM (TypeBase.distinct_of (Type`:SClass`))))));(* REWRITE-ing with the theorem SCOrder_simp (or with the theorem list   SCO_table if you prefer) will evaluate an application of SCOrder   to two constants to a truth value. *)(******************************)(* Ordering on Categories set *)(******************************)(* We build what amounts to the Hasse diagram *)val Categories_SUBSET =  save_thm  ("Categories_SUBSET",   LIST_CONJ   [(TAC_PROOF(([],``{Bin1} SUBSET {Bin1; Bin2}``),    (REWRITE_TAC [SUBSET_DEF] THEN    Induct THEN    REWRITE_TAC     [(IN_CONV reduceLib.REDUCE_CONV ``Bin1 IN {Bin1;Bin2}``),    (IN_CONV reduceLib.REDUCE_CONV ``Bin2 IN {Bin1;Bin2}``)]))),    (TAC_PROOF(([],``{Bin2} SUBSET {Bin1; Bin2}``),    (REWRITE_TAC [SUBSET_DEF] THEN    Induct THEN    REWRITE_TAC     [(IN_CONV reduceLib.REDUCE_CONV ``Bin1 IN {Bin1;Bin2}``),    (IN_CONV reduceLib.REDUCE_CONV ``Bin2 IN {Bin1;Bin2}``)]))),    (TAC_PROOF(([],``{} SUBSET {Bin1}``),    (REWRITE_TAC [EMPTY_SUBSET]))),    (TAC_PROOF(([],``{} SUBSET {Bin2}``),    (REWRITE_TAC [EMPTY_SUBSET])))]);val Categories_NOTIN =save_thm("Categories_NOTIN", LIST_CONJ [(TAC_PROOF(([],``Bin2 NOTIN {Bin1}``),  (REWRITE_TAC  [DELETE_NON_ELEMENT,   (DELETE_CONV     (REWRITE_CONV [TypeBase.distinct_of(Type`:Categories`)])     ``{Bin1} DELETE Bin2``)]))),  (TAC_PROOF(([],``Bin1 NOTIN {Bin2}``),  (REWRITE_TAC  [DELETE_NON_ELEMENT,   (DELETE_CONV    (REWRITE_CONV [GSYM(TypeBase.distinct_of(Type`:Categories`))])    ``{Bin2} DELETE Bin1``)])))]);(******** Define OSec*******)val OSec_def = Define `OSec = prod_PO SCOrder_PO (Subset_PO:(Categories -> bool) po)`;(******* Properties of OSec******)val repPO_OSec =store_thm    ("repPO_OSec",    Term    `!sl1 sl2.       repPO OSec sl1 sl2 =       SCOrder (getSClass sl1) (getSClass sl2) /\      (getSCat sl1) SUBSET (getSCat sl2)`,    REWRITE_TAC     [getSClass_def, getSCat_def, OSec_def, repPO_prod_PO,     repPO_Subset_PO, repPO_SCOrder_PO, RPROD_THM]);(***********************************)(* Conversion for OSec             *)(* also in SecurityLevels_conv.sml *)(***********************************)fun OSec_CONV term =  REWRITE_CONV  [sat_def,doms_def,Lsfn_def,SCOrder_simp,GSYM(UNIV_NOT_EMPTY),repPO_OSec,   getSClass_def,getSCat_def, Categories_SUBSET, SUBSET_REFL, EMPTY_SUBSET] term;(*********************************************************)(* Generate the Hasse diagram for OSec, i.e., OSec minus *)(* the relations due to reflexivity and transitivity.    *)(*********************************************************)(***************************************************************************)(* OSec_ordering1: for each Security Level (TopSecret, Secret, etc.)       *)(* develop the partial order based on pairs of Categories sets related     *)(* to each other at the same Classification level                          *)(***************************************************************************)val OSec_ordering1 = foldl (uncurry append) [](map (fn x => map (fn y =>     OSec_CONV     (Term`(M:('propVar,'b,'pName,'Int,SClass#Categories set)Kripke,Oi:'Int po,OSec) sat      ((sLab (^x,^(fst y))) doms (sLab (^x,^(snd y)))):    ('propVar,'pName,'Int,SClass#Categories set)Form`))           [(``{Bin1;Bin2}``,``{Bin1}``),(``{Bin1;Bin2}``,``{Bin2}``),	    (``{Bin1}``,``{}:Categories set``),(``{Bin2}``,``{}:Categories set``)])           [``Hi``,``Lo``]);(***************************************************************************)(* OSec_ordering: for each Categories set (e.g., {Bin1;Bin2})                *)(* develop the partial order based on pairs of security levels (e.g.,      *)(* (TopSecret, Secret)).                                                   *)(***************************************************************************)val OSec_ordering2 = foldl (uncurry append) [](map (fn x => map (fn y =>     OSec_CONV     (Term`(M:('propVar,'b,'pName,'Int,SClass#Categories set)Kripke,Oi:'Int po,OSec) sat      ((sLab (^(fst y),^x)) doms (sLab (^(snd y),^x))):    ('propVar,'pName,'Int,SClass#Categories set)Form`))           [(``Hi``,``Lo``)])           [``{Bin1;Bin2}``,``{Bin1}``,``{Bin2}``,``{}:Categories set``]);(***************************************************************************)(* Bundle OSec_ordering1 and OSec_ordering2 together for the entire Hasse  *)(* diagram.                                                                *)(***************************************************************************)val OSec_simp =    save_thm   ("OSec_simp",   LIST_CONJ    (map (REWRITE_RULE [])(append OSec_ordering1 OSec_ordering2)));(*******************************************************************************)(* Now the standard properties of reflexivity, transitivity, and antisymmetry. *)(* Note that no specific ordering Os is given. That is taken care of by        *)(* OSec in OSec_simp.  Combined with the reflexive, transitive, and            *)(* antisymmetry theorems, OSec will be instantiated appropriately as the       *)(* specific ordering on the labels.                                            *)(*******************************************************************************)val OSec_reflexive =    store_thm("OSec_reflexive",   Term`!(l:('pName,SClass#(Categories set))SecLevel)   (M:('propVar,'Worlds,'pName,'Int,SClass#Categories set)Kripke)    (Oi:'Int po)(Os:(SClass#Categories set)po).   (M,Oi,Os) sat (l doms l):('propVar,'pName,'Int,SClass#Categories set)Form`,   REWRITE_TAC[doms_reflexive]);val OSec_transitive =   store_thm(   "OSec_transitive",   Term`!(l1:('pName,SClass#(Categories set))SecLevel)         (l2:('pName,SClass#(Categories set))SecLevel)         (l3:('pName,SClass#(Categories set))SecLevel)         (M:('propVar,'Worlds,'pName,'Int,SClass#(Categories set))Kripke)         (Oi:'Int po)(Os:(SClass#(Categories set))po).         (M,Oi,Os) sat (l1 doms l2):('propVar,'pName,'Int,SClass#Categories set)Form ==>	 (M,Oi,Os) sat (l2 doms l3):('propVar,'pName,'Int,SClass#Categories set)Form ==>	 (M,Oi,Os) sat (l1 doms l3):('propVar,'pName,'Int,SClass#Categories set)Form`,   REWRITE_TAC [doms_transitive]);val OSec_antisymmetric =   store_thm(   "OSec_antisymmetric",   Term`!(l1:('pName,SClass#(Categories set))SecLevel)         (l2:('pName,SClass#(Categories set))SecLevel)         (M:('propVar,'Worlds,'pName,'Int,SClass#(Categories set))Kripke)         (Oi:'Int po)(Os:(SClass#Categories set)po).         (M,Oi,Os) sat (l1 doms l2):('propVar,'pName,'Int,SClass#Categories set)Form ==>	 (M,Oi,Os) sat (l2 doms l1):('propVar,'pName,'Int,SClass#Categories set)Form ==>	 (M,Oi,Os) sat (l1 eqs l2):('propVar,'pName,'Int,SClass#Categories set)Form`,   REWRITE_TAC [doms_antisymmetric]);val _ = export_theory ();val _ = print_theory "SecurityLevels";end (* structure *)