structure aclDrulesTheory :> aclDrulesTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading aclDrulesTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclrulesTheory
  in end;
  val _ = Theory.link_parents
          ("aclDrules",
          Arbnum.fromString "1526502743",
          Arbnum.fromString "903081")
          [("aclrules",
           Arbnum.fromString "1526502741",
           Arbnum.fromString "577788")];
  val _ = Theory.incorporate_types "aclDrules" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("aclfoundation", "Princ"), ID("aclfoundation", "Kripke"),
   ID("aclfoundation", "po"), ID("num", "num"),
   ID("aclfoundation", "Form"), ID("aclfoundation", "IntLevel"),
   ID("aclfoundation", "SecLevel"), ID("min", "fun"), ID("min", "bool"),
   ID("bool", "!"), ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("pred_set", "INTER"),
   ID("pred_set", "UNIV"), ID("aclfoundation", "andf"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("aclfoundation", "il"), ID("aclfoundation", "impf"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("aclfoundation", "sl"), ID("aclfoundation", "speaks_for")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'c", TYOP [0, 0], TYV "'e", TYV "'d", TYV "'b", TYV "'a",
   TYOP [1, 5, 4, 0, 3, 2], TYOP [2, 3], TYOP [2, 2], TYOP [3],
   TYOP [4, 5, 0, 3, 2], TYOP [5, 0, 3], TYOP [6, 0, 2], TYOP [8],
   TYOP [7, 5, 13], TYOP [7, 0, 13], TYOP [7, 15, 13], TYOP [7, 10, 13],
   TYOP [7, 17, 13], TYOP [7, 11, 13], TYOP [7, 19, 13], TYOP [7, 6, 13],
   TYOP [7, 21, 13], TYOP [7, 1, 13], TYOP [7, 23, 13], TYOP [7, 12, 13],
   TYOP [7, 25, 13], TYOP [7, 14, 13], TYOP [7, 27, 13], TYOP [7, 7, 13],
   TYOP [7, 29, 13], TYOP [7, 8, 13], TYOP [7, 31, 13], TYOP [11, 7, 8],
   TYOP [11, 6, 33], TYOP [7, 33, 34], TYOP [7, 6, 35], TYOP [7, 8, 33],
   TYOP [7, 7, 37], TYOP [7, 13, 13], TYOP [7, 13, 39], TYOP [7, 14, 27],
   TYOP [7, 14, 14], TYOP [7, 14, 42], TYOP [7, 10, 10], TYOP [7, 10, 44],
   TYOP [7, 1, 44], TYOP [7, 11, 10], TYOP [7, 11, 47], TYOP [7, 12, 10],
   TYOP [7, 12, 49], TYOP [7, 9, 10], TYOP [7, 9, 51], TYOP [7, 0, 11],
   TYOP [7, 1, 1], TYOP [7, 1, 54], TYOP [7, 1, 46], TYOP [7, 34, 17],
   TYOP [7, 0, 12], TYOP [7, 1, 10], TYOP [7, 1, 59]]
  end
  val _ = Theory.incorporate_consts "aclDrules" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("A", 1), TMV("B", 1), TMV("M", 6), TMV("Oi", 7), TMV("Os", 8),
   TMV("P", 0), TMV("P", 1), TMV("Q", 0), TMV("Q", 1), TMV("c1", 9),
   TMV("c2", 9), TMV("f", 10), TMV("f1", 10), TMV("f2", 10), TMV("f3", 10),
   TMV("l1", 11), TMV("l1", 12), TMV("l2", 11), TMV("l2", 12),
   TMV("n1", 9), TMV("n2", 9), TMV("s1", 14), TMV("s2", 14), TMC(9, 16),
   TMC(9, 18), TMC(9, 20), TMC(9, 22), TMC(9, 24), TMC(9, 26), TMC(9, 28),
   TMC(9, 30), TMC(9, 32), TMC(10, 36), TMC(10, 38), TMC(12, 40),
   TMC(13, 40), TMC(13, 41), TMC(14, 40), TMC(15, 43), TMC(16, 14),
   TMC(17, 45), TMC(18, 46), TMC(19, 48), TMC(20, 50), TMC(21, 48),
   TMC(22, 52), TMC(23, 50), TMC(24, 53), TMC(25, 45), TMC(26, 52),
   TMC(27, 52), TMC(28, 44), TMC(29, 45), TMC(30, 55), TMC(31, 56),
   TMC(32, 57), TMC(33, 46), TMC(34, 58), TMC(35, 60)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op INTER_EQ_UNIV x = x
    val op INTER_EQ_UNIV =
    ThmBind.DT(((("aclDrules",0),
                [("bool",[26,62]),("pred_set",[3,22,60])]),["DISK_THM"]),
               [ThmBind.read"%29%21%29%22%35%36%38$1@$0@2%39@2%34%36$1@%39@2%36$0@%39@3|@|@"])
  fun op Simplification1 x = x
    val op Simplification1 =
    ThmBind.DT(((("aclDrules",1),
                [("aclDrules",[0]),("aclrules",[0]),("aclsemantics",[6]),
                 ("bool",
                 [13,25,26,27,29,46,47,50,51,52,53,55,62,72,92,93,95,107,
                  108,110]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3%40$1@$0@3%55%32$4@%33$3@$2@3$1@2|@|@|@|@|@"])
  fun op Simplification2 x = x
    val op Simplification2 =
    ThmBind.DT(((("aclDrules",2),
                [("aclDrules",[0]),("aclrules",[0]),("aclsemantics",[6]),
                 ("bool",
                 [13,25,26,27,29,46,47,50,51,52,53,55,62,72,92,93,95,107,
                  108,110]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3%40$1@$0@3%55%32$4@%33$3@$2@3$0@2|@|@|@|@|@"])
  fun op Controls x = x
    val op Controls =
    ThmBind.DT(((("aclDrules",3),[("aclrules",[23,59])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%24%11%37%55%32$4@%33$3@$2@3%56$1@$0@3%37%55%32$4@%33$3@$2@3%41$1@$0@3%55%32$4@%33$3@$2@3$0@3|@|@|@|@|@"])
  fun op Reps x = x
    val op Reps =
    ThmBind.DT(((("aclDrules",4),[("aclrules",[23,59,61])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%27%8%24%11%37%55%32$5@%33$4@$3@3%54$2@$1@$0@3%37%55%32$5@%33$4@$3@3%56%53$2@$1@2$0@3%37%55%32$5@%33$4@$3@3%41$1@$0@3%55%32$5@%33$4@$3@3$0@4|@|@|@|@|@|@"])
  fun op Rep_Controls_Eq x = x
    val op Rep_Controls_Eq =
    ThmBind.DT(((("aclDrules",5),
                [("aclrules",[0,56,59,61]),("aclsemantics",[3,6]),
                 ("bool",[25,35,55])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%0%27%1%24%11%35%55%32$5@%33$4@$3@3%54$2@$1@$0@3%55%32$5@%33$4@$3@3%41$2@%56$1@$0@4|@|@|@|@|@|@"])
  fun op Rep_Says x = x
    val op Rep_Says =
    ThmBind.DT(((("aclDrules",6),
                [("aclDrules",[3,5]),("aclrules",[58])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%27%8%24%11%37%55%32$5@%33$4@$3@3%54$2@$1@$0@3%37%55%32$5@%33$4@$3@3%56%53$2@$1@2$0@3%55%32$5@%33$4@$3@3%56$1@$0@4|@|@|@|@|@|@"])
  fun op Conjunction x = x
    val op Conjunction =
    ThmBind.DT(((("aclDrules",7),
                [("aclDrules",[0]),("aclrules",[0]),("aclsemantics",[11]),
                 ("bool",[25,50,55])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3$1@2%37%55%32$4@%33$3@$2@3$0@2%55%32$4@%33$3@$2@3%40$1@$0@4|@|@|@|@|@"])
  fun op Disjunction1 x = x
    val op Disjunction1 =
    ThmBind.DT(((("aclDrules",8),
                [("aclrules",[0]),("aclsemantics",[12]),("bool",[25,55]),
                 ("pred_set",[57])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3$1@2%55%32$4@%33$3@$2@3%52$1@$0@3|@|@|@|@|@"])
  fun op Disjunction2 x = x
    val op Disjunction2 =
    ThmBind.DT(((("aclDrules",9),
                [("aclrules",[0]),("aclsemantics",[12]),("bool",[25,55]),
                 ("pred_set",[57])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3$0@2%55%32$4@%33$3@$2@3%52$1@$0@3|@|@|@|@|@"])
  fun op Modus_Tollens x = x
    val op Modus_Tollens =
    ThmBind.DT(((("aclDrules",10),
                [("aclDrules",[1]),("aclrules",[2,7,10,11,23,38]),
                 ("bool",[25,62]),
                 ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3%48$1@$0@3%37%55%32$4@%33$3@$2@3%51$0@3%55%32$4@%33$3@$2@3%51$1@4|@|@|@|@|@"])
  fun op Double_Negation x = x
    val op Double_Negation =
    ThmBind.DT(((("aclDrules",11),
                [("aclrules",[2,7,11,39]),
                 ("bool",[25,35,53,55])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%11%37%55%32$3@%33$2@$1@3%51%51$0@4%55%32$3@%33$2@$1@3$0@2|@|@|@|@"])
  fun op Hypothetical_Syllogism x = x
    val op Hypothetical_Syllogism =
    ThmBind.DT(((("aclDrules",12),
                [("aclrules",[2,10,23]),("bool",[25,62]),
                 ("sat",[1,3,5,6,7,14,17,18])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%24%14%37%55%32$5@%33$4@$3@3%48$2@$1@3%37%55%32$5@%33$4@$3@3%48$1@$0@3%55%32$5@%33$4@$3@3%48$2@$0@4|@|@|@|@|@|@"])
  fun op Disjunctive_Syllogism x = x
    val op Disjunctive_Syllogism =
    ThmBind.DT(((("aclDrules",13),
                [("aclrules",[2,7,9,10,23]),("bool",[25,62]),
                 ("sat",[1,3,5,7,17,18])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%24%12%24%13%37%55%32$4@%33$3@$2@3%52$1@$0@3%37%55%32$4@%33$3@$2@3%51$1@3%55%32$4@%33$3@$2@3$0@3|@|@|@|@|@"])
  fun op Says_Simplification1 x = x
    val op Says_Simplification1 =
    ThmBind.DT(((("aclDrules",14),
                [("aclrules",[2,8,10,23,24,25]),("bool",[25,62]),
                 ("sat",[1,3,7,17,18])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%24%12%24%13%37%55%32$5@%33$4@$3@3%56$2@%40$1@$0@4%55%32$5@%33$4@$3@3%56$2@$1@3|@|@|@|@|@|@"])
  fun op Says_Simplification2 x = x
    val op Says_Simplification2 =
    ThmBind.DT(((("aclDrules",15),
                [("aclrules",[2,8,10,23,24,25]),("bool",[25,62]),
                 ("sat",[1,3,7,17,18])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%24%12%24%13%37%55%32$5@%33$4@$3@3%56$2@%40$1@$0@4%55%32$5@%33$4@$3@3%56$2@$0@3|@|@|@|@|@|@"])
  fun op Derived_Speaks_For x = x
    val op Derived_Speaks_For =
    ThmBind.DT(((("aclDrules",16),[("aclrules",[23,30])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%27%8%24%11%37%55%32$5@%33$4@$3@3%58$2@$1@3%37%55%32$5@%33$4@$3@3%56$2@$0@3%55%32$5@%33$4@$3@3%56$1@$0@4|@|@|@|@|@|@"])
  fun op Derived_Controls x = x
    val op Derived_Controls =
    ThmBind.DT(((("aclDrules",17),
                [("aclDrules",[12]),
                 ("aclrules",[23,30,59])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%27%6%27%8%24%11%37%55%32$5@%33$4@$3@3%58$2@$1@3%37%55%32$5@%33$4@$3@3%41$1@$0@3%55%32$5@%33$4@$3@3%41$2@$0@4|@|@|@|@|@|@"])
  fun op sl_doms x = x
    val op sl_doms =
    ThmBind.DT(((("aclDrules",18),
                [("aclDrules",[1,2]),("aclrules",[20,22])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%23%5%23%7%28%16%28%18%37%55%32$6@%33$5@$4@3%46%57$3@2$1@3%37%55%32$6@%33$5@$4@3%46%57$2@2$0@3%37%55%32$6@%33$5@$4@3%43$0@$1@3%55%32$6@%33$5@$4@3%43%57$2@2%57$3@6|@|@|@|@|@|@|@"])
  fun op il_domi x = x
    val op il_domi =
    ThmBind.DT(((("aclDrules",19),
                [("aclDrules",[1,2]),("aclrules",[16,18])]),["DISK_THM"]),
               [ThmBind.read"%26%2%30%3%31%4%23%5%23%7%25%15%25%17%37%55%32$6@%33$5@$4@3%44%47$3@2$1@3%37%55%32$6@%33$5@$4@3%44%47$2@2$0@3%37%55%32$6@%33$5@$4@3%42$0@$1@3%55%32$6@%33$5@$4@3%42%47$2@2%47$3@6|@|@|@|@|@|@|@"])
  fun op eqn_lte x = x
    val op eqn_lte =
    ThmBind.DT(((("aclDrules",20),
                [("aclrules",[0]),("aclsemantics",[23,24]),
                 ("bool",[25,26,27,29,52,55,62,63]),
                 ("pred_set",[25])]),["DISK_THM"]),
               [ThmBind.read"%37%55%32%2@%33%3@%4@3%45%9@%19@3%37%55%32%2@%33%3@%4@3%45%10@%20@3%37%55%32%2@%33%3@%4@3%50%19@%20@3%55%32%2@%33%3@%4@3%50%9@%10@5"])
  fun op eqn_lt x = x
    val op eqn_lt =
    ThmBind.DT(((("aclDrules",21),
                [("aclrules",[0]),("aclsemantics",[23,25]),
                 ("bool",[25,26,27,29,52,55,62,63]),
                 ("pred_set",[25])]),["DISK_THM"]),
               [ThmBind.read"%37%55%32%2@%33%3@%4@3%45%9@%19@3%37%55%32%2@%33%3@%4@3%45%10@%20@3%37%55%32%2@%33%3@%4@3%49%19@%20@3%55%32%2@%33%3@%4@3%49%9@%10@5"])
  fun op eqn_eqn x = x
    val op eqn_eqn =
    ThmBind.DT(((("aclDrules",22),
                [("aclrules",[0]),("aclsemantics",[23]),
                 ("bool",[25,26,27,29,52,55,62,63]),
                 ("pred_set",[25])]),["DISK_THM"]),
               [ThmBind.read"%37%55%32%2@%33%3@%4@3%45%9@%19@3%37%55%32%2@%33%3@%4@3%45%10@%20@3%37%55%32%2@%33%3@%4@3%45%19@%20@3%55%32%2@%33%3@%4@3%45%9@%10@5"])

  val _ = DB.bindl "aclDrules"
  [("INTER_EQ_UNIV",INTER_EQ_UNIV,DB.Thm),
   ("Simplification1",Simplification1,DB.Thm),
   ("Simplification2",Simplification2,DB.Thm),
   ("Controls",Controls,DB.Thm), ("Reps",Reps,DB.Thm),
   ("Rep_Controls_Eq",Rep_Controls_Eq,DB.Thm),
   ("Rep_Says",Rep_Says,DB.Thm), ("Conjunction",Conjunction,DB.Thm),
   ("Disjunction1",Disjunction1,DB.Thm),
   ("Disjunction2",Disjunction2,DB.Thm),
   ("Modus_Tollens",Modus_Tollens,DB.Thm),
   ("Double_Negation",Double_Negation,DB.Thm),
   ("Hypothetical_Syllogism",Hypothetical_Syllogism,DB.Thm),
   ("Disjunctive_Syllogism",Disjunctive_Syllogism,DB.Thm),
   ("Says_Simplification1",Says_Simplification1,DB.Thm),
   ("Says_Simplification2",Says_Simplification2,DB.Thm),
   ("Derived_Speaks_For",Derived_Speaks_For,DB.Thm),
   ("Derived_Controls",Derived_Controls,DB.Thm),
   ("sl_doms",sl_doms,DB.Thm), ("il_domi",il_domi,DB.Thm),
   ("eqn_lte",eqn_lte,DB.Thm), ("eqn_lt",eqn_lt,DB.Thm),
   ("eqn_eqn",eqn_eqn,DB.Thm)]

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val aclDrules_grammars = merge_grammars ["aclrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="aclDrules"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val aclDrules_grammars = 
    Portable.## (addtyUDs,addtmUDs) aclDrules_grammars
  val _ = Parse.grammarDB_insert("aclDrules",aclDrules_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "aclDrules"
end
