structure aclrulesTheory :> aclrulesTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading aclrulesTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclsemanticsTheory
  in end;
  val _ = Theory.link_parents
          ("aclrules",
          Arbnum.fromString "1526502741",
          Arbnum.fromString "577788")
          [("aclsemantics",
           Arbnum.fromString "1526502739",
           Arbnum.fromString "105865")];
  val _ = Theory.incorporate_types "aclrules" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("aclfoundation", "Form"),
   ID("pair", "prod"), ID("aclfoundation", "po"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "IntLevel"), ID("aclfoundation", "SecLevel"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("bool", "/\\"),
   ID("prim_rec", "<"), ID("arithmetic", "<="), ID("min", "="),
   ID("min", "==>"), ID("pred_set", "DIFF"), ID("aclsemantics", "Efn"),
   ID("aclfoundation", "FF"), ID("pred_set", "GSPEC"), ID("bool", "IN"),
   ID("pred_set", "INTER"), ID("aclsemantics", "Jext"),
   ID("relation", "O"), ID("relation", "RSUBSET"),
   ID("relation", "RUNION"), ID("pred_set", "SUBSET"),
   ID("aclfoundation", "TT"), ID("pred_set", "UNION"),
   ID("pred_set", "UNIV"), ID("bool", "\\/"), ID("aclfoundation", "andf"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"), ID("aclfoundation", "impf"),
   ID("aclfoundation", "jKS"), ID("aclfoundation", "lt"),
   ID("aclfoundation", "lte"), ID("aclfoundation", "meet"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("aclfoundation", "speaks_for"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'d", TYV "'c", TYV "'b", TYV "'a", TYOP [2, 4, 3, 2, 1],
   TYOP [0, 5, 0], TYOP [4, 1], TYOP [4, 2], TYOP [3, 8, 7], TYV "'world",
   TYOP [5, 4, 10, 3, 2, 1], TYOP [3, 11, 9], TYOP [0, 12, 6], TYV "'e",
   TYOP [5, 4, 3, 2, 1, 14], TYOP [4, 3], TYOP [4, 14], TYOP [6, 2],
   TYOP [0, 4, 0], TYOP [0, 3, 0], TYOP [0, 4, 20], TYOP [0, 3, 19],
   TYV "'k", TYOP [0, 23, 0], TYV "'h", TYOP [0, 25, 24], TYOP [0, 25, 0],
   TYV "'g", TYOP [0, 28, 27], TYOP [2, 4, 2, 1, 14], TYOP [7, 2, 1],
   TYOP [8, 2, 14], TYV "'f", TYOP [5, 14, 1, 33, 3, 2], TYOP [9],
   TYOP [0, 19, 0], TYOP [0, 20, 0], TYOP [0, 2, 0], TYOP [0, 38, 0],
   TYOP [0, 1, 0], TYOP [0, 40, 0], TYOP [0, 28, 0], TYOP [0, 42, 0],
   TYOP [0, 6, 0], TYOP [0, 30, 0], TYOP [0, 45, 0], TYOP [0, 31, 0],
   TYOP [0, 47, 0], TYOP [0, 15, 0], TYOP [0, 49, 0], TYOP [0, 11, 0],
   TYOP [0, 51, 0], TYOP [0, 18, 0], TYOP [0, 53, 0], TYOP [0, 32, 0],
   TYOP [0, 55, 0], TYOP [0, 36, 0], TYOP [0, 21, 0], TYOP [0, 58, 0],
   TYOP [0, 37, 0], TYOP [0, 22, 0], TYOP [0, 61, 0], TYOP [0, 29, 0],
   TYOP [0, 63, 0], TYOP [0, 26, 0], TYOP [0, 65, 0], TYOP [0, 24, 0],
   TYOP [0, 67, 0], TYOP [0, 35, 0], TYOP [0, 69, 0], TYOP [0, 16, 0],
   TYOP [0, 71, 0], TYOP [0, 8, 0], TYOP [0, 73, 0], TYOP [0, 7, 0],
   TYOP [0, 75, 0], TYOP [0, 17, 0], TYOP [0, 77, 0], TYOP [3, 4, 0],
   TYOP [0, 0, 79], TYOP [0, 4, 80], TYOP [3, 3, 0], TYOP [0, 0, 82],
   TYOP [0, 3, 83], TYOP [3, 25, 0], TYOP [0, 0, 85], TYOP [0, 25, 86],
   TYOP [3, 7, 17], TYOP [3, 15, 88], TYOP [0, 88, 89], TYOP [0, 15, 90],
   TYOP [0, 9, 12], TYOP [0, 11, 92], TYOP [0, 7, 9], TYOP [0, 8, 94],
   TYOP [0, 17, 88], TYOP [0, 7, 96], TYOP [0, 0, 0], TYOP [0, 0, 98],
   TYOP [0, 35, 69], TYOP [0, 19, 36], TYOP [0, 20, 37], TYOP [0, 10, 0],
   TYOP [0, 103, 0], TYOP [0, 103, 104], TYOP [0, 19, 19],
   TYOP [0, 19, 106], TYOP [2, 14, 33, 3, 2], TYOP [0, 108, 40],
   TYOP [0, 34, 109], TYOP [0, 8, 110], TYOP [0, 16, 111],
   TYOP [0, 5, 103], TYOP [0, 11, 113], TYOP [0, 7, 114], TYOP [0, 8, 115],
   TYOP [0, 30, 20], TYOP [0, 15, 117], TYOP [0, 17, 118],
   TYOP [0, 7, 119], TYOP [0, 4, 79], TYOP [0, 121, 19], TYOP [0, 3, 82],
   TYOP [0, 123, 20], TYOP [0, 25, 85], TYOP [0, 125, 27], TYOP [0, 3, 37],
   TYOP [0, 1, 41], TYOP [0, 3, 20], TYOP [0, 18, 129], TYOP [0, 2, 129],
   TYOP [0, 131, 130], TYOP [0, 28, 24], TYOP [0, 29, 133],
   TYOP [0, 26, 134], TYOP [0, 21, 58], TYOP [0, 22, 61], TYOP [0, 21, 21],
   TYOP [0, 21, 138], TYOP [0, 27, 0], TYOP [0, 27, 140], TYOP [0, 24, 67],
   TYOP [0, 20, 20], TYOP [0, 20, 143], TYOP [0, 30, 30],
   TYOP [0, 30, 145], TYOP [0, 18, 145], TYOP [0, 31, 30],
   TYOP [0, 31, 148], TYOP [0, 32, 30], TYOP [0, 32, 150],
   TYOP [0, 35, 108], TYOP [0, 35, 152], TYOP [0, 15, 131],
   TYOP [0, 18, 18], TYOP [0, 18, 155], TYOP [0, 18, 147],
   TYOP [0, 89, 45], TYOP [0, 18, 30], TYOP [0, 18, 159]]
  end
  val _ = Theory.incorporate_consts "aclrules" tyvector [("sat", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 4), TMV("M", 15), TMV("M", 11), TMV("Oi", 16), TMV("Oi", 8),
   TMV("Oi", 7), TMV("Os", 8), TMV("Os", 7), TMV("Os", 17), TMV("P", 18),
   TMV("P'", 18), TMV("Q", 18), TMV("Q'", 18), TMV("R", 18), TMV("R1", 19),
   TMV("R1", 21), TMV("R1", 22), TMV("R1", 26), TMV("R2", 19),
   TMV("R2", 21), TMV("R2", 22), TMV("R2", 29), TMV("R3", 19),
   TMV("R3", 20), TMV("R3", 24), TMV("f", 5), TMV("f", 30), TMV("f'", 30),
   TMV("f1", 30), TMV("f2", 30), TMV("g", 30), TMV("l", 31), TMV("l", 32),
   TMV("l1", 31), TMV("l1", 32), TMV("l2", 31), TMV("l2", 32),
   TMV("l3", 31), TMV("l3", 32), TMV("m", 34), TMV("n1", 35),
   TMV("n2", 35), TMV("s", 19), TMV("t", 19), TMV("u", 28), TMV("v", 3),
   TMV("w", 4), TMV("w", 3), TMV("w", 2), TMV("w", 1), TMV("w1", 4),
   TMV("y", 25), TMC(10, 36), TMC(10, 37), TMC(10, 39), TMC(10, 41),
   TMC(10, 43), TMC(10, 44), TMC(10, 46), TMC(10, 48), TMC(10, 50),
   TMC(10, 52), TMC(10, 54), TMC(10, 56), TMC(10, 57), TMC(10, 59),
   TMC(10, 60), TMC(10, 62), TMC(10, 64), TMC(10, 66), TMC(10, 68),
   TMC(10, 70), TMC(10, 72), TMC(10, 74), TMC(10, 76), TMC(10, 78),
   TMC(11, 81), TMC(11, 84), TMC(11, 87), TMC(11, 91), TMC(11, 93),
   TMC(11, 95), TMC(11, 97), TMC(12, 99), TMC(13, 100), TMC(14, 100),
   TMC(15, 99), TMC(15, 101), TMC(15, 102), TMC(15, 105), TMC(15, 100),
   TMC(16, 99), TMC(17, 107), TMC(18, 112), TMC(18, 116), TMC(18, 120),
   TMC(19, 30), TMC(20, 122), TMC(20, 124), TMC(20, 126), TMC(21, 127),
   TMC(21, 128), TMC(22, 107), TMC(23, 132), TMC(24, 135), TMC(25, 136),
   TMC(25, 137), TMC(26, 139), TMC(27, 101), TMC(27, 102), TMC(27, 141),
   TMC(27, 142), TMC(28, 30), TMC(29, 107), TMC(29, 144), TMC(30, 19),
   TMC(30, 20), TMC(30, 103), TMC(31, 99), TMC(32, 146), TMC(33, 147),
   TMC(34, 149), TMC(35, 151), TMC(36, 146), TMC(37, 149), TMC(38, 153),
   TMC(39, 151), TMC(40, 146), TMC(41, 154), TMC(42, 153), TMC(43, 153),
   TMC(44, 156), TMC(45, 145), TMC(46, 146), TMC(47, 156), TMC(48, 157),
   TMC(49, 158), TMC(49, 13), TMC(50, 147), TMC(51, 160), TMC(52, 98)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op sat_def x = x
    val op sat_def =
    ThmBind.DT(((("aclrules",0),[("pair",[16])]),["DISK_THM"]),
               [ThmBind.read"%61%2%73%4%74%7%57%25%86%137%80$3@%81$2@$1@3$0@2%89%94$2@$1@$3@$0@2%117@2|@|@|@|@"])
  fun op world_says x = x
    val op world_says =
    ThmBind.DT(((("aclrules",1),
                [("aclsemantics",[15]),("bool",[25,26,55,62]),("pair",[3]),
                 ("pred_set",[6,28])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%58%26%53%47%86%100$0@%95$4@$3@$5@%138$2@$1@4%53%45%91%100$0@%103%128$6@2$3@$1@3%100$0@%95$5@$4@$6@$2@3|@2|@|@|@|@|@|@"])
  fun op sat_allworld x = x
    val op sat_allworld =
    ThmBind.DT(((("aclrules",2),
                [("aclrules",[0]),("bool",[14,18,25,26,35,55,62]),
                 ("pred_set",[21])]),["DISK_THM"]),
               [ThmBind.read"%60%1%58%26%86%136%79$1@%82%5@%8@3$0@2%53%47%100$0@%95%5@%8@$2@$1@2|@2|@|@"])
  fun op world_T x = x
    val op world_T =
    ThmBind.DT(((("aclrules",3),
                [("aclsemantics",[7]),("bool",[25,35,62]),
                 ("pred_set",[22])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%53%47%100$0@%95$2@$1@$3@%112@2|@|@|@|@"])
  fun op world_F x = x
    val op world_F =
    ThmBind.DT(((("aclrules",4),
                [("aclsemantics",[8]),("bool",[25,26,27,35,53]),
                 ("pred_set",[18])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%53%47%140%100$0@%95$2@$1@$3@%96@3|@|@|@|@"])
  fun op world_not x = x
    val op world_not =
    ThmBind.DT(((("aclrules",7),
                [("aclsemantics",[10]),("bool",[25,35,50,55,62]),
                 ("pred_set",[22,85])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%53%47%86%100$0@%95$3@$2@$4@%132$1@4%140%100$0@%95$3@$2@$4@$1@4|@|@|@|@|@"])
  fun op world_and x = x
    val op world_and =
    ThmBind.DT(((("aclrules",8),
                [("aclsemantics",[11]),("bool",[25,35,55]),
                 ("pred_set",[60])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%28%58%29%53%47%86%100$0@%95$4@$3@$5@%119$2@$1@4%83%100$0@%95$4@$3@$5@$2@3%100$0@%95$4@$3@$5@$1@4|@|@|@|@|@|@"])
  fun op world_or x = x
    val op world_or =
    ThmBind.DT(((("aclrules",9),
                [("aclsemantics",[12]),("bool",[25,35,55]),
                 ("pred_set",[48])]),["DISK_THM"]),
               [ThmBind.read"%60%1%58%28%58%29%53%47%86%100$0@%95%5@%8@$3@%133$2@$1@4%118%100$0@%95%5@%8@$3@$2@3%100$0@%95%5@%8@$3@$1@4|@|@|@|@"])
  fun op world_imp x = x
    val op world_imp =
    ThmBind.DT(((("aclrules",10),
                [("aclsemantics",[13]),("bool",[25,35,50,55,62,100]),
                 ("pred_set",[22,48,85])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%28%58%29%53%47%86%100$0@%95$4@$3@$5@%127$2@$1@4%91%100$0@%95$4@$3@$5@$2@3%100$0@%95$4@$3@$5@$1@4|@|@|@|@|@|@"])
  fun op world_eq x = x
    val op world_eq =
    ThmBind.DT(((("aclrules",11),
                [("aclsemantics",[14]),("bool",[50,62,100,105]),
                 ("pred_set",[22,48,60,85])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%28%58%29%53%47%86%100$0@%95$4@$3@$5@%123$2@$1@4%86%100$0@%95$4@$3@$5@$2@3%100$0@%95$4@$3@$5@$1@4|@|@|@|@|@|@"])
  fun op world_eqn x = x
    val op world_eqn =
    ThmBind.DT(((("aclrules",12),
                [("aclsemantics",[23]),("bool",[25,26,27,29,53,62,63]),
                 ("pred_set",[18,22])]),["DISK_THM"]),
               [ThmBind.read"%52%0%72%3%73%6%71%40%71%41%55%49%86%101$0@%93$4@$3@%39@%125$2@$1@4%90$2@$1@2|@|@|@|@|@|@"])
  fun op world_lte x = x
    val op world_lte =
    ThmBind.DT(((("aclrules",13),
                [("aclsemantics",[24]),("bool",[25,26,27,29,53,62,63]),
                 ("pred_set",[18,22])]),["DISK_THM"]),
               [ThmBind.read"%52%0%72%3%73%6%71%40%71%41%55%49%86%101$0@%93$4@$3@%39@%130$2@$1@4%85$2@$1@2|@|@|@|@|@|@"])
  fun op world_lt x = x
    val op world_lt =
    ThmBind.DT(((("aclrules",14),
                [("aclsemantics",[25]),("bool",[25,26,27,29,53,62,63]),
                 ("pred_set",[18,22])]),["DISK_THM"]),
               [ThmBind.read"%52%0%72%3%73%6%71%40%71%41%55%49%86%101$0@%93$4@$3@%39@%129$2@$1@4%84$2@$1@2|@|@|@|@|@|@"])
  fun op domi_reflexive x = x
    val op domi_reflexive =
    ThmBind.DT(((("aclrules",15),
                [("aclfoundation",[10]),("aclrules",[0]),
                 ("aclsemantics",[19]),
                 ("bool",[25,55,62,63])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%59%31%136%79$3@%82$2@$1@3%121$0@$0@2|@|@|@|@"])
  fun op domi_transitive x = x
    val op domi_transitive =
    ThmBind.DT(((("aclrules",16),
                [("aclfoundation",[10]),("aclrules",[0]),
                 ("aclsemantics",[19]),("bool",[13,25,52,55,62,63]),
                 ("pred_set",[25])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%59%33%59%35%59%37%91%136%79$5@%82$4@$3@3%121$2@$1@3%91%136%79$5@%82$4@$3@3%121$1@$0@3%136%79$5@%82$4@$3@3%121$2@$0@4|@|@|@|@|@|@"])
  fun op domi_antisymmetric x = x
    val op domi_antisymmetric =
    ThmBind.DT(((("aclrules",17),
                [("aclrules",[0]),("aclsemantics",[19,20]),
                 ("bool",[25,55]),("pred_set",[71])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%59%33%59%35%91%136%79$4@%82$3@$2@3%121$1@$0@3%91%136%79$4@%82$3@$2@3%121$0@$1@3%136%79$4@%82$3@$2@3%124$1@$0@4|@|@|@|@|@"])
  fun op eqi_Eq x = x
    val op eqi_Eq =
    ThmBind.DT(((("aclrules",18),
                [("aclrules",[0]),("aclsemantics",[28]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%59%33%59%35%86%136%79$4@%82$3@$2@3%124$1@$0@3%136%79$4@%82$3@$2@3%119%121$0@$1@2%121$1@$0@4|@|@|@|@|@"])
  fun op doms_reflexive x = x
    val op doms_reflexive =
    ThmBind.DT(((("aclrules",19),
                [("aclfoundation",[10]),("aclrules",[0]),
                 ("aclsemantics",[21]),
                 ("bool",[25,55,62,63])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%63%32%136%79$3@%82$2@$1@3%122$0@$0@2|@|@|@|@"])
  fun op doms_transitive x = x
    val op doms_transitive =
    ThmBind.DT(((("aclrules",20),
                [("aclfoundation",[10]),("aclrules",[0]),
                 ("aclsemantics",[21]),("bool",[13,25,52,55,62,63]),
                 ("pred_set",[25])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%63%34%63%36%63%38%91%136%79$5@%82$4@$3@3%122$2@$1@3%91%136%79$5@%82$4@$3@3%122$1@$0@3%136%79$5@%82$4@$3@3%122$2@$0@4|@|@|@|@|@|@"])
  fun op doms_antisymmetric x = x
    val op doms_antisymmetric =
    ThmBind.DT(((("aclrules",21),
                [("aclrules",[0]),("aclsemantics",[21,22]),
                 ("bool",[25,55]),("pred_set",[71])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%63%34%63%36%91%136%79$4@%82$3@$2@3%122$1@$0@3%91%136%79$4@%82$3@$2@3%122$0@$1@3%136%79$4@%82$3@$2@3%126$1@$0@4|@|@|@|@|@"])
  fun op eqs_Eq x = x
    val op eqs_Eq =
    ThmBind.DT(((("aclrules",22),
                [("aclrules",[0]),("aclsemantics",[29]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%63%34%63%36%86%136%79$4@%82$3@$2@3%126$1@$0@3%136%79$4@%82$3@$2@3%119%122$0@$1@2%122$1@$0@4|@|@|@|@|@"])
  fun op Modus_Ponens x = x
    val op Modus_Ponens =
    ThmBind.DT(((("aclrules",23),
                [("aclrules",[0]),("aclsemantics",[13]),("bool",[25,52]),
                 ("pred_set",[56,89])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%28%58%29%91%136%79$4@%82$3@$2@3$1@2%91%136%79$4@%82$3@$2@3%127$1@$0@3%136%79$4@%82$3@$2@3$0@3|@|@|@|@|@"])
  fun op Says x = x
    val op Says =
    ThmBind.DT(((("aclrules",24),
                [("aclrules",[0]),("aclsemantics",[15]),
                 ("bool",[25,55,62]),("pred_set",[35,454])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%58%26%91%136%79$4@%82$3@$2@3$0@2%136%79$4@%82$3@$2@3%138$1@$0@3|@|@|@|@|@"])
  fun op MP_Says x = x
    val op MP_Says =
    ThmBind.DT(((("aclrules",25),[("aclrules",[1,2,10])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%58%28%58%29%136%79$5@%82$4@$3@3%127%138$2@%127$1@$0@3%127%138$2@$1@2%138$2@$0@4|@|@|@|@|@|@"])
  fun op UNIV_DIFF_SUBSET x = x
    val op UNIV_DIFF_SUBSET =
    ThmBind.DT(((("aclrules",26),
                [("bool",[25,26,50,55,62,100]),("pair",[3]),
                 ("pred_set",[6,22,28,47,84,454])]),["DISK_THM"]),
               [ThmBind.read"%64%14%64%18%91%108$1@$0@2%87%113%92%115@$1@2$0@2%115@2|@|@"])
  fun op Image_SUBSET x = x
    val op Image_SUBSET =
    ThmBind.DT(((("aclrules",27),
                [("bool",[18,25,27,35,52,53,62]),("pred_set",[28]),
                 ("relation",[170]),
                 ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
               [ThmBind.read"%65%15%65%19%91%105$0@$1@2%52%46%109$1$0@2$2$0@2|@2|@|@"])
  fun op SUBSET_Image_SUBSET x = x
    val op SUBSET_Image_SUBSET =
    ThmBind.DT(((("aclrules",28),
                [("bool",[25,26,35,46,47,52,53,57,62,70,80,93]),
                 ("pair",[3]),("pred_set",[6,28]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%65%15%65%19%66%23%91%52%50%109$2$0@2$3$0@2|@2%54%48%108%97%46%76$0@%109$4$0@2$2@2|@2%97%46%76$0@%109$3$0@2$2@2|@2|@2|@|@|@"])
  fun op speaks_for_SUBSET x = x
    val op speaks_for_SUBSET =
    ThmBind.DT(((("aclrules",29),
                [("aclrules",[27,28]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%64%22%67%20%67%16%91%106$1@$0@2%54%48%109%98%47%77$0@%108$2$0@2$4@2|@2%98%47%77$0@%108$3$0@2$4@2|@2|@2|@|@|@"])
  fun op Speaks_For x = x
    val op Speaks_For =
    ThmBind.DT(((("aclrules",30),
                [("aclrules",[0,26,29]),("aclsemantics",[13,15,16]),
                 ("bool",[25,26,27,29,55,62,63]),
                 ("pred_set",[56,57,87,89])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%136%79$5@%82$4@$3@3%127%139$2@$1@2%127%138$2@$0@2%138$1@$0@4|@|@|@|@|@|@"])
  fun op Trans_Speaks_For x = x
    val op Trans_Speaks_For =
    ThmBind.DT(((("aclrules",31),
                [("aclrules",[0]),("aclsemantics",[16]),
                 ("bool",[25,26,27,29,47,52,55,62,63]),("pred_set",[25]),
                 ("relation",[0,186,194])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%62%13%91%136%79$5@%82$4@$3@3%139$2@$1@3%91%136%79$5@%82$4@$3@3%139$1@$0@3%136%79$5@%82$4@$3@3%139$2@$0@4|@|@|@|@|@|@"])
  fun op Idemp_Speaks_For x = x
    val op Idemp_Speaks_For =
    ThmBind.DT(((("aclrules",32),
                [("aclrules",[0]),("aclsemantics",[16]),
                 ("bool",[25,26,27,29,52,53,55,62,63]),("pred_set",[25]),
                 ("relation",[0,1,186,194])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%136%79$3@%82$2@$1@3%139$0@$0@2|@|@|@|@"])
  fun op Mono_speaks_for x = x
    val op Mono_speaks_for =
    ThmBind.DT(((("aclrules",33),
                [("aclrules",[0]),("aclsemantics",[3,16]),
                 ("bool",
                 [13,25,26,27,29,46,47,50,51,52,53,55,57,62,70,71,76,77,79,
                  80,82,92,93,95,107,108,110,145]),("relation",[168,170]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%10%62%11%62%12%91%136%79$6@%82$5@$4@3%139$3@$2@3%91%136%79$6@%82$5@$4@3%139$1@$0@3%136%79$6@%82$5@$4@3%139%134$3@$1@2%134$2@$0@5|@|@|@|@|@|@|@"])
  fun op Image_UNION x = x
    val op Image_UNION =
    ThmBind.DT(((("aclrules",34),
                [("bool",[18,25,55]),("pred_set",[0,47,455]),
                 ("relation",[172])]),["DISK_THM"]),
               [ThmBind.read"%65%15%65%19%52%46%88%107$2@$1@$0@2%114$2$0@2$1$0@3|@|@|@"])
  fun op and_says_lemma x = x
    val op and_says_lemma =
    ThmBind.DT(((("aclrules",35),
                [("aclrules",[0,34]),("aclsemantics",[2,11,13,15]),
                 ("bool",[25,26,55,62]),("pair",[3]),
                 ("pred_set",[6,54,59,378,382])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%136%79$5@%82$4@$3@3%127%138%131$2@$1@2$0@2%119%138$2@$0@2%138$1@$0@4|@|@|@|@|@|@"])
  fun op says_and_lemma x = x
    val op says_and_lemma =
    ThmBind.DT(((("aclrules",36),
                [("aclrules",[0,34]),("aclsemantics",[2,11,13,15]),
                 ("bool",[25,26,55,62]),("pair",[3]),
                 ("pred_set",[6,54,59,378,382])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%136%79$5@%82$4@$3@3%127%119%138$2@$0@2%138$1@$0@3%138%131$2@$1@2$0@3|@|@|@|@|@|@"])
  fun op And_Says x = x
    val op And_Says =
    ThmBind.DT(((("aclrules",37),
                [("aclrules",[0,35,36]),("aclsemantics",[11,26]),
                 ("bool",[25,55]),("pred_set",[71])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%136%79$5@%82$4@$3@3%123%138%131$2@$1@2$0@2%119%138$2@$0@2%138$1@$0@4|@|@|@|@|@|@"])
  fun op eqf_and_impf x = x
    val op eqf_and_impf =
    ThmBind.DT(((("aclrules",38),
                [("aclrules",[0]),("aclsemantics",[26]),
                 ("bool",[25,35,55])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%28%58%29%86%136%79$4@%82$3@$2@3%123$1@$0@3%136%79$4@%82$3@$2@3%119%127$1@$0@2%127$0@$1@4|@|@|@|@|@"])
  fun op eqf_sat x = x
    val op eqf_sat =
    ThmBind.DT(((("aclrules",39),
                [("aclrules",[2,11]),
                 ("bool",
                 [25,26,42,46,47,52,53,57,62,70,74,77,79,83,92,93,95,145]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%28%58%29%91%136%79$4@%82$3@$2@3%123$1@$0@3%86%136%79$4@%82$3@$2@3$1@2%136%79$4@%82$3@$2@3$0@3|@|@|@|@|@"])
  fun op INTER_EQ_UNIV x = x
    val op INTER_EQ_UNIV =
    ThmBind.DT(((("aclrules",40),
                [("bool",
                 [25,26,46,47,52,53,57,62,70,74,77,79,83,93,95,145]),
                 ("pred_set",[26,60]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%86%87%102%42@%43@2%115@2%83%87%42@%115@2%87%43@%115@3"])
  fun op sat_andf_eq_and_sat x = x
    val op sat_andf_eq_and_sat =
    ThmBind.DT(((("aclrules",41),
                [("aclrules",[0]),("aclsemantics",[11]),
                 ("bool",
                 [25,26,46,47,52,53,55,57,62,70,74,77,79,83,93,95,145]),
                 ("pred_set",[26,60]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%86%136%79%1@%82%5@%8@3%119%28@%29@3%83%136%79%1@%82%5@%8@3%28@2%136%79%1@%82%5@%8@3%29@3"])
  fun op DIFF_UNIV_SUBSET x = x
    val op DIFF_UNIV_SUBSET =
    ThmBind.DT(((("aclrules",42),
                [("bool",[25,26,35,50,52,55,62,100]),("pair",[3]),
                 ("pred_set",[6,22,28,47,84,475])]),["DISK_THM"]),
               [ThmBind.read"%86%87%113%92%115@%42@2%43@2%115@2%108%42@%43@2"])
  fun op eqf_eq x = x
    val op eqf_eq =
    ThmBind.DT(((("aclrules",43),
                [("aclsemantics",[14]),
                 ("bool",
                 [25,26,35,46,47,50,52,53,55,57,62,70,74,77,79,83,93,95,
                  100,145]),("pair",[3]),
                 ("pred_set",[6,22,26,28,35,47,60,63,84,93,475]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%86%88%95%5@%8@%1@%123%28@%29@3%116@2%88%95%5@%8@%1@%28@2%95%5@%8@%1@%29@3"])
  fun op eqf_notf x = x
    val op eqf_notf =
    ThmBind.DT(((("aclrules",44),
                [("aclrules",[0,43]),("aclsemantics",[10]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%91%136%79$4@%82$3@$2@3%123$1@$0@3%91%136%79$4@%82$3@$2@3%132$1@3%136%79$4@%82$3@$2@3%132$0@4|@|@|@|@|@"])
  fun op eqf_andf1 x = x
    val op eqf_andf1 =
    ThmBind.DT(((("aclrules",45),
                [("aclrules",[0,43]),("aclsemantics",[11]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%119$2@$0@3%136%79$5@%82$4@$3@3%119$1@$0@4|@|@|@|@|@|@"])
  fun op eqf_andf2 x = x
    val op eqf_andf2 =
    ThmBind.DT(((("aclrules",46),
                [("aclrules",[0,43]),("aclsemantics",[11]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%119$0@$2@3%136%79$5@%82$4@$3@3%119$0@$1@4|@|@|@|@|@|@"])
  fun op eqf_orf1 x = x
    val op eqf_orf1 =
    ThmBind.DT(((("aclrules",47),
                [("aclrules",[0,43]),("aclsemantics",[12]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%133$2@$0@3%136%79$5@%82$4@$3@3%133$1@$0@4|@|@|@|@|@|@"])
  fun op eqf_orf2 x = x
    val op eqf_orf2 =
    ThmBind.DT(((("aclrules",48),
                [("aclrules",[0,43]),("aclsemantics",[12]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%133$0@$2@3%136%79$5@%82$4@$3@3%133$0@$1@4|@|@|@|@|@|@"])
  fun op eqf_impf1 x = x
    val op eqf_impf1 =
    ThmBind.DT(((("aclrules",49),
                [("aclrules",[0,43]),("aclsemantics",[13]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%127$2@$0@3%136%79$5@%82$4@$3@3%127$1@$0@4|@|@|@|@|@|@"])
  fun op eqf_impf2 x = x
    val op eqf_impf2 =
    ThmBind.DT(((("aclrules",50),
                [("aclrules",[0,43]),("aclsemantics",[13]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%127$0@$2@3%136%79$5@%82$4@$3@3%127$0@$1@4|@|@|@|@|@|@"])
  fun op eqf_eqf1 x = x
    val op eqf_eqf1 =
    ThmBind.DT(((("aclrules",51),
                [("aclrules",[0,43]),("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%123$2@$0@3%136%79$5@%82$4@$3@3%123$1@$0@4|@|@|@|@|@|@"])
  fun op eqf_eqf2 x = x
    val op eqf_eqf2 =
    ThmBind.DT(((("aclrules",52),
                [("aclrules",[0,43]),("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%58%26%58%27%58%30%91%136%79$5@%82$4@$3@3%123$2@$1@3%91%136%79$5@%82$4@$3@3%123$0@$2@3%136%79$5@%82$4@$3@3%123$0@$1@4|@|@|@|@|@|@"])
  fun op eqf_says x = x
    val op eqf_says =
    ThmBind.DT(((("aclrules",53),
                [("aclrules",[0,43]),("aclsemantics",[15]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%58%26%58%27%91%136%79$5@%82$4@$3@3%123$1@$0@3%91%136%79$5@%82$4@$3@3%138$2@$1@3%136%79$5@%82$4@$3@3%138$2@$0@4|@|@|@|@|@|@"])
  fun op eqf_controls x = x
    val op eqf_controls =
    ThmBind.DT(((("aclrules",54),
                [("aclrules",[0,43]),("aclsemantics",[17]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%58%26%58%27%91%136%79$5@%82$4@$3@3%123$1@$0@3%91%136%79$5@%82$4@$3@3%120$2@$1@3%136%79$5@%82$4@$3@3%120$2@$0@4|@|@|@|@|@|@"])
  fun op eqf_reps x = x
    val op eqf_reps =
    ThmBind.DT(((("aclrules",55),
                [("aclrules",[0,43]),("aclsemantics",[18]),
                 ("bool",[25,52])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%58%27%91%136%79$6@%82$5@$4@3%123$1@$0@3%91%136%79$6@%82$5@$4@3%135$3@$2@$1@3%136%79$6@%82$5@$4@3%135$3@$2@$0@4|@|@|@|@|@|@|@"])
  fun op Image_cmp x = x
    val op Image_cmp =
    ThmBind.DT(((("aclrules",56),
                [("bool",[25,26,50,62]),("pair",[3]),("pred_set",[0,6,28]),
                 ("relation",[168])]),["DISK_THM"]),
               [ThmBind.read"%69%17%68%21%70%24%56%44%86%111%104$3@$2@$0@2$1@2%110$2$0@2%99%51%78$0@%111$4$0@2$2@2|@3|@|@|@|@"])
  fun op Quoting x = x
    val op Quoting =
    ThmBind.DT(((("aclrules",57),
                [("aclrules",[0,38,56]),("aclsemantics",[3,6,11]),
                 ("bool",
                 [18,25,26,46,47,50,52,53,55,57,62,70,80,83,92,93,95]),
                 ("pair",[3]),("pred_set",[6,22,28,47,59,84,454]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%136%79$5@%82$4@$3@3%123%138%134$2@$1@2$0@2%138$2@%138$1@$0@4|@|@|@|@|@|@"])
  fun op Quoting_Eq x = x
    val op Quoting_Eq =
    ThmBind.DT(((("aclrules",58),
                [("aclrules",[0,56]),("aclsemantics",[3,6]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%86%136%79$5@%82$4@$3@3%138%134$2@$1@2$0@3%136%79$5@%82$4@$3@3%138$2@%138$1@$0@4|@|@|@|@|@|@"])
  fun op Controls_Eq x = x
    val op Controls_Eq =
    ThmBind.DT(((("aclrules",59),
                [("aclrules",[0]),("aclsemantics",[27]),
                 ("bool",
                 [13,25,26,27,29,46,47,50,51,52,53,55,62,70,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%58%26%86%136%79$4@%82$3@$2@3%120$1@$0@3%136%79$4@%82$3@$2@3%127%138$1@$0@2$0@3|@|@|@|@|@"])
  fun op reps_def_lemma x = x
    val op reps_def_lemma =
    ThmBind.DT(((("aclrules",60),
                [("aclsemantics",[13,15,18]),
                 ("bool",[25,35,55])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%88%95$4@$3@$5@%135$2@$1@$0@3%95$4@$3@$5@%127%138%134$2@$1@2$0@2%138$1@$0@4|@|@|@|@|@|@"])
  fun op Reps_Eq x = x
    val op Reps_Eq =
    ThmBind.DT(((("aclrules",61),
                [("aclrules",[0,60]),
                 ("bool",
                 [13,25,26,27,29,46,47,50,51,52,53,55,62,70,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%60%1%74%5%75%8%62%9%62%11%58%26%86%136%79$5@%82$4@$3@3%135$2@$1@$0@3%136%79$5@%82$4@$3@3%127%138%134$2@$1@2$0@2%138$1@$0@4|@|@|@|@|@|@"])
  fun op And_Says_Eq x = x
    val op And_Says_Eq =
    ThmBind.DT(((("aclrules",62),[("aclrules",[37,39])]),["DISK_THM"]),
               [ThmBind.read"%86%136%79%1@%82%5@%8@3%138%131%9@%11@2%26@3%136%79%1@%82%5@%8@3%119%138%9@%26@2%138%11@%26@4"])
  fun op sat_TT x = x
    val op sat_TT =
    ThmBind.DT(((("aclrules",63),
                [("aclrules",[0]),("aclsemantics",[7]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%136%79%1@%82%5@%8@3%112@"])

  val _ = DB.bindl "aclrules"
  [("sat_def",sat_def,DB.Def), ("world_says",world_says,DB.Thm),
   ("sat_allworld",sat_allworld,DB.Thm), ("world_T",world_T,DB.Thm),
   ("world_F",world_F,DB.Thm), ("world_not",world_not,DB.Thm),
   ("world_and",world_and,DB.Thm), ("world_or",world_or,DB.Thm),
   ("world_imp",world_imp,DB.Thm), ("world_eq",world_eq,DB.Thm),
   ("world_eqn",world_eqn,DB.Thm), ("world_lte",world_lte,DB.Thm),
   ("world_lt",world_lt,DB.Thm), ("domi_reflexive",domi_reflexive,DB.Thm),
   ("domi_transitive",domi_transitive,DB.Thm),
   ("domi_antisymmetric",domi_antisymmetric,DB.Thm),
   ("eqi_Eq",eqi_Eq,DB.Thm), ("doms_reflexive",doms_reflexive,DB.Thm),
   ("doms_transitive",doms_transitive,DB.Thm),
   ("doms_antisymmetric",doms_antisymmetric,DB.Thm),
   ("eqs_Eq",eqs_Eq,DB.Thm), ("Modus_Ponens",Modus_Ponens,DB.Thm),
   ("Says",Says,DB.Thm), ("MP_Says",MP_Says,DB.Thm),
   ("UNIV_DIFF_SUBSET",UNIV_DIFF_SUBSET,DB.Thm),
   ("Image_SUBSET",Image_SUBSET,DB.Thm),
   ("SUBSET_Image_SUBSET",SUBSET_Image_SUBSET,DB.Thm),
   ("speaks_for_SUBSET",speaks_for_SUBSET,DB.Thm),
   ("Speaks_For",Speaks_For,DB.Thm),
   ("Trans_Speaks_For",Trans_Speaks_For,DB.Thm),
   ("Idemp_Speaks_For",Idemp_Speaks_For,DB.Thm),
   ("Mono_speaks_for",Mono_speaks_for,DB.Thm),
   ("Image_UNION",Image_UNION,DB.Thm),
   ("and_says_lemma",and_says_lemma,DB.Thm),
   ("says_and_lemma",says_and_lemma,DB.Thm), ("And_Says",And_Says,DB.Thm),
   ("eqf_and_impf",eqf_and_impf,DB.Thm), ("eqf_sat",eqf_sat,DB.Thm),
   ("INTER_EQ_UNIV",INTER_EQ_UNIV,DB.Thm),
   ("sat_andf_eq_and_sat",sat_andf_eq_and_sat,DB.Thm),
   ("DIFF_UNIV_SUBSET",DIFF_UNIV_SUBSET,DB.Thm), ("eqf_eq",eqf_eq,DB.Thm),
   ("eqf_notf",eqf_notf,DB.Thm), ("eqf_andf1",eqf_andf1,DB.Thm),
   ("eqf_andf2",eqf_andf2,DB.Thm), ("eqf_orf1",eqf_orf1,DB.Thm),
   ("eqf_orf2",eqf_orf2,DB.Thm), ("eqf_impf1",eqf_impf1,DB.Thm),
   ("eqf_impf2",eqf_impf2,DB.Thm), ("eqf_eqf1",eqf_eqf1,DB.Thm),
   ("eqf_eqf2",eqf_eqf2,DB.Thm), ("eqf_says",eqf_says,DB.Thm),
   ("eqf_controls",eqf_controls,DB.Thm), ("eqf_reps",eqf_reps,DB.Thm),
   ("Image_cmp",Image_cmp,DB.Thm), ("Quoting",Quoting,DB.Thm),
   ("Quoting_Eq",Quoting_Eq,DB.Thm), ("Controls_Eq",Controls_Eq,DB.Thm),
   ("reps_def_lemma",reps_def_lemma,DB.Thm), ("Reps_Eq",Reps_Eq,DB.Thm),
   ("And_Says_Eq",And_Says_Eq,DB.Thm), ("sat_TT",sat_TT,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "aclrules",
    thydataty = "compute",
    read = ThmBind.read,
    data = "aclrules.sat_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "aclrules",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "RMT3.satG3.satOCI0.IR540.H1.RK3.satS1.0.XOO3.sat4.%137"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val aclrules_grammars = merge_grammars ["aclsemantics"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="aclrules"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val aclrules_grammars = 
    Portable.## (addtyUDs,addtmUDs) aclrules_grammars
  val _ = Parse.grammarDB_insert("aclrules",aclrules_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "aclrules"
end
