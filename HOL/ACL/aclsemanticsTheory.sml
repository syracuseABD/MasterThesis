structure aclsemanticsTheory :> aclsemanticsTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading aclsemanticsTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclfoundationTheory
  in end;
  val _ = Theory.link_parents
          ("aclsemantics",
          Arbnum.fromString "1528688677",
          Arbnum.fromString "713116")
          [("aclfoundation",
           Arbnum.fromString "1528688674",
           Arbnum.fromString "95862")];
  val _ = Theory.incorporate_types "aclsemantics" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("aclfoundation", "SecLevel"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "IntLevel"),
   ID("min", "bool"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "Form"), ID("aclfoundation", "po"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("pair", "prod"),
   ID("bool", "/\\"), ID("prim_rec", "<"), ID("arithmetic", "<="),
   ID("min", "="), ID("bool", "COND"), ID("pred_set", "DIFF"),
   ID("pred_set", "EMPTY"), ID("aclsemantics", "Efn"),
   ID("aclfoundation", "FF"), ID("pred_set", "GSPEC"),
   ID("pred_set", "INTER"), ID("aclsemantics", "Jext"),
   ID("aclsemantics", "Lifn"), ID("aclsemantics", "Lsfn"),
   ID("aclfoundation", "Name"), ID("relation", "O"),
   ID("relation", "RSUBSET"), ID("relation", "RUNION"),
   ID("pred_set", "SUBSET"), ID("aclfoundation", "TT"),
   ID("pred_set", "UNION"), ID("pred_set", "UNIV"),
   ID("aclfoundation", "andf"), ID("aclfoundation", "controls"),
   ID("aclfoundation", "domi"), ID("aclfoundation", "doms"),
   ID("aclfoundation", "eqf"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("aclfoundation", "iLab"), ID("aclfoundation", "il"),
   ID("aclfoundation", "imapKS"), ID("aclfoundation", "impf"),
   ID("aclfoundation", "intpKS"), ID("aclfoundation", "jKS"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("aclfoundation", "notf"),
   ID("aclfoundation", "orf"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "repPO"),
   ID("aclfoundation", "reps"), ID("aclfoundation", "sLab"),
   ID("aclfoundation", "says"), ID("aclfoundation", "sl"),
   ID("aclfoundation", "smapKS"), ID("aclfoundation", "speaks_for")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYV "'d", TYOP [1, 1, 0], TYOP [0, 2, 0], TYV "'e", TYV "'c",
   TYV "'b", TYOP [2, 6, 5, 1, 4, 0], TYOP [0, 7, 3], TYOP [3, 1, 0],
   TYOP [0, 9, 0], TYOP [2, 6, 5, 1, 0, 4], TYOP [0, 11, 10], TYOP [4],
   TYV "'w", TYOP [0, 14, 13], TYOP [0, 14, 15], TYV "'pn", TYOP [5, 17],
   TYOP [0, 18, 16], TYOP [0, 17, 16], TYOP [0, 20, 19], TYV "'v",
   TYOP [0, 22, 13], TYV "'is", TYV "'il", TYOP [6, 14, 17, 25, 24],
   TYOP [0, 26, 23], TYOP [2, 14, 22, 17, 25, 24], TYOP [0, 28, 27],
   TYOP [7, 24], TYOP [0, 30, 29], TYOP [7, 25], TYOP [0, 32, 31],
   TYOP [2, 0, 6, 5, 1, 4], TYOP [7, 1], TYOP [7, 4], TYOP [5, 5],
   TYOP [6, 0, 5, 1, 4], TYOP [3, 5, 1], TYOP [3, 17, 25], TYOP [8],
   TYOP [1, 5, 4], TYOP [1, 17, 24], TYOP [0, 0, 13], TYOP [0, 44, 13],
   TYOP [0, 1, 13], TYOP [0, 46, 13], TYOP [0, 17, 13], TYOP [0, 48, 13],
   TYOP [0, 15, 13], TYOP [0, 38, 13], TYOP [0, 51, 13], TYOP [0, 26, 13],
   TYOP [0, 53, 13], TYOP [0, 39, 13], TYOP [0, 55, 13], TYOP [0, 40, 13],
   TYOP [0, 57, 13], TYOP [0, 34, 13], TYOP [0, 59, 13], TYOP [0, 11, 13],
   TYOP [0, 61, 13], TYOP [0, 7, 13], TYOP [0, 63, 13], TYOP [0, 28, 13],
   TYOP [0, 65, 13], TYOP [0, 37, 13], TYOP [0, 67, 13], TYOP [0, 18, 13],
   TYOP [0, 69, 13], TYOP [0, 42, 13], TYOP [0, 71, 13], TYOP [0, 43, 13],
   TYOP [0, 73, 13], TYOP [0, 20, 13], TYOP [0, 75, 13], TYOP [0, 41, 13],
   TYOP [0, 77, 13], TYOP [0, 32, 13], TYOP [0, 79, 13], TYOP [0, 30, 13],
   TYOP [0, 81, 13], TYOP [11, 22, 13], TYOP [0, 13, 83], TYOP [0, 22, 84],
   TYOP [0, 13, 13], TYOP [0, 13, 86], TYOP [0, 41, 77], TYOP [0, 0, 44],
   TYOP [0, 6, 13], TYOP [0, 90, 13], TYOP [0, 90, 91], TYOP [0, 23, 13],
   TYOP [0, 23, 93], TYOP [0, 16, 13], TYOP [0, 16, 95], TYOP [0, 23, 23],
   TYOP [0, 23, 97], TYOP [0, 13, 98], TYOP [0, 38, 90], TYOP [0, 34, 100],
   TYOP [0, 36, 101], TYOP [0, 35, 102], TYOP [0, 22, 83],
   TYOP [0, 104, 23], TYOP [0, 22, 23], TYOP [0, 18, 106],
   TYOP [0, 17, 106], TYOP [0, 108, 107], TYOP [0, 40, 25],
   TYOP [0, 28, 110], TYOP [0, 43, 24], TYOP [0, 28, 112],
   TYOP [0, 17, 18], TYOP [0, 16, 16], TYOP [0, 16, 115],
   TYOP [0, 106, 13], TYOP [0, 106, 117], TYOP [0, 38, 38],
   TYOP [0, 38, 119], TYOP [0, 26, 26], TYOP [0, 26, 121],
   TYOP [0, 37, 119], TYOP [0, 18, 121], TYOP [0, 39, 38],
   TYOP [0, 39, 125], TYOP [0, 40, 26], TYOP [0, 40, 127],
   TYOP [0, 42, 38], TYOP [0, 42, 129], TYOP [0, 43, 26],
   TYOP [0, 43, 131], TYOP [0, 41, 26], TYOP [0, 41, 133], TYOP [0, 0, 9],
   TYOP [0, 1, 9], TYOP [0, 1, 0], TYOP [0, 11, 137], TYOP [0, 14, 23],
   TYOP [0, 28, 139], TYOP [0, 28, 108], TYOP [0, 18, 18],
   TYOP [0, 18, 142], TYOP [0, 14, 26], TYOP [0, 25, 13],
   TYOP [0, 25, 145], TYOP [0, 32, 146], TYOP [0, 24, 13],
   TYOP [0, 24, 148], TYOP [0, 30, 149], TYOP [0, 18, 124], TYOP [0, 0, 2],
   TYOP [0, 1, 2], TYOP [0, 7, 137], TYOP [0, 18, 26], TYOP [0, 18, 155]]
  end
  val _ = Theory.incorporate_consts "aclsemantics" tyvector
     [("Lsfn", 8), ("Lifn", 12), ("Jext", 21), ("Efn", 33)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("J", 20), TMV("M", 34), TMV("M", 11), TMV("M", 7), TMV("M", 28),
   TMV("Oi", 35), TMV("Oi", 32), TMV("Os", 36), TMV("Os", 30),
   TMV("P", 37), TMV("P", 18), TMV("P1", 18), TMV("P2", 18), TMV("Q", 18),
   TMV("f", 38), TMV("f", 26), TMV("f1", 38), TMV("f1", 26), TMV("f2", 38),
   TMV("f2", 26), TMV("intL1", 39), TMV("intL2", 39), TMV("intl1", 40),
   TMV("intl2", 40), TMV("l", 0), TMV("name", 1), TMV("numExp1", 41),
   TMV("numExp2", 41), TMV("p", 14), TMV("s", 17), TMV("secL1", 42),
   TMV("secL2", 42), TMV("secl1", 43), TMV("secl2", 43), TMV("w", 22),
   TMC(9, 45), TMC(9, 47), TMC(9, 49), TMC(9, 50), TMC(9, 52), TMC(9, 54),
   TMC(9, 56), TMC(9, 58), TMC(9, 60), TMC(9, 62), TMC(9, 64), TMC(9, 66),
   TMC(9, 68), TMC(9, 70), TMC(9, 72), TMC(9, 74), TMC(9, 76), TMC(9, 78),
   TMC(9, 80), TMC(9, 82), TMC(10, 85), TMC(12, 87), TMC(13, 88),
   TMC(14, 88), TMC(15, 89), TMC(15, 92), TMC(15, 94), TMC(15, 96),
   TMC(15, 88), TMC(16, 99), TMC(17, 98), TMC(18, 23), TMC(19, 103),
   TMC(19, 33), TMC(20, 26), TMC(21, 105), TMC(22, 98), TMC(23, 109),
   TMC(23, 21), TMC(24, 12), TMC(24, 111), TMC(25, 8), TMC(25, 113),
   TMC(26, 114), TMC(27, 116), TMC(28, 118), TMC(29, 116), TMC(30, 94),
   TMC(31, 26), TMC(32, 98), TMC(33, 23), TMC(34, 120), TMC(34, 122),
   TMC(35, 123), TMC(35, 124), TMC(36, 126), TMC(36, 128), TMC(37, 130),
   TMC(37, 132), TMC(38, 120), TMC(38, 122), TMC(39, 126), TMC(39, 128),
   TMC(40, 134), TMC(41, 130), TMC(41, 132), TMC(42, 135), TMC(43, 136),
   TMC(44, 138), TMC(45, 120), TMC(45, 122), TMC(46, 140), TMC(47, 141),
   TMC(48, 134), TMC(49, 134), TMC(50, 143), TMC(51, 121), TMC(52, 122),
   TMC(53, 144), TMC(54, 143), TMC(55, 147), TMC(55, 150), TMC(56, 151),
   TMC(57, 152), TMC(58, 123), TMC(58, 124), TMC(59, 153), TMC(60, 154),
   TMC(61, 156)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op Jext_def x = x
    val op Jext_def =
    ThmBind.DT(((("aclsemantics",0),
                [("aclfoundation",[56])]),["DISK_THM"]),
               [ThmBind.read"%56%51%0%37%29%62%73$1@%78$0@3$1$0@2|@|@2%56%51%0%48%11%48%12%62%73$2@%110$1@$0@3%81%73$2@$1@2%73$2@$0@3|@|@|@2%51%0%48%11%48%12%62%73$2@%114$1@$0@3%79%73$2@$0@2%73$2@$1@3|@|@|@3"])
  fun op Lifn_def x = x
    val op Lifn_def =
    ThmBind.DT(((("aclsemantics",4),
                [("aclfoundation",[62])]),["DISK_THM"]),
               [ThmBind.read"%56%44%2%35%24%59%74$1@%101$0@3$0@|@|@2%44%2%36%25%59%74$1@%102$0@3%103$1@$0@2|@|@2"])
  fun op Lsfn_def x = x
    val op Lsfn_def =
    ThmBind.DT(((("aclsemantics",5),
                [("aclfoundation",[68])]),["DISK_THM"]),
               [ThmBind.read"%56%45%3%35%24%59%76$1@%118$0@3$0@|@|@2%45%3%36%25%59%76$1@%121$0@3%122$1@$0@2|@|@2"])
  fun op Efn_def x = x
    val op Efn_def =
    ThmBind.DT(((("aclsemantics",6),
                [("aclfoundation",[117])]),["DISK_THM"]),
               [ThmBind.read"%56%53%6%54%8%46%4%61%68$2@$1@$0@%83@2%85@|@|@|@2%56%53%6%54%8%46%4%61%68$2@$1@$0@%69@2%66@|@|@|@2%56%53%6%54%8%46%4%38%28%61%68$3@$2@$1@%113$0@3%106$1@$0@2|@|@|@|@2%56%53%6%54%8%46%4%40%15%61%68$3@$2@$1@%111$0@3%65%85@%68$3@$2@$1@$0@3|@|@|@|@2%56%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%87$1@$0@3%71%68$4@$3@$2@$1@2%68$4@$3@$2@$0@3|@|@|@|@|@2%56%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%112$1@$0@3%84%68$4@$3@$2@$1@2%68$4@$3@$2@$0@3|@|@|@|@|@2%56%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%105$1@$0@3%84%65%85@%68$4@$3@$2@$1@3%68$4@$3@$2@$0@3|@|@|@|@|@2%56%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%95$1@$0@3%71%84%65%85@%68$4@$3@$2@$1@3%68$4@$3@$2@$0@3%84%65%85@%68$4@$3@$2@$0@3%68$4@$3@$2@$1@4|@|@|@|@|@2%56%53%6%54%8%46%4%48%10%40%15%61%68$4@$3@$2@%120$1@$0@3%70%34%55$0@%82%72%107$3@2$2@$0@2%68$5@$4@$3@$1@3|@2|@|@|@|@|@2%56%53%6%54%8%46%4%48%10%48%13%61%68$4@$3@$2@%123$1@$0@3%64%80%72%107$2@2$0@2%72%107$2@2$1@3%85@%66@2|@|@|@|@|@2%56%53%6%54%8%46%4%48%10%40%15%61%68$4@$3@$2@%89$1@$0@3%84%65%85@%70%34%55$0@%82%72%107$3@2$2@$0@2%68$5@$4@$3@$1@3|@3%68$4@$3@$2@$0@3|@|@|@|@|@2%56%53%6%54%8%46%4%48%10%48%13%40%15%61%68$5@$4@$3@%117$2@$1@$0@3%84%65%85@%70%34%55$0@%82%72%107$4@2%114$3@$2@2$0@2%68$6@$5@$4@$1@3|@3%70%34%55$0@%82%72%107$4@2$2@$0@2%68$6@$5@$4@$1@3|@3|@|@|@|@|@|@2%56%53%6%54%8%46%4%42%22%42%23%61%68$4@$3@$2@%91$1@$0@3%64%115$4@%75$2@$0@2%75$2@$1@3%85@%66@2|@|@|@|@|@2%56%53%6%54%8%46%4%42%23%42%22%61%68$4@$3@$2@%97$1@$0@3%71%64%115$4@%75$2@$1@2%75$2@$0@3%85@%66@2%64%115$4@%75$2@$0@2%75$2@$1@3%85@%66@3|@|@|@|@|@2%56%53%6%54%8%46%4%50%32%50%33%61%68$4@$3@$2@%93$1@$0@3%64%116$3@%77$2@$0@2%77$2@$1@3%85@%66@2|@|@|@|@|@2%56%53%6%54%8%46%4%50%33%50%32%61%68$4@$3@$2@%100$1@$0@3%71%64%116$3@%77$2@$1@2%77$2@$0@3%85@%66@2%64%116$3@%77$2@$0@2%77$2@$1@3%85@%66@3|@|@|@|@|@2%56%53%6%54%8%46%4%52%26%52%27%61%68$4@$3@$2@%98$1@$0@3%64%63$1@$0@2%85@%66@2|@|@|@|@|@2%56%53%6%54%8%46%4%52%26%52%27%61%68$4@$3@$2@%109$1@$0@3%64%58$1@$0@2%85@%66@2|@|@|@|@|@2%53%6%54%8%46%4%52%26%52%27%61%68$4@$3@$2@%108$1@$0@3%64%57$1@$0@2%85@%66@2|@|@|@|@|@19"])
  fun op name_def x = x
    val op name_def =
    ThmBind.DT(((("aclsemantics",1),[("aclsemantics",[0])]),["DISK_THM"]),
               [ThmBind.read"%51%0%37%29%62%73$1@%78$0@3$1$0@2|@|@"])
  fun op meet_def x = x
    val op meet_def =
    ThmBind.DT(((("aclsemantics",2),[("aclsemantics",[0])]),["DISK_THM"]),
               [ThmBind.read"%51%0%48%11%48%12%62%73$2@%110$1@$0@3%81%73$2@$1@2%73$2@$0@3|@|@|@"])
  fun op quoting_def x = x
    val op quoting_def =
    ThmBind.DT(((("aclsemantics",3),[("aclsemantics",[0])]),["DISK_THM"]),
               [ThmBind.read"%51%0%48%11%48%12%62%73$2@%114$1@$0@3%79%73$2@$0@2%73$2@$1@3|@|@|@"])
  fun op TT_def x = x
    val op TT_def =
    ThmBind.DT(((("aclsemantics",7),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%61%68$2@$1@$0@%83@2%85@|@|@|@"])
  fun op FF_def x = x
    val op FF_def =
    ThmBind.DT(((("aclsemantics",8),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%61%68$2@$1@$0@%69@2%66@|@|@|@"])
  fun op prop_def x = x
    val op prop_def =
    ThmBind.DT(((("aclsemantics",9),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%38%28%61%68$3@$2@$1@%113$0@3%106$1@$0@2|@|@|@|@"])
  fun op notf_def x = x
    val op notf_def =
    ThmBind.DT(((("aclsemantics",10),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%40%15%61%68$3@$2@$1@%111$0@3%65%85@%68$3@$2@$1@$0@3|@|@|@|@"])
  fun op andf_def x = x
    val op andf_def =
    ThmBind.DT(((("aclsemantics",11),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%87$1@$0@3%71%68$4@$3@$2@$1@2%68$4@$3@$2@$0@3|@|@|@|@|@"])
  fun op orf_def x = x
    val op orf_def =
    ThmBind.DT(((("aclsemantics",12),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%112$1@$0@3%84%68$4@$3@$2@$1@2%68$4@$3@$2@$0@3|@|@|@|@|@"])
  fun op impf_def x = x
    val op impf_def =
    ThmBind.DT(((("aclsemantics",13),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%105$1@$0@3%84%65%85@%68$4@$3@$2@$1@3%68$4@$3@$2@$0@3|@|@|@|@|@"])
  fun op eqf_def x = x
    val op eqf_def =
    ThmBind.DT(((("aclsemantics",14),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%40%17%40%19%61%68$4@$3@$2@%95$1@$0@3%71%84%65%85@%68$4@$3@$2@$1@3%68$4@$3@$2@$0@3%84%65%85@%68$4@$3@$2@$0@3%68$4@$3@$2@$1@4|@|@|@|@|@"])
  fun op says_def x = x
    val op says_def =
    ThmBind.DT(((("aclsemantics",15),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%48%10%40%15%61%68$4@$3@$2@%120$1@$0@3%70%34%55$0@%82%72%107$3@2$2@$0@2%68$5@$4@$3@$1@3|@2|@|@|@|@|@"])
  fun op speaks_for_def x = x
    val op speaks_for_def =
    ThmBind.DT(((("aclsemantics",16),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%48%10%48%13%61%68$4@$3@$2@%123$1@$0@3%64%80%72%107$2@2$0@2%72%107$2@2$1@3%85@%66@2|@|@|@|@|@"])
  fun op controls_def x = x
    val op controls_def =
    ThmBind.DT(((("aclsemantics",17),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%48%10%40%15%61%68$4@$3@$2@%89$1@$0@3%84%65%85@%70%34%55$0@%82%72%107$3@2$2@$0@2%68$5@$4@$3@$1@3|@3%68$4@$3@$2@$0@3|@|@|@|@|@"])
  fun op reps_def x = x
    val op reps_def =
    ThmBind.DT(((("aclsemantics",18),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%48%10%48%13%40%15%61%68$5@$4@$3@%117$2@$1@$0@3%84%65%85@%70%34%55$0@%82%72%107$4@2%114$3@$2@2$0@2%68$6@$5@$4@$1@3|@3%70%34%55$0@%82%72%107$4@2$2@$0@2%68$6@$5@$4@$1@3|@3|@|@|@|@|@|@"])
  fun op domi_def x = x
    val op domi_def =
    ThmBind.DT(((("aclsemantics",19),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%42%22%42%23%61%68$4@$3@$2@%91$1@$0@3%64%115$4@%75$2@$0@2%75$2@$1@3%85@%66@2|@|@|@|@|@"])
  fun op eqi_def x = x
    val op eqi_def =
    ThmBind.DT(((("aclsemantics",20),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%42%23%42%22%61%68$4@$3@$2@%97$1@$0@3%71%64%115$4@%75$2@$1@2%75$2@$0@3%85@%66@2%64%115$4@%75$2@$0@2%75$2@$1@3%85@%66@3|@|@|@|@|@"])
  fun op doms_def x = x
    val op doms_def =
    ThmBind.DT(((("aclsemantics",21),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%50%32%50%33%61%68$4@$3@$2@%93$1@$0@3%64%116$3@%77$2@$0@2%77$2@$1@3%85@%66@2|@|@|@|@|@"])
  fun op eqs_def x = x
    val op eqs_def =
    ThmBind.DT(((("aclsemantics",22),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%50%33%50%32%61%68$4@$3@$2@%100$1@$0@3%71%64%116$3@%77$2@$1@2%77$2@$0@3%85@%66@2%64%116$3@%77$2@$0@2%77$2@$1@3%85@%66@3|@|@|@|@|@"])
  fun op eqn_def x = x
    val op eqn_def =
    ThmBind.DT(((("aclsemantics",23),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%52%26%52%27%61%68$4@$3@$2@%98$1@$0@3%64%63$1@$0@2%85@%66@2|@|@|@|@|@"])
  fun op lte_def x = x
    val op lte_def =
    ThmBind.DT(((("aclsemantics",24),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%52%26%52%27%61%68$4@$3@$2@%109$1@$0@3%64%58$1@$0@2%85@%66@2|@|@|@|@|@"])
  fun op lt_def x = x
    val op lt_def =
    ThmBind.DT(((("aclsemantics",25),[("aclsemantics",[6])]),["DISK_THM"]),
               [ThmBind.read"%53%6%54%8%46%4%52%26%52%27%61%68$4@$3@$2@%108$1@$0@3%64%57$1@$0@2%85@%66@2|@|@|@|@|@"])
  fun op eqf_impf x = x
    val op eqf_impf =
    ThmBind.DT(((("aclsemantics",26),
                [("aclsemantics",[11,13,14]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%43%1%39%16%39%18%60%67%5@%7@$2@%94$1@$0@3%67%5@%7@$2@%86%104$1@$0@2%104$0@$1@4|@|@|@"])
  fun op controls_says x = x
    val op controls_says =
    ThmBind.DT(((("aclsemantics",27),
                [("aclsemantics",[13,15,17]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%43%1%47%9%39%14%60%67%5@%7@$2@%88$1@$0@3%67%5@%7@$2@%104%119$1@$0@2$0@3|@|@|@"])
  fun op eqi_domi x = x
    val op eqi_domi =
    ThmBind.DT(((("aclsemantics",28),
                [("aclsemantics",[11,19,20]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%43%1%41%20%41%21%60%67%5@%7@$2@%96$1@$0@3%67%5@%7@$2@%86%90$0@$1@2%90$1@$0@4|@|@|@"])
  fun op eqs_doms x = x
    val op eqs_doms =
    ThmBind.DT(((("aclsemantics",29),
                [("aclsemantics",[11,21,22]),
                 ("bool",[25,55])]),["DISK_THM"]),
               [ThmBind.read"%43%1%49%30%49%31%60%67%5@%7@$2@%99$1@$0@3%67%5@%7@$2@%86%92$0@$1@2%92$1@$0@4|@|@|@"])

  val _ = DB.bindl "aclsemantics"
  [("Jext_def",Jext_def,DB.Def), ("Lifn_def",Lifn_def,DB.Def),
   ("Lsfn_def",Lsfn_def,DB.Def), ("Efn_def",Efn_def,DB.Def),
   ("name_def",name_def,DB.Thm), ("meet_def",meet_def,DB.Thm),
   ("quoting_def",quoting_def,DB.Thm), ("TT_def",TT_def,DB.Thm),
   ("FF_def",FF_def,DB.Thm), ("prop_def",prop_def,DB.Thm),
   ("notf_def",notf_def,DB.Thm), ("andf_def",andf_def,DB.Thm),
   ("orf_def",orf_def,DB.Thm), ("impf_def",impf_def,DB.Thm),
   ("eqf_def",eqf_def,DB.Thm), ("says_def",says_def,DB.Thm),
   ("speaks_for_def",speaks_for_def,DB.Thm),
   ("controls_def",controls_def,DB.Thm), ("reps_def",reps_def,DB.Thm),
   ("domi_def",domi_def,DB.Thm), ("eqi_def",eqi_def,DB.Thm),
   ("doms_def",doms_def,DB.Thm), ("eqs_def",eqs_def,DB.Thm),
   ("eqn_def",eqn_def,DB.Thm), ("lte_def",lte_def,DB.Thm),
   ("lt_def",lt_def,DB.Thm), ("eqf_impf",eqf_impf,DB.Thm),
   ("controls_says",controls_says,DB.Thm), ("eqi_domi",eqi_domi,DB.Thm),
   ("eqs_doms",eqs_doms,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "aclsemantics",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "aclsemantics.Jext_def aclsemantics.Lifn_def aclsemantics.Efn_def aclsemantics.Lsfn_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "aclsemantics",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO4.Jext3.%73OO4.Lifn3.%74OO4.Lsfn3.%76OO3.Efn3.%68"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val aclsemantics_grammars = merge_grammars ["aclfoundation"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="aclsemantics"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val aclsemantics_grammars = 
    Portable.## (addtyUDs,addtmUDs) aclsemantics_grammars
  val _ = Parse.grammarDB_insert("aclsemantics",aclsemantics_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "aclsemantics"
end
