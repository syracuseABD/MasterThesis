structure ConductORPTypeTheory :> ConductORPTypeTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ConductORPTypeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open indexedListsTheory patternMatchesTheory
  in end;
  val _ = Theory.link_parents
          ("ConductORPType",
          Arbnum.fromString "1528747892",
          Arbnum.fromString "292364")
          [("indexedLists",
           Arbnum.fromString "1501974078",
           Arbnum.fromString "687272"),
           ("patternMatches",
           Arbnum.fromString "1501974125",
           Arbnum.fromString "747236")];
  val _ = Theory.incorporate_types "ConductORPType"
       [("stateRole", 0), ("slState", 0), ("slOutput", 0),
        ("slCommand", 0), ("psgCommand", 0), ("plCommand", 0),
        ("omniCommand", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("ConductORPType", "plCommand"), ID("ConductORPType", "slOutput"),
   ID("min", "fun"), ID("num", "num"), ID("ConductORPType", "stateRole"),
   ID("ConductORPType", "omniCommand"), ID("ConductORPType", "slState"),
   ID("ConductORPType", "slCommand"), ID("ConductORPType", "psgCommand"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("ConductORPType", "ACTIONS_IN"),
   ID("bool", "ARB"), ID("ConductORPType", "ActionsIn"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("ConductORPType", "COMPLETE"),
   ID("bool", "COND"), ID("ConductORPType", "CONDUCT_ORP"),
   ID("ind_type", "CONSTR"), ID("ConductORPType", "Complete"),
   ID("ConductORPType", "ConductORP"), ID("bool", "DATATYPE"),
   ID("arithmetic", "NUMERAL"), ID("ConductORPType", "OMNI"),
   ID("ConductORPType", "Omni"), ID("ConductORPType", "PL"),
   ID("ConductORPType", "PSG"), ID("ConductORPType", "PlatoonLeader"),
   ID("ConductORPType", "PlatoonSergeant"), ID("ConductORPType", "SECURE"),
   ID("num", "SUC"), ID("ConductORPType", "Secure"),
   ID("bool", "TYPE_DEFINITION"), ID("ConductORPType", "WITHDRAW"),
   ID("ConductORPType", "Withdraw"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("ConductORPType", "actionsIn"),
   ID("ConductORPType", "complete"),
   ID("ConductORPType", "invalidOmniCommand"),
   ID("ConductORPType", "num2omniCommand"),
   ID("ConductORPType", "num2plCommand"),
   ID("ConductORPType", "num2psgCommand"),
   ID("ConductORPType", "num2slOutput"),
   ID("ConductORPType", "num2slState"),
   ID("ConductORPType", "num2stateRole"),
   ID("ConductORPType", "omniCommand2num"),
   ID("ConductORPType", "omniCommand_CASE"),
   ID("ConductORPType", "omniCommand_size"),
   ID("ConductORPType", "plCommand2num"),
   ID("ConductORPType", "plCommand_CASE"),
   ID("ConductORPType", "plCommand_size"),
   ID("ConductORPType", "plIncomplete"),
   ID("ConductORPType", "psgCommand2num"),
   ID("ConductORPType", "psgCommand_CASE"),
   ID("ConductORPType", "psgCommand_size"),
   ID("ConductORPType", "psgIncomplete"), ID("ConductORPType", "secure"),
   ID("ConductORPType", "slCommand_CASE"),
   ID("ConductORPType", "slCommand_size"),
   ID("ConductORPType", "slOutput2num"),
   ID("ConductORPType", "slOutput_CASE"),
   ID("ConductORPType", "slOutput_size"),
   ID("ConductORPType", "slState2num"),
   ID("ConductORPType", "slState_CASE"),
   ID("ConductORPType", "slState_size"),
   ID("ConductORPType", "ssmActionsInComplete"),
   ID("ConductORPType", "ssmSecureComplete"),
   ID("ConductORPType", "ssmWithdrawComplete"),
   ID("ConductORPType", "stateRole2num"),
   ID("ConductORPType", "stateRole_CASE"),
   ID("ConductORPType", "stateRole_size"),
   ID("ConductORPType", "unAuthenticated"),
   ID("ConductORPType", "unAuthorized"), ID("ConductORPType", "withdraw"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [1], TYOP [3], TYOP [4], TYOP [2, 3, 2], TYV "'a",
   TYOP [2, 5, 5], TYOP [2, 5, 6], TYOP [2, 5, 7], TYOP [2, 3, 8],
   TYOP [5], TYOP [6], TYOP [2, 11, 2], TYOP [2, 5, 8], TYOP [2, 5, 13],
   TYOP [2, 11, 14], TYOP [2, 1, 2], TYOP [2, 5, 14], TYOP [2, 5, 17],
   TYOP [2, 1, 18], TYOP [7], TYOP [2, 20, 2], TYOP [2, 10, 5],
   TYOP [2, 22, 5], TYOP [8], TYOP [2, 24, 5], TYOP [2, 25, 23],
   TYOP [2, 0, 5], TYOP [2, 27, 26], TYOP [2, 20, 28], TYOP [2, 24, 2],
   TYOP [2, 24, 7], TYOP [2, 0, 2], TYOP [2, 0, 13], TYOP [2, 10, 2],
   TYOP [2, 10, 13], TYOP [2, 2, 3], TYOP [2, 2, 11], TYOP [2, 2, 1],
   TYOP [2, 2, 24], TYOP [2, 2, 0], TYOP [2, 2, 10], TYOP [2, 24, 20],
   TYOP [2, 0, 20], TYOP [2, 10, 20], TYOP [9], TYOP [11, 24, 10],
   TYOP [11, 0, 46], TYOP [10, 47], TYOP [2, 48, 45], TYOP [2, 10, 45],
   TYOP [2, 0, 45], TYOP [2, 24, 45], TYOP [2, 20, 45], TYOP [2, 1, 45],
   TYOP [2, 11, 45], TYOP [2, 3, 45], TYOP [2, 1, 5], TYOP [2, 11, 5],
   TYOP [2, 3, 5], TYOP [2, 20, 5], TYOP [2, 10, 50], TYOP [2, 10, 61],
   TYOP [2, 10, 62], TYOP [2, 0, 51], TYOP [2, 0, 64], TYOP [2, 0, 65],
   TYOP [2, 24, 52], TYOP [2, 20, 48], TYOP [2, 44, 45], TYOP [2, 42, 69],
   TYOP [2, 43, 70], TYOP [2, 1, 54], TYOP [2, 1, 72], TYOP [2, 1, 73],
   TYOP [2, 1, 74], TYOP [2, 1, 75], TYOP [2, 1, 76], TYOP [2, 11, 55],
   TYOP [2, 11, 78], TYOP [2, 11, 79], TYOP [2, 11, 80], TYOP [2, 3, 56],
   TYOP [2, 3, 82], TYOP [2, 5, 45], TYOP [2, 84, 45], TYOP [2, 22, 45],
   TYOP [2, 86, 45], TYOP [2, 50, 45], TYOP [2, 88, 45], TYOP [2, 27, 45],
   TYOP [2, 90, 45], TYOP [2, 51, 45], TYOP [2, 92, 45], TYOP [2, 25, 45],
   TYOP [2, 94, 45], TYOP [2, 52, 45], TYOP [2, 96, 45], TYOP [2, 49, 45],
   TYOP [2, 98, 45], TYOP [2, 53, 45], TYOP [2, 100, 45], TYOP [2, 54, 45],
   TYOP [2, 102, 45], TYOP [2, 55, 45], TYOP [2, 104, 45],
   TYOP [2, 56, 45], TYOP [2, 106, 45], TYOP [2, 2, 45], TYOP [2, 108, 45],
   TYOP [2, 2, 2], TYOP [2, 2, 110], TYOP [2, 46, 47], TYOP [2, 0, 112],
   TYOP [2, 10, 46], TYOP [2, 24, 114], TYOP [2, 45, 45],
   TYOP [2, 45, 116], TYOP [2, 2, 108], TYOP [2, 5, 84], TYOP [2, 48, 49],
   TYOP [2, 20, 53], TYOP [2, 34, 45], TYOP [2, 122, 45], TYOP [2, 32, 45],
   TYOP [2, 124, 45], TYOP [2, 30, 45], TYOP [2, 126, 45],
   TYOP [2, 60, 45], TYOP [2, 128, 45], TYOP [2, 68, 45],
   TYOP [2, 130, 45], TYOP [2, 57, 45], TYOP [2, 132, 45],
   TYOP [2, 16, 45], TYOP [2, 134, 45], TYOP [2, 58, 45],
   TYOP [2, 136, 45], TYOP [2, 12, 45], TYOP [2, 138, 45],
   TYOP [2, 59, 45], TYOP [2, 140, 45], TYOP [2, 4, 45], TYOP [2, 142, 45],
   TYOP [2, 45, 7], TYOP [2, 2, 48], TYOP [2, 145, 48], TYOP [2, 47, 146],
   TYOP [2, 2, 147], TYOP [2, 108, 122], TYOP [2, 108, 124],
   TYOP [2, 108, 126], TYOP [2, 108, 134], TYOP [2, 108, 138],
   TYOP [2, 108, 142], TYOP [2, 49, 130]]
  end
  val _ = Theory.incorporate_consts "ConductORPType" tyvector
     [("withdraw", 0), ("unAuthorized", 1), ("unAuthenticated", 1),
      ("stateRole_size", 4), ("stateRole_CASE", 9), ("stateRole2num", 4),
      ("ssmWithdrawComplete", 10), ("ssmSecureComplete", 10),
      ("ssmActionsInComplete", 10), ("slState_size", 12),
      ("slState_CASE", 15), ("slState2num", 12), ("slOutput_size", 16),
      ("slOutput_CASE", 19), ("slOutput2num", 16), ("slCommand_size", 21),
      ("slCommand_CASE", 29), ("secure", 0), ("psgIncomplete", 24),
      ("psgCommand_size", 30), ("psgCommand_CASE", 31),
      ("psgCommand2num", 30), ("plIncomplete", 0), ("plCommand_size", 32),
      ("plCommand_CASE", 33), ("plCommand2num", 32),
      ("omniCommand_size", 34), ("omniCommand_CASE", 35),
      ("omniCommand2num", 34), ("num2stateRole", 36), ("num2slState", 37),
      ("num2slOutput", 38), ("num2psgCommand", 39), ("num2plCommand", 40),
      ("num2omniCommand", 41), ("invalidOmniCommand", 10), ("complete", 0),
      ("actionsIn", 24), ("Withdraw", 1), ("WITHDRAW", 11), ("Secure", 1),
      ("SECURE", 11), ("PlatoonSergeant", 3), ("PlatoonLeader", 3),
      ("PSG", 42), ("PL", 43), ("Omni", 3), ("OMNI", 44),
      ("ConductORP", 1), ("Complete", 1), ("CONDUCT_ORP", 11),
      ("COMPLETE", 11), ("ActionsIn", 1), ("ACTIONS_IN", 11)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'slCommand'", 49), TMV("M", 10), TMV("M", 0), TMV("M", 24),
   TMV("M", 20), TMV("M", 1), TMV("M", 11), TMV("M", 3), TMV("M'", 10),
   TMV("M'", 0), TMV("M'", 24), TMV("M'", 20), TMV("M'", 1), TMV("M'", 11),
   TMV("M'", 3), TMV("P", 50), TMV("P", 51), TMV("P", 52), TMV("P", 53),
   TMV("P", 54), TMV("P", 55), TMV("P", 56), TMV("a", 10), TMV("a", 0),
   TMV("a", 24), TMV("a", 1), TMV("a", 11), TMV("a", 3), TMV("a'", 10),
   TMV("a'", 0), TMV("a'", 24), TMV("a'", 1), TMV("a'", 11), TMV("a'", 3),
   TMV("a0", 48), TMV("f", 22), TMV("f", 27), TMV("f", 25), TMV("f", 57),
   TMV("f", 58), TMV("f", 59), TMV("f'", 27), TMV("f0", 27), TMV("f1", 25),
   TMV("f1'", 25), TMV("f2", 22), TMV("f2'", 22), TMV("fn", 60),
   TMV("m", 2), TMV("n", 2), TMV("o", 10), TMV("omniCommand", 63),
   TMV("p", 0), TMV("p", 24), TMV("plCommand", 66), TMV("psgCommand", 67),
   TMV("r", 2), TMV("r'", 2), TMV("rep", 34), TMV("rep", 32),
   TMV("rep", 30), TMV("rep", 68), TMV("rep", 16), TMV("rep", 12),
   TMV("rep", 4), TMV("s", 20), TMV("slCommand", 71), TMV("slOutput", 77),
   TMV("slState", 81), TMV("ss", 20), TMV("stateRole", 83), TMV("v0", 5),
   TMV("v0'", 5), TMV("v1", 5), TMV("v1'", 5), TMV("v2", 5), TMV("v2'", 5),
   TMV("v3", 5), TMV("v3'", 5), TMV("v4", 5), TMV("v4'", 5), TMV("v5", 5),
   TMV("v5'", 5), TMV("v6", 5), TMV("v6'", 5), TMV("x", 10), TMV("x", 0),
   TMV("x", 24), TMV("x", 1), TMV("x", 11), TMV("x", 3), TMV("x0", 5),
   TMV("x1", 5), TMV("x2", 5), TMV("x3", 5), TMV("x4", 5), TMV("x5", 5),
   TMV("x6", 5), TMC(12, 85), TMC(12, 87), TMC(12, 89), TMC(12, 91),
   TMC(12, 93), TMC(12, 95), TMC(12, 97), TMC(12, 99), TMC(12, 101),
   TMC(12, 103), TMC(12, 105), TMC(12, 107), TMC(12, 109), TMC(12, 88),
   TMC(12, 92), TMC(12, 96), TMC(12, 98), TMC(12, 100), TMC(12, 102),
   TMC(12, 104), TMC(12, 106), TMC(13, 111), TMC(14, 113), TMC(14, 115),
   TMC(15, 117), TMC(16, 2), TMC(17, 118), TMC(18, 119), TMC(18, 117),
   TMC(18, 118), TMC(18, 61), TMC(18, 64), TMC(18, 67), TMC(18, 120),
   TMC(18, 121), TMC(18, 72), TMC(18, 78), TMC(18, 82), TMC(19, 117),
   TMC(20, 87), TMC(20, 123), TMC(20, 91), TMC(20, 125), TMC(20, 95),
   TMC(20, 127), TMC(20, 129), TMC(20, 131), TMC(20, 133), TMC(20, 135),
   TMC(20, 137), TMC(20, 139), TMC(20, 141), TMC(20, 143), TMC(20, 109),
   TMC(20, 88), TMC(20, 92), TMC(20, 96), TMC(20, 102), TMC(20, 104),
   TMC(20, 106), TMC(21, 11), TMC(22, 10), TMC(22, 0), TMC(22, 24),
   TMC(23, 1), TMC(24, 110), TMC(25, 110), TMC(26, 48), TMC(27, 11),
   TMC(28, 144), TMC(29, 11), TMC(30, 148), TMC(31, 1), TMC(32, 1),
   TMC(33, 116), TMC(34, 110), TMC(35, 44), TMC(36, 3), TMC(37, 43),
   TMC(38, 42), TMC(39, 3), TMC(40, 3), TMC(41, 11), TMC(42, 110),
   TMC(43, 1), TMC(44, 149), TMC(44, 150), TMC(44, 151), TMC(44, 152),
   TMC(44, 153), TMC(44, 154), TMC(44, 155), TMC(45, 11), TMC(46, 1),
   TMC(47, 2), TMC(48, 117), TMC(49, 24), TMC(50, 0), TMC(51, 10),
   TMC(52, 41), TMC(53, 40), TMC(54, 39), TMC(55, 38), TMC(56, 37),
   TMC(57, 36), TMC(58, 34), TMC(59, 35), TMC(60, 34), TMC(61, 32),
   TMC(62, 33), TMC(63, 32), TMC(64, 0), TMC(65, 30), TMC(66, 31),
   TMC(67, 30), TMC(68, 24), TMC(69, 0), TMC(70, 29), TMC(71, 21),
   TMC(72, 16), TMC(73, 19), TMC(74, 16), TMC(75, 12), TMC(76, 15),
   TMC(77, 12), TMC(78, 10), TMC(79, 10), TMC(80, 10), TMC(81, 4),
   TMC(82, 9), TMC(83, 4), TMC(84, 1), TMC(85, 1), TMC(86, 0),
   TMC(87, 116)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op plCommand_TY_DEF x = x
    val op plCommand_TY_DEF =
    ThmBind.DT(((("ConductORPType",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%140%59%184%49%124$0@%173%164%163%192@4|@$0@|@"])
  fun op plCommand_BIJ x = x
    val op plCommand_BIJ =
    ThmBind.DT(((("ConductORPType",1),
                [("ConductORPType",[0]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%122%112%23%129%198%206$0@3$0@|@2%110%56%126%49%124$0@%173%164%163%192@4|$0@2%127%206%198$0@3$0@2|@2"])




  fun op plCommand_size_def x = x
    val op plCommand_size_def =
    ThmBind.DT(((("ConductORPType",15),[]),[]),
               [ThmBind.read"%112%86%127%208$0@2%123@|@"])
  fun op plCommand_CASE x = x
    val op plCommand_CASE =
    ThmBind.DT(((("ConductORPType",16),[]),[]),
               [ThmBind.read"%112%86%98%71%98%73%98%75%98%77%125%207$4@$3@$2@$1@$0@2%48%167%124$0@%173%163%192@4$4@%167%124$0@%173%164%192@4$3@%167%127$0@%173%164%192@4$2@$1@3|%206$4@3|@|@|@|@|@"])
  fun op psgCommand_TY_DEF x = x
    val op psgCommand_TY_DEF =
    ThmBind.DT(((("ConductORPType",25),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%142%60%185%49%124$0@%173%164%192@3|@$0@|@"])
  fun op psgCommand_BIJ x = x
    val op psgCommand_BIJ =
    ThmBind.DT(((("ConductORPType",26),
                [("ConductORPType",[25]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%122%113%24%130%199%210$0@3$0@|@2%110%56%126%49%124$0@%173%164%192@3|$0@2%127%210%199$0@3$0@2|@2"])


  fun op psgCommand_size_def x = x
    val op psgCommand_size_def =
    ThmBind.DT(((("ConductORPType",38),[]),[]),
               [ThmBind.read"%113%87%127%212$0@2%123@|@"])
  fun op psgCommand_CASE x = x
    val op psgCommand_CASE =
    ThmBind.DT(((("ConductORPType",39),[]),[]),
               [ThmBind.read"%113%87%98%71%98%73%125%211$2@$1@$0@2%48%167%127$0@%123@2$2@$1@|%210$2@3|@|@|@"])
  fun op omniCommand_TY_DEF x = x
    val op omniCommand_TY_DEF =
    ThmBind.DT(((("ConductORPType",48),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%138%58%183%49%124$0@%173%164%163%192@4|@$0@|@"])
  fun op omniCommand_BIJ x = x
    val op omniCommand_BIJ =
    ThmBind.DT(((("ConductORPType",49),
                [("ConductORPType",[48]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%122%111%22%128%197%203$0@3$0@|@2%110%56%126%49%124$0@%173%164%163%192@4|$0@2%127%203%197$0@3$0@2|@2"])




  fun op omniCommand_size_def x = x
    val op omniCommand_size_def =
    ThmBind.DT(((("ConductORPType",63),[]),[]),
               [ThmBind.read"%111%85%127%205$0@2%123@|@"])
  fun op omniCommand_CASE x = x
    val op omniCommand_CASE =
    ThmBind.DT(((("ConductORPType",64),[]),[]),
               [ThmBind.read"%111%85%98%71%98%73%98%75%98%77%125%204$4@$3@$2@$1@$0@2%48%167%124$0@%173%163%192@4$4@%167%124$0@%173%164%192@4$3@%167%127$0@%173%164%192@4$2@$1@3|%203$4@3|@|@|@|@|@"])
  fun op slCommand_TY_DEF x = x
    val op slCommand_TY_DEF =
    ThmBind.DT(((("ConductORPType",73),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%144%61%189%34%105%0%136%114%34%136%193%153%23%131$1@%23%169%123@%120$0@%121%161@%159@3%49%165|@|$0@2|@2%193%154%24%131$1@%24%169%181%123@2%120%160@%121$0@%159@3%49%165|@|$0@2|@2%152%22%131$1@%22%169%181%181%123@3%120%160@%121%161@$0@3%49%165|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op slCommand_case_def x = x
    val op slCommand_case_def =
    ThmBind.DT(((("ConductORPType",81),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%122%112%23%101%36%103%43%99%45%125%215%176$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%122%113%24%101%36%103%43%99%45%125%215%177$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%111%22%101%36%103%43%99%45%125%215%174$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op slCommand_size_def x = x
    val op slCommand_size_def =
    ThmBind.DT(((("ConductORPType",82),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%122%112%23%127%216%176$0@3%119%173%163%192@3%208$0@3|@2%122%113%24%127%216%177$0@3%119%173%163%192@3%212$0@3|@2%111%22%127%216%174$0@3%119%173%163%192@3%205$0@3|@3"])
  fun op slState_TY_DEF x = x
    val op slState_TY_DEF =
    ThmBind.DT(((("ConductORPType",92),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%148%63%187%49%124$0@%173%163%164%192@4|@$0@|@"])
  fun op slState_BIJ x = x
    val op slState_BIJ =
    ThmBind.DT(((("ConductORPType",93),
                [("ConductORPType",[92]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%122%117%26%134%201%220$0@3$0@|@2%110%56%126%49%124$0@%173%163%164%192@4|$0@2%127%220%201$0@3$0@2|@2"])





  fun op slState_size_def x = x
    val op slState_size_def =
    ThmBind.DT(((("ConductORPType",108),[]),[]),
               [ThmBind.read"%117%89%127%222$0@2%123@|@"])
  fun op slState_CASE x = x
    val op slState_CASE =
    ThmBind.DT(((("ConductORPType",109),[]),[]),
               [ThmBind.read"%117%89%98%71%98%73%98%75%98%77%98%79%125%221$5@$4@$3@$2@$1@$0@2%48%167%124$0@%173%164%192@4%167%127$0@%123@2$5@$4@2%167%124$0@%173%163%163%192@5$3@%167%127$0@%173%163%163%192@5$2@$1@3|%220$5@3|@|@|@|@|@|@"])
  fun op slOutput_TY_DEF x = x
    val op slOutput_TY_DEF =
    ThmBind.DT(((("ConductORPType",118),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%146%62%186%49%124$0@%173%163%163%163%192@5|@$0@|@"])
  fun op slOutput_BIJ x = x
    val op slOutput_BIJ =
    ThmBind.DT(((("ConductORPType",119),
                [("ConductORPType",[118]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%122%116%25%133%200%217$0@3$0@|@2%110%56%126%49%124$0@%173%163%163%163%192@5|$0@2%127%217%200$0@3$0@2|@2"])







  fun op slOutput_size_def x = x
    val op slOutput_size_def =
    ThmBind.DT(((("ConductORPType",136),[]),[]),
               [ThmBind.read"%116%88%127%219$0@2%123@|@"])
  fun op slOutput_CASE x = x
    val op slOutput_CASE =
    ThmBind.DT(((("ConductORPType",137),[]),[]),
               [ThmBind.read"%116%88%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218$7@$6@$5@$4@$3@$2@$1@$0@2%48%167%124$0@%173%163%163%192@5%167%124$0@%173%163%192@4$7@%167%127$0@%173%163%192@4$6@$5@3%167%124$0@%173%164%163%192@5$4@%167%124$0@%173%163%164%192@5$3@%167%127$0@%173%163%164%192@5$2@$1@4|%217$7@3|@|@|@|@|@|@|@|@"])
  fun op stateRole_TY_DEF x = x
    val op stateRole_TY_DEF =
    ThmBind.DT(((("ConductORPType",146),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%150%64%188%49%124$0@%173%163%163%192@4|@$0@|@"])
  fun op stateRole_BIJ x = x
    val op stateRole_BIJ =
    ThmBind.DT(((("ConductORPType",147),
                [("ConductORPType",[146]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%122%118%27%135%202%226$0@3$0@|@2%110%56%126%49%124$0@%173%163%163%192@4|$0@2%127%226%202$0@3$0@2|@2"])



  fun op stateRole_size_def x = x
    val op stateRole_size_def =
    ThmBind.DT(((("ConductORPType",160),[]),[]),
               [ThmBind.read"%118%90%127%228$0@2%123@|@"])
  fun op stateRole_CASE x = x
    val op stateRole_CASE =
    ThmBind.DT(((("ConductORPType",161),[]),[]),
               [ThmBind.read"%118%90%98%71%98%73%98%75%125%227$3@$2@$1@$0@2%48%167%124$0@%173%163%192@4$3@%167%127$0@%173%163%192@4$2@$1@2|%226$3@3|@|@|@|@"])
  fun op num2plCommand_plCommand2num x = x
    val op num2plCommand_plCommand2num =
    ThmBind.DT(((("ConductORPType",2),
                [("ConductORPType",[1])]),["DISK_THM"]),
               [ThmBind.read"%112%23%129%198%206$0@3$0@|@"])
  fun op plCommand2num_num2plCommand x = x
    val op plCommand2num_num2plCommand =
    ThmBind.DT(((("ConductORPType",3),
                [("ConductORPType",[1])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%164%163%192@5%127%206%198$0@3$0@2|@"])
  fun op num2plCommand_11 x = x
    val op num2plCommand_11 =
    ThmBind.DT(((("ConductORPType",4),
                [("ConductORPType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%110%57%136%124$1@%173%164%163%192@5%136%124$0@%173%164%163%192@5%126%129%198$1@2%198$0@3%127$1@$0@4|@|@"])
  fun op plCommand2num_11 x = x
    val op plCommand2num_11 =
    ThmBind.DT(((("ConductORPType",5),
                [("ConductORPType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%112%23%112%29%126%127%206$1@2%206$0@3%129$1@$0@2|@|@"])
  fun op num2plCommand_ONTO x = x
    val op num2plCommand_ONTO =
    ThmBind.DT(((("ConductORPType",6),
                [("ConductORPType",[1]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%112%23%151%56%122%129$1@%198$0@3%124$0@%173%164%163%192@5|@|@"])
  fun op plCommand2num_ONTO x = x
    val op plCommand2num_ONTO =
    ThmBind.DT(((("ConductORPType",7),
                [("ConductORPType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%164%163%192@5%153%23%127$1@%206$0@2|@2|@"])
  fun op num2plCommand_thm x = x
    val op num2plCommand_thm =
    ThmBind.DT(((("ConductORPType",12),
                [("ConductORPType",[8,9,10,11])]),[]),
               [ThmBind.read"%122%129%198%123@2%214@2%122%129%198%173%163%192@4%231@2%122%129%198%173%164%192@4%195@2%129%198%173%163%163%192@5%209@4"])
  fun op plCommand2num_thm x = x
    val op plCommand2num_thm =
    ThmBind.DT(((("ConductORPType",13),
                [("ConductORPType",[3,8,9,10,11]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%127%206%214@2%123@2%122%127%206%231@2%173%163%192@4%122%127%206%195@2%173%164%192@4%127%206%209@2%173%163%163%192@7"])
  fun op plCommand_EQ_plCommand x = x
    val op plCommand_EQ_plCommand =
    ThmBind.DT(((("ConductORPType",14),
                [("ConductORPType",[5]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%112%23%112%29%126%129$1@$0@2%127%206$1@2%206$0@3|@|@"])
  fun op plCommand_case_def x = x
    val op plCommand_case_def =
    ThmBind.DT(((("ConductORPType",17),
                [("ConductORPType",[13,16]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%98%77%125%207%214@$3@$2@$1@$0@2$3@|@|@|@|@2%122%98%71%98%73%98%75%98%77%125%207%231@$3@$2@$1@$0@2$2@|@|@|@|@2%122%98%71%98%73%98%75%98%77%125%207%195@$3@$2@$1@$0@2$1@|@|@|@|@2%98%71%98%73%98%75%98%77%125%207%209@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_plCommand x = x
    val op datatype_plCommand =
    ThmBind.DT(((("ConductORPType",18),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%54%214@%231@%195@%209@2"])
  fun op plCommand_distinct x = x
    val op plCommand_distinct =
    ThmBind.DT(((("ConductORPType",19),
                [("ConductORPType",[13,14]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%129%214@%231@3%122%232%129%214@%195@3%122%232%129%214@%209@3%122%232%129%231@%195@3%122%232%129%231@%209@3%232%129%195@%209@7"])
  fun op plCommand_case_cong x = x
    val op plCommand_case_cong =
    ThmBind.DT(((("ConductORPType",20),
                [("ConductORPType",[6,8,9,10,11,17]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%112%2%112%9%98%71%98%73%98%75%98%77%136%122%129$5@$4@2%122%136%129$4@%214@2%125$3@%72@3%122%136%129$4@%231@2%125$2@%74@3%122%136%129$4@%195@2%125$1@%76@3%136%129$4@%209@2%125$0@%78@7%125%207$5@$3@$2@$1@$0@2%207$4@%72@%74@%76@%78@3|@|@|@|@|@|@"])
  fun op plCommand_nchotomy x = x
    val op plCommand_nchotomy =
    ThmBind.DT(((("ConductORPType",21),
                [("ConductORPType",[6,8,9,10,11]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%112%23%193%129$0@%214@2%193%129$0@%231@2%193%129$0@%195@2%129$0@%209@4|@"])
  fun op plCommand_Axiom x = x
    val op plCommand_Axiom =
    ThmBind.DT(((("ConductORPType",22),
                [("ConductORPType",[13]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%98%94%139%36%122%125$0%214@2$4@2%122%125$0%231@2$3@2%122%125$0%195@2$2@2%125$0%209@2$1@4|@|@|@|@|@"])
  fun op plCommand_induction x = x
    val op plCommand_induction =
    ThmBind.DT(((("ConductORPType",23),
                [("ConductORPType",[6,8,9,10,11]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%16%136%122$0%195@2%122$0%209@2%122$0%214@2$0%231@5%112%23$1$0@|@2|@"])
  fun op plCommand_distinct_clauses x = x
    val op plCommand_distinct_clauses =
    ThmBind.DT(((("ConductORPType",24),
                [("ConductORPType",[13,14]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%129%214@%231@3%122%232%129%214@%195@3%122%232%129%214@%209@3%122%232%129%231@%195@3%122%232%129%231@%209@3%232%129%195@%209@7"])
  fun op num2psgCommand_psgCommand2num x = x
    val op num2psgCommand_psgCommand2num =
    ThmBind.DT(((("ConductORPType",27),
                [("ConductORPType",[26])]),["DISK_THM"]),
               [ThmBind.read"%113%24%130%199%210$0@3$0@|@"])
  fun op psgCommand2num_num2psgCommand x = x
    val op psgCommand2num_num2psgCommand =
    ThmBind.DT(((("ConductORPType",28),
                [("ConductORPType",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%164%192@4%127%210%199$0@3$0@2|@"])
  fun op num2psgCommand_11 x = x
    val op num2psgCommand_11 =
    ThmBind.DT(((("ConductORPType",29),
                [("ConductORPType",[26]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%110%57%136%124$1@%173%164%192@4%136%124$0@%173%164%192@4%126%130%199$1@2%199$0@3%127$1@$0@4|@|@"])
  fun op psgCommand2num_11 x = x
    val op psgCommand2num_11 =
    ThmBind.DT(((("ConductORPType",30),
                [("ConductORPType",[26]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%113%24%113%30%126%127%210$1@2%210$0@3%130$1@$0@2|@|@"])
  fun op num2psgCommand_ONTO x = x
    val op num2psgCommand_ONTO =
    ThmBind.DT(((("ConductORPType",31),
                [("ConductORPType",[26]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%113%24%151%56%122%130$1@%199$0@3%124$0@%173%164%192@4|@|@"])
  fun op psgCommand2num_ONTO x = x
    val op psgCommand2num_ONTO =
    ThmBind.DT(((("ConductORPType",32),
                [("ConductORPType",[26]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%164%192@4%154%24%127$1@%210$0@2|@2|@"])
  fun op num2psgCommand_thm x = x
    val op num2psgCommand_thm =
    ThmBind.DT(((("ConductORPType",35),[("ConductORPType",[33,34])]),[]),
               [ThmBind.read"%122%130%199%123@2%194@2%130%199%173%163%192@4%213@2"])
  fun op psgCommand2num_thm x = x
    val op psgCommand2num_thm =
    ThmBind.DT(((("ConductORPType",36),
                [("ConductORPType",[28,33,34]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%127%210%194@2%123@2%127%210%213@2%173%163%192@4"])
  fun op psgCommand_EQ_psgCommand x = x
    val op psgCommand_EQ_psgCommand =
    ThmBind.DT(((("ConductORPType",37),
                [("ConductORPType",[30]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%113%24%113%30%126%130$1@$0@2%127%210$1@2%210$0@3|@|@"])
  fun op psgCommand_case_def x = x
    val op psgCommand_case_def =
    ThmBind.DT(((("ConductORPType",40),
                [("ConductORPType",[36,39]),("bool",[55,63]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%125%211%194@$1@$0@2$1@|@|@2%98%71%98%73%125%211%213@$1@$0@2$0@|@|@2"])
  fun op datatype_psgCommand x = x
    val op datatype_psgCommand =
    ThmBind.DT(((("ConductORPType",41),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%55%194@%213@2"])
  fun op psgCommand_distinct x = x
    val op psgCommand_distinct =
    ThmBind.DT(((("ConductORPType",42),
                [("ConductORPType",[36,37]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%232%130%194@%213@2"])
  fun op psgCommand_case_cong x = x
    val op psgCommand_case_cong =
    ThmBind.DT(((("ConductORPType",43),
                [("ConductORPType",[31,33,34,40]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%113%3%113%10%98%71%98%73%136%122%130$3@$2@2%122%136%130$2@%194@2%125$1@%72@3%136%130$2@%213@2%125$0@%74@5%125%211$3@$1@$0@2%211$2@%72@%74@3|@|@|@|@"])
  fun op psgCommand_nchotomy x = x
    val op psgCommand_nchotomy =
    ThmBind.DT(((("ConductORPType",44),
                [("ConductORPType",[31,33,34]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%113%24%193%130$0@%194@2%130$0@%213@2|@"])
  fun op psgCommand_Axiom x = x
    val op psgCommand_Axiom =
    ThmBind.DT(((("ConductORPType",45),
                [("ConductORPType",[36]),("bool",[8,14,25,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%141%37%122%125$0%194@2$2@2%125$0%213@2$1@2|@|@|@"])
  fun op psgCommand_induction x = x
    val op psgCommand_induction =
    ThmBind.DT(((("ConductORPType",46),
                [("ConductORPType",[31,33,34]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%104%17%136%122$0%194@2$0%213@3%113%24$1$0@|@2|@"])
  fun op psgCommand_distinct_clauses x = x
    val op psgCommand_distinct_clauses =
    ThmBind.DT(((("ConductORPType",47),
                [("ConductORPType",[36,37]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%232%130%194@%213@2"])
  fun op num2omniCommand_omniCommand2num x = x
    val op num2omniCommand_omniCommand2num =
    ThmBind.DT(((("ConductORPType",50),
                [("ConductORPType",[49])]),["DISK_THM"]),
               [ThmBind.read"%111%22%128%197%203$0@3$0@|@"])
  fun op omniCommand2num_num2omniCommand x = x
    val op omniCommand2num_num2omniCommand =
    ThmBind.DT(((("ConductORPType",51),
                [("ConductORPType",[49])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%164%163%192@5%127%203%197$0@3$0@2|@"])
  fun op num2omniCommand_11 x = x
    val op num2omniCommand_11 =
    ThmBind.DT(((("ConductORPType",52),
                [("ConductORPType",[49]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%110%57%136%124$1@%173%164%163%192@5%136%124$0@%173%164%163%192@5%126%128%197$1@2%197$0@3%127$1@$0@4|@|@"])
  fun op omniCommand2num_11 x = x
    val op omniCommand2num_11 =
    ThmBind.DT(((("ConductORPType",53),
                [("ConductORPType",[49]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%111%22%111%28%126%127%203$1@2%203$0@3%128$1@$0@2|@|@"])
  fun op num2omniCommand_ONTO x = x
    val op num2omniCommand_ONTO =
    ThmBind.DT(((("ConductORPType",54),
                [("ConductORPType",[49]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%111%22%151%56%122%128$1@%197$0@3%124$0@%173%164%163%192@5|@|@"])
  fun op omniCommand2num_ONTO x = x
    val op omniCommand2num_ONTO =
    ThmBind.DT(((("ConductORPType",55),
                [("ConductORPType",[49]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%164%163%192@5%152%22%127$1@%203$0@2|@2|@"])
  fun op num2omniCommand_thm x = x
    val op num2omniCommand_thm =
    ThmBind.DT(((("ConductORPType",60),
                [("ConductORPType",[56,57,58,59])]),[]),
               [ThmBind.read"%122%128%197%123@2%224@2%122%128%197%173%163%192@4%223@2%122%128%197%173%164%192@4%225@2%128%197%173%163%163%192@5%196@4"])
  fun op omniCommand2num_thm x = x
    val op omniCommand2num_thm =
    ThmBind.DT(((("ConductORPType",61),
                [("ConductORPType",[51,56,57,58,59]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%127%203%224@2%123@2%122%127%203%223@2%173%163%192@4%122%127%203%225@2%173%164%192@4%127%203%196@2%173%163%163%192@7"])
  fun op omniCommand_EQ_omniCommand x = x
    val op omniCommand_EQ_omniCommand =
    ThmBind.DT(((("ConductORPType",62),
                [("ConductORPType",[53]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%111%22%111%28%126%128$1@$0@2%127%203$1@2%203$0@3|@|@"])
  fun op omniCommand_case_def x = x
    val op omniCommand_case_def =
    ThmBind.DT(((("ConductORPType",65),
                [("ConductORPType",[61,64]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%98%77%125%204%224@$3@$2@$1@$0@2$3@|@|@|@|@2%122%98%71%98%73%98%75%98%77%125%204%223@$3@$2@$1@$0@2$2@|@|@|@|@2%122%98%71%98%73%98%75%98%77%125%204%225@$3@$2@$1@$0@2$1@|@|@|@|@2%98%71%98%73%98%75%98%77%125%204%196@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_omniCommand x = x
    val op datatype_omniCommand =
    ThmBind.DT(((("ConductORPType",66),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%51%224@%223@%225@%196@2"])
  fun op omniCommand_distinct x = x
    val op omniCommand_distinct =
    ThmBind.DT(((("ConductORPType",67),
                [("ConductORPType",[61,62]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%128%224@%223@3%122%232%128%224@%225@3%122%232%128%224@%196@3%122%232%128%223@%225@3%122%232%128%223@%196@3%232%128%225@%196@7"])
  fun op omniCommand_case_cong x = x
    val op omniCommand_case_cong =
    ThmBind.DT(((("ConductORPType",68),
                [("ConductORPType",[54,56,57,58,59,65]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%111%1%111%8%98%71%98%73%98%75%98%77%136%122%128$5@$4@2%122%136%128$4@%224@2%125$3@%72@3%122%136%128$4@%223@2%125$2@%74@3%122%136%128$4@%225@2%125$1@%76@3%136%128$4@%196@2%125$0@%78@7%125%204$5@$3@$2@$1@$0@2%204$4@%72@%74@%76@%78@3|@|@|@|@|@|@"])
  fun op omniCommand_nchotomy x = x
    val op omniCommand_nchotomy =
    ThmBind.DT(((("ConductORPType",69),
                [("ConductORPType",[54,56,57,58,59]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%111%22%193%128$0@%224@2%193%128$0@%223@2%193%128$0@%225@2%128$0@%196@4|@"])
  fun op omniCommand_Axiom x = x
    val op omniCommand_Axiom =
    ThmBind.DT(((("ConductORPType",70),
                [("ConductORPType",[61]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%98%94%137%35%122%125$0%224@2$4@2%122%125$0%223@2$3@2%122%125$0%225@2$2@2%125$0%196@2$1@4|@|@|@|@|@"])
  fun op omniCommand_induction x = x
    val op omniCommand_induction =
    ThmBind.DT(((("ConductORPType",71),
                [("ConductORPType",[54,56,57,58,59]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%100%15%136%122$0%196@2%122$0%223@2%122$0%224@2$0%225@5%111%22$1$0@|@2|@"])
  fun op omniCommand_distinct_clauses x = x
    val op omniCommand_distinct_clauses =
    ThmBind.DT(((("ConductORPType",72),
                [("ConductORPType",[61,62]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%128%224@%223@3%122%232%128%224@%225@3%122%232%128%224@%196@3%122%232%128%223@%225@3%122%232%128%223@%196@3%232%128%225@%196@7"])
  fun op datatype_slCommand x = x
    val op datatype_slCommand =
    ThmBind.DT(((("ConductORPType",83),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%66%176@%177@%174@2"])
  fun op slCommand_11 x = x
    val op slCommand_11 =
    ThmBind.DT(((("ConductORPType",84),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%122%112%23%112%29%126%132%176$1@2%176$0@3%129$1@$0@2|@|@2%122%113%24%113%30%126%132%177$1@2%177$0@3%130$1@$0@2|@|@2%111%22%111%28%126%132%174$1@2%174$0@3%128$1@$0@2|@|@3"])
  fun op slCommand_distinct x = x
    val op slCommand_distinct =
    ThmBind.DT(((("ConductORPType",85),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[25,26,35,46,50,53,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%122%113%30%112%23%232%132%176$0@2%177$1@3|@|@2%122%111%28%112%23%232%132%176$0@2%174$1@3|@|@2%111%28%113%24%232%132%177$0@2%174$1@3|@|@3"])
  fun op slCommand_case_cong x = x
    val op slCommand_case_cong =
    ThmBind.DT(((("ConductORPType",86),
                [("ConductORPType",[74,75,76,77,78,79,80,81]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%115%4%115%11%101%36%103%43%99%45%136%122%132$4@$3@2%122%112%23%136%132$4@%176$0@3%125$3$0@2%41$0@3|@2%122%113%24%136%132$4@%177$0@3%125$2$0@2%44$0@3|@2%111%22%136%132$4@%174$0@3%125$1$0@2%46$0@3|@5%125%215$4@$2@$1@$0@2%215$3@%41@%44@%46@3|@|@|@|@|@"])
  fun op slCommand_nchotomy x = x
    val op slCommand_nchotomy =
    ThmBind.DT(((("ConductORPType",87),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%115%69%193%153%52%132$1@%176$0@2|@2%193%154%53%132$1@%177$0@2|@2%152%50%132$1@%174$0@2|@3|@"])
  fun op slCommand_Axiom x = x
    val op slCommand_Axiom =
    ThmBind.DT(((("ConductORPType",88),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%101%42%103%43%99%45%143%47%122%112%23%125$1%176$0@3$4$0@2|@2%122%113%24%125$1%177$0@3$3$0@2|@2%111%22%125$1%174$0@3$2$0@2|@3|@|@|@|@"])
  fun op slCommand_induction x = x
    val op slCommand_induction =
    ThmBind.DT(((("ConductORPType",89),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%106%18%136%122%112%52$1%176$0@2|@2%122%113%53$1%177$0@2|@2%111%50$1%174$0@2|@4%115%65$1$0@|@2|@"])
  fun op slCommand_distinct_clauses x = x
    val op slCommand_distinct_clauses =
    ThmBind.DT(((("ConductORPType",90),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[25,26,35,46,50,53,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%122%113%30%112%23%232%132%176$0@2%177$1@3|@|@2%122%111%28%112%23%232%132%176$0@2%174$1@3|@|@2%111%28%113%24%232%132%177$0@2%174$1@3|@|@3"])
  fun op slCommand_one_one x = x
    val op slCommand_one_one =
    ThmBind.DT(((("ConductORPType",91),
                [("ConductORPType",[74,75,76,77,78,79,80]),
                 ("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%122%112%23%112%29%126%132%176$1@2%176$0@3%129$1@$0@2|@|@2%122%113%24%113%30%126%132%177$1@2%177$0@3%130$1@$0@2|@|@2%111%22%111%28%126%132%174$1@2%174$0@3%128$1@$0@2|@|@3"])
  fun op num2slState_slState2num x = x
    val op num2slState_slState2num =
    ThmBind.DT(((("ConductORPType",94),
                [("ConductORPType",[93])]),["DISK_THM"]),
               [ThmBind.read"%117%26%134%201%220$0@3$0@|@"])
  fun op slState2num_num2slState x = x
    val op slState2num_num2slState =
    ThmBind.DT(((("ConductORPType",95),
                [("ConductORPType",[93])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%163%164%192@5%127%220%201$0@3$0@2|@"])
  fun op num2slState_11 x = x
    val op num2slState_11 =
    ThmBind.DT(((("ConductORPType",96),
                [("ConductORPType",[93]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%110%57%136%124$1@%173%163%164%192@5%136%124$0@%173%163%164%192@5%126%134%201$1@2%201$0@3%127$1@$0@4|@|@"])
  fun op slState2num_11 x = x
    val op slState2num_11 =
    ThmBind.DT(((("ConductORPType",97),
                [("ConductORPType",[93]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%26%117%32%126%127%220$1@2%220$0@3%134$1@$0@2|@|@"])
  fun op num2slState_ONTO x = x
    val op num2slState_ONTO =
    ThmBind.DT(((("ConductORPType",98),
                [("ConductORPType",[93]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%117%26%151%56%122%134$1@%201$0@3%124$0@%173%163%164%192@5|@|@"])
  fun op slState2num_ONTO x = x
    val op slState2num_ONTO =
    ThmBind.DT(((("ConductORPType",99),
                [("ConductORPType",[93]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%163%164%192@5%156%26%127$1@%220$0@2|@2|@"])
  fun op num2slState_thm x = x
    val op num2slState_thm =
    ThmBind.DT(((("ConductORPType",105),
                [("ConductORPType",[100,101,102,103,104])]),[]),
               [ThmBind.read"%122%134%201%123@2%168@2%122%134%201%173%163%192@4%180@2%122%134%201%173%164%192@4%158@2%122%134%201%173%163%163%192@5%190@2%134%201%173%164%163%192@5%166@5"])
  fun op slState2num_thm x = x
    val op slState2num_thm =
    ThmBind.DT(((("ConductORPType",106),
                [("ConductORPType",[95,100,101,102,103,104]),
                 ("bool",[25,53]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%127%220%168@2%123@2%122%127%220%180@2%173%163%192@4%122%127%220%158@2%173%164%192@4%122%127%220%190@2%173%163%163%192@5%127%220%166@2%173%164%163%192@8"])
  fun op slState_EQ_slState x = x
    val op slState_EQ_slState =
    ThmBind.DT(((("ConductORPType",107),
                [("ConductORPType",[97]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%117%26%117%32%126%134$1@$0@2%127%220$1@2%220$0@3|@|@"])
  fun op slState_case_def x = x
    val op slState_case_def =
    ThmBind.DT(((("ConductORPType",110),
                [("ConductORPType",[106,109]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%98%77%98%79%125%221%168@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%125%221%180@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%125%221%158@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%125%221%190@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%98%71%98%73%98%75%98%77%98%79%125%221%166@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_slState x = x
    val op datatype_slState =
    ThmBind.DT(((("ConductORPType",111),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%68%168@%180@%158@%190@%166@2"])
  fun op slState_distinct x = x
    val op slState_distinct =
    ThmBind.DT(((("ConductORPType",112),
                [("ConductORPType",[106,107]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%134%168@%180@3%122%232%134%168@%158@3%122%232%134%168@%190@3%122%232%134%168@%166@3%122%232%134%180@%158@3%122%232%134%180@%190@3%122%232%134%180@%166@3%122%232%134%158@%190@3%122%232%134%158@%166@3%232%134%190@%166@11"])
  fun op slState_case_cong x = x
    val op slState_case_cong =
    ThmBind.DT(((("ConductORPType",113),
                [("ConductORPType",[98,100,101,102,103,104,110]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%117%6%117%13%98%71%98%73%98%75%98%77%98%79%136%122%134$6@$5@2%122%136%134$5@%168@2%125$4@%72@3%122%136%134$5@%180@2%125$3@%74@3%122%136%134$5@%158@2%125$2@%76@3%122%136%134$5@%190@2%125$1@%78@3%136%134$5@%166@2%125$0@%80@8%125%221$6@$4@$3@$2@$1@$0@2%221$5@%72@%74@%76@%78@%80@3|@|@|@|@|@|@|@"])
  fun op slState_nchotomy x = x
    val op slState_nchotomy =
    ThmBind.DT(((("ConductORPType",114),
                [("ConductORPType",[98,100,101,102,103,104]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%117%26%193%134$0@%168@2%193%134$0@%180@2%193%134$0@%158@2%193%134$0@%190@2%134$0@%166@5|@"])
  fun op slState_Axiom x = x
    val op slState_Axiom =
    ThmBind.DT(((("ConductORPType",115),
                [("ConductORPType",[106]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%98%94%98%95%147%39%122%125$0%168@2$5@2%122%125$0%180@2$4@2%122%125$0%158@2$3@2%122%125$0%190@2$2@2%125$0%166@2$1@5|@|@|@|@|@|@"])
  fun op slState_induction x = x
    val op slState_induction =
    ThmBind.DT(((("ConductORPType",116),
                [("ConductORPType",[98,100,101,102,103,104]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%108%20%136%122$0%158@2%122$0%166@2%122$0%168@2%122$0%180@2$0%190@6%117%26$1$0@|@2|@"])
  fun op slState_distinct_clauses x = x
    val op slState_distinct_clauses =
    ThmBind.DT(((("ConductORPType",117),
                [("ConductORPType",[106,107]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%134%168@%180@3%122%232%134%168@%158@3%122%232%134%168@%190@3%122%232%134%168@%166@3%122%232%134%180@%158@3%122%232%134%180@%190@3%122%232%134%180@%166@3%122%232%134%158@%190@3%122%232%134%158@%166@3%232%134%190@%166@11"])
  fun op num2slOutput_slOutput2num x = x
    val op num2slOutput_slOutput2num =
    ThmBind.DT(((("ConductORPType",120),
                [("ConductORPType",[119])]),["DISK_THM"]),
               [ThmBind.read"%116%25%133%200%217$0@3$0@|@"])
  fun op slOutput2num_num2slOutput x = x
    val op slOutput2num_num2slOutput =
    ThmBind.DT(((("ConductORPType",121),
                [("ConductORPType",[119])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%163%163%163%192@6%127%217%200$0@3$0@2|@"])
  fun op num2slOutput_11 x = x
    val op num2slOutput_11 =
    ThmBind.DT(((("ConductORPType",122),
                [("ConductORPType",[119]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%110%57%136%124$1@%173%163%163%163%192@6%136%124$0@%173%163%163%163%192@6%126%133%200$1@2%200$0@3%127$1@$0@4|@|@"])
  fun op slOutput2num_11 x = x
    val op slOutput2num_11 =
    ThmBind.DT(((("ConductORPType",123),
                [("ConductORPType",[119]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%116%25%116%31%126%127%217$1@2%217$0@3%133$1@$0@2|@|@"])
  fun op num2slOutput_ONTO x = x
    val op num2slOutput_ONTO =
    ThmBind.DT(((("ConductORPType",124),
                [("ConductORPType",[119]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%116%25%151%56%122%133$1@%200$0@3%124$0@%173%163%163%163%192@6|@|@"])
  fun op slOutput2num_ONTO x = x
    val op slOutput2num_ONTO =
    ThmBind.DT(((("ConductORPType",125),
                [("ConductORPType",[119]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%163%163%163%192@6%155%25%127$1@%217$0@2|@2|@"])
  fun op num2slOutput_thm x = x
    val op num2slOutput_thm =
    ThmBind.DT(((("ConductORPType",133),
                [("ConductORPType",[126,127,128,129,130,131,132])]),[]),
               [ThmBind.read"%122%133%200%123@2%171@2%122%133%200%173%163%192@4%182@2%122%133%200%173%164%192@4%162@2%122%133%200%173%163%163%192@5%191@2%122%133%200%173%164%163%192@5%170@2%122%133%200%173%163%164%192@5%229@2%133%200%173%164%164%192@5%230@7"])
  fun op slOutput2num_thm x = x
    val op slOutput2num_thm =
    ThmBind.DT(((("ConductORPType",134),
                [("ConductORPType",[121,126,127,128,129,130,131,132]),
                 ("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%127%217%171@2%123@2%122%127%217%182@2%173%163%192@4%122%127%217%162@2%173%164%192@4%122%127%217%191@2%173%163%163%192@5%122%127%217%170@2%173%164%163%192@5%122%127%217%229@2%173%163%164%192@5%127%217%230@2%173%164%164%192@10"])
  fun op slOutput_EQ_slOutput x = x
    val op slOutput_EQ_slOutput =
    ThmBind.DT(((("ConductORPType",135),
                [("ConductORPType",[123]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%116%25%116%31%126%133$1@$0@2%127%217$1@2%217$0@3|@|@"])
  fun op slOutput_case_def x = x
    val op slOutput_case_def =
    ThmBind.DT(((("ConductORPType",138),
                [("ConductORPType",[134,137]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%171@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%182@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%162@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%191@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%170@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%229@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@2%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%218%230@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@7"])
  fun op datatype_slOutput x = x
    val op datatype_slOutput =
    ThmBind.DT(((("ConductORPType",139),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%67%171@%182@%162@%191@%170@%229@%230@2"])
  fun op slOutput_distinct x = x
    val op slOutput_distinct =
    ThmBind.DT(((("ConductORPType",140),
                [("ConductORPType",[134,135]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%133%171@%182@3%122%232%133%171@%162@3%122%232%133%171@%191@3%122%232%133%171@%170@3%122%232%133%171@%229@3%122%232%133%171@%230@3%122%232%133%182@%162@3%122%232%133%182@%191@3%122%232%133%182@%170@3%122%232%133%182@%229@3%122%232%133%182@%230@3%122%232%133%162@%191@3%122%232%133%162@%170@3%122%232%133%162@%229@3%122%232%133%162@%230@3%122%232%133%191@%170@3%122%232%133%191@%229@3%122%232%133%191@%230@3%122%232%133%170@%229@3%122%232%133%170@%230@3%232%133%229@%230@22"])
  fun op slOutput_case_cong x = x
    val op slOutput_case_cong =
    ThmBind.DT(((("ConductORPType",141),
                [("ConductORPType",[124,126,127,128,129,130,131,132,138]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%116%5%116%12%98%71%98%73%98%75%98%77%98%79%98%81%98%83%136%122%133$8@$7@2%122%136%133$7@%171@2%125$6@%72@3%122%136%133$7@%182@2%125$5@%74@3%122%136%133$7@%162@2%125$4@%76@3%122%136%133$7@%191@2%125$3@%78@3%122%136%133$7@%170@2%125$2@%80@3%122%136%133$7@%229@2%125$1@%82@3%136%133$7@%230@2%125$0@%84@10%125%218$8@$6@$5@$4@$3@$2@$1@$0@2%218$7@%72@%74@%76@%78@%80@%82@%84@3|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_nchotomy x = x
    val op slOutput_nchotomy =
    ThmBind.DT(((("ConductORPType",142),
                [("ConductORPType",[124,126,127,128,129,130,131,132]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%116%25%193%133$0@%171@2%193%133$0@%182@2%193%133$0@%162@2%193%133$0@%191@2%193%133$0@%170@2%193%133$0@%229@2%133$0@%230@7|@"])
  fun op slOutput_Axiom x = x
    val op slOutput_Axiom =
    ThmBind.DT(((("ConductORPType",143),
                [("ConductORPType",[134]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%98%94%98%95%98%96%98%97%145%38%122%125$0%171@2$7@2%122%125$0%182@2$6@2%122%125$0%162@2$5@2%122%125$0%191@2$4@2%122%125$0%170@2$3@2%122%125$0%229@2$2@2%125$0%230@2$1@7|@|@|@|@|@|@|@|@"])
  fun op slOutput_induction x = x
    val op slOutput_induction =
    ThmBind.DT(((("ConductORPType",144),
                [("ConductORPType",[124,126,127,128,129,130,131,132]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%107%19%136%122$0%162@2%122$0%170@2%122$0%171@2%122$0%182@2%122$0%191@2%122$0%229@2$0%230@8%116%25$1$0@|@2|@"])
  fun op slOutput_distinct_clauses x = x
    val op slOutput_distinct_clauses =
    ThmBind.DT(((("ConductORPType",145),
                [("ConductORPType",[134,135]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%133%171@%182@3%122%232%133%171@%162@3%122%232%133%171@%191@3%122%232%133%171@%170@3%122%232%133%171@%229@3%122%232%133%171@%230@3%122%232%133%182@%162@3%122%232%133%182@%191@3%122%232%133%182@%170@3%122%232%133%182@%229@3%122%232%133%182@%230@3%122%232%133%162@%191@3%122%232%133%162@%170@3%122%232%133%162@%229@3%122%232%133%162@%230@3%122%232%133%191@%170@3%122%232%133%191@%229@3%122%232%133%191@%230@3%122%232%133%170@%229@3%122%232%133%170@%230@3%232%133%229@%230@22"])
  fun op num2stateRole_stateRole2num x = x
    val op num2stateRole_stateRole2num =
    ThmBind.DT(((("ConductORPType",148),
                [("ConductORPType",[147])]),["DISK_THM"]),
               [ThmBind.read"%118%27%135%202%226$0@3$0@|@"])
  fun op stateRole2num_num2stateRole x = x
    val op stateRole2num_num2stateRole =
    ThmBind.DT(((("ConductORPType",149),
                [("ConductORPType",[147])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%163%163%192@5%127%226%202$0@3$0@2|@"])
  fun op num2stateRole_11 x = x
    val op num2stateRole_11 =
    ThmBind.DT(((("ConductORPType",150),
                [("ConductORPType",[147]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%110%57%136%124$1@%173%163%163%192@5%136%124$0@%173%163%163%192@5%126%135%202$1@2%202$0@3%127$1@$0@4|@|@"])
  fun op stateRole2num_11 x = x
    val op stateRole2num_11 =
    ThmBind.DT(((("ConductORPType",151),
                [("ConductORPType",[147]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%118%27%118%33%126%127%226$1@2%226$0@3%135$1@$0@2|@|@"])
  fun op num2stateRole_ONTO x = x
    val op num2stateRole_ONTO =
    ThmBind.DT(((("ConductORPType",152),
                [("ConductORPType",[147]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%118%27%151%56%122%135$1@%202$0@3%124$0@%173%163%163%192@5|@|@"])
  fun op stateRole2num_ONTO x = x
    val op stateRole2num_ONTO =
    ThmBind.DT(((("ConductORPType",153),
                [("ConductORPType",[147]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%110%56%126%124$0@%173%163%163%192@5%157%27%127$1@%226$0@2|@2|@"])
  fun op num2stateRole_thm x = x
    val op num2stateRole_thm =
    ThmBind.DT(((("ConductORPType",157),
                [("ConductORPType",[154,155,156])]),[]),
               [ThmBind.read"%122%135%202%123@2%178@2%122%135%202%173%163%192@4%179@2%135%202%173%164%192@4%175@3"])
  fun op stateRole2num_thm x = x
    val op stateRole2num_thm =
    ThmBind.DT(((("ConductORPType",158),
                [("ConductORPType",[149,154,155,156]),("bool",[25]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%122%127%226%178@2%123@2%122%127%226%179@2%173%163%192@4%127%226%175@2%173%164%192@5"])
  fun op stateRole_EQ_stateRole x = x
    val op stateRole_EQ_stateRole =
    ThmBind.DT(((("ConductORPType",159),
                [("ConductORPType",[151]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%118%27%118%33%126%135$1@$0@2%127%226$1@2%226$0@3|@|@"])
  fun op stateRole_case_def x = x
    val op stateRole_case_def =
    ThmBind.DT(((("ConductORPType",162),
                [("ConductORPType",[158,161]),("bool",[55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%125%227%178@$2@$1@$0@2$2@|@|@|@2%122%98%71%98%73%98%75%125%227%179@$2@$1@$0@2$1@|@|@|@2%98%71%98%73%98%75%125%227%175@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_stateRole x = x
    val op datatype_stateRole =
    ThmBind.DT(((("ConductORPType",163),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%172%70%178@%179@%175@2"])
  fun op stateRole_distinct x = x
    val op stateRole_distinct =
    ThmBind.DT(((("ConductORPType",164),
                [("ConductORPType",[158,159]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%135%178@%179@3%122%232%135%178@%175@3%232%135%179@%175@4"])
  fun op stateRole_case_cong x = x
    val op stateRole_case_cong =
    ThmBind.DT(((("ConductORPType",165),
                [("ConductORPType",[152,154,155,156,162]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%118%7%118%14%98%71%98%73%98%75%136%122%135$4@$3@2%122%136%135$3@%178@2%125$2@%72@3%122%136%135$3@%179@2%125$1@%74@3%136%135$3@%175@2%125$0@%76@6%125%227$4@$2@$1@$0@2%227$3@%72@%74@%76@3|@|@|@|@|@"])
  fun op stateRole_nchotomy x = x
    val op stateRole_nchotomy =
    ThmBind.DT(((("ConductORPType",166),
                [("ConductORPType",[152,154,155,156]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%118%27%193%135$0@%178@2%193%135$0@%179@2%135$0@%175@3|@"])
  fun op stateRole_Axiom x = x
    val op stateRole_Axiom =
    ThmBind.DT(((("ConductORPType",167),
                [("ConductORPType",[158]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%149%40%122%125$0%178@2$3@2%122%125$0%179@2$2@2%125$0%175@2$1@3|@|@|@|@"])
  fun op stateRole_induction x = x
    val op stateRole_induction =
    ThmBind.DT(((("ConductORPType",168),
                [("ConductORPType",[152,154,155,156]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%109%21%136%122$0%175@2%122$0%178@2$0%179@4%118%27$1$0@|@2|@"])
  fun op slRole_distinct_clauses x = x
    val op slRole_distinct_clauses =
    ThmBind.DT(((("ConductORPType",169),
                [("ConductORPType",[158,159]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%122%232%135%178@%179@3%122%232%135%178@%175@3%232%135%179@%175@4"])

  val _ = DB.bindl "ConductORPType"
  [("plCommand_TY_DEF",plCommand_TY_DEF,DB.Def),
   ("plCommand_BIJ",plCommand_BIJ,DB.Def),
   ("plCommand_size_def",plCommand_size_def,DB.Def),
   ("plCommand_CASE",plCommand_CASE,DB.Def),
   ("psgCommand_TY_DEF",psgCommand_TY_DEF,DB.Def),
   ("psgCommand_BIJ",psgCommand_BIJ,DB.Def),
   ("psgCommand_size_def",psgCommand_size_def,DB.Def),
   ("psgCommand_CASE",psgCommand_CASE,DB.Def),
   ("omniCommand_TY_DEF",omniCommand_TY_DEF,DB.Def),
   ("omniCommand_BIJ",omniCommand_BIJ,DB.Def),
   ("omniCommand_size_def",omniCommand_size_def,DB.Def),
   ("omniCommand_CASE",omniCommand_CASE,DB.Def),
   ("slCommand_TY_DEF",slCommand_TY_DEF,DB.Def),
   ("slCommand_case_def",slCommand_case_def,DB.Def),
   ("slCommand_size_def",slCommand_size_def,DB.Def),
   ("slState_TY_DEF",slState_TY_DEF,DB.Def),
   ("slState_BIJ",slState_BIJ,DB.Def),
   ("slState_size_def",slState_size_def,DB.Def),
   ("slState_CASE",slState_CASE,DB.Def),
   ("slOutput_TY_DEF",slOutput_TY_DEF,DB.Def),
   ("slOutput_BIJ",slOutput_BIJ,DB.Def),
   ("slOutput_size_def",slOutput_size_def,DB.Def),
   ("slOutput_CASE",slOutput_CASE,DB.Def),
   ("stateRole_TY_DEF",stateRole_TY_DEF,DB.Def),
   ("stateRole_BIJ",stateRole_BIJ,DB.Def),
   ("stateRole_size_def",stateRole_size_def,DB.Def),
   ("stateRole_CASE",stateRole_CASE,DB.Def),
   ("num2plCommand_plCommand2num",num2plCommand_plCommand2num,DB.Thm),
   ("plCommand2num_num2plCommand",plCommand2num_num2plCommand,DB.Thm),
   ("num2plCommand_11",num2plCommand_11,DB.Thm),
   ("plCommand2num_11",plCommand2num_11,DB.Thm),
   ("num2plCommand_ONTO",num2plCommand_ONTO,DB.Thm),
   ("plCommand2num_ONTO",plCommand2num_ONTO,DB.Thm),
   ("num2plCommand_thm",num2plCommand_thm,DB.Thm),
   ("plCommand2num_thm",plCommand2num_thm,DB.Thm),
   ("plCommand_EQ_plCommand",plCommand_EQ_plCommand,DB.Thm),
   ("plCommand_case_def",plCommand_case_def,DB.Thm),
   ("datatype_plCommand",datatype_plCommand,DB.Thm),
   ("plCommand_distinct",plCommand_distinct,DB.Thm),
   ("plCommand_case_cong",plCommand_case_cong,DB.Thm),
   ("plCommand_nchotomy",plCommand_nchotomy,DB.Thm),
   ("plCommand_Axiom",plCommand_Axiom,DB.Thm),
   ("plCommand_induction",plCommand_induction,DB.Thm),
   ("plCommand_distinct_clauses",plCommand_distinct_clauses,DB.Thm),
   ("num2psgCommand_psgCommand2num",num2psgCommand_psgCommand2num,DB.Thm),
   ("psgCommand2num_num2psgCommand",psgCommand2num_num2psgCommand,DB.Thm),
   ("num2psgCommand_11",num2psgCommand_11,DB.Thm),
   ("psgCommand2num_11",psgCommand2num_11,DB.Thm),
   ("num2psgCommand_ONTO",num2psgCommand_ONTO,DB.Thm),
   ("psgCommand2num_ONTO",psgCommand2num_ONTO,DB.Thm),
   ("num2psgCommand_thm",num2psgCommand_thm,DB.Thm),
   ("psgCommand2num_thm",psgCommand2num_thm,DB.Thm),
   ("psgCommand_EQ_psgCommand",psgCommand_EQ_psgCommand,DB.Thm),
   ("psgCommand_case_def",psgCommand_case_def,DB.Thm),
   ("datatype_psgCommand",datatype_psgCommand,DB.Thm),
   ("psgCommand_distinct",psgCommand_distinct,DB.Thm),
   ("psgCommand_case_cong",psgCommand_case_cong,DB.Thm),
   ("psgCommand_nchotomy",psgCommand_nchotomy,DB.Thm),
   ("psgCommand_Axiom",psgCommand_Axiom,DB.Thm),
   ("psgCommand_induction",psgCommand_induction,DB.Thm),
   ("psgCommand_distinct_clauses",psgCommand_distinct_clauses,DB.Thm),
   ("num2omniCommand_omniCommand2num",
    num2omniCommand_omniCommand2num,
    DB.Thm),
   ("omniCommand2num_num2omniCommand",
    omniCommand2num_num2omniCommand,
    DB.Thm), ("num2omniCommand_11",num2omniCommand_11,DB.Thm),
   ("omniCommand2num_11",omniCommand2num_11,DB.Thm),
   ("num2omniCommand_ONTO",num2omniCommand_ONTO,DB.Thm),
   ("omniCommand2num_ONTO",omniCommand2num_ONTO,DB.Thm),
   ("num2omniCommand_thm",num2omniCommand_thm,DB.Thm),
   ("omniCommand2num_thm",omniCommand2num_thm,DB.Thm),
   ("omniCommand_EQ_omniCommand",omniCommand_EQ_omniCommand,DB.Thm),
   ("omniCommand_case_def",omniCommand_case_def,DB.Thm),
   ("datatype_omniCommand",datatype_omniCommand,DB.Thm),
   ("omniCommand_distinct",omniCommand_distinct,DB.Thm),
   ("omniCommand_case_cong",omniCommand_case_cong,DB.Thm),
   ("omniCommand_nchotomy",omniCommand_nchotomy,DB.Thm),
   ("omniCommand_Axiom",omniCommand_Axiom,DB.Thm),
   ("omniCommand_induction",omniCommand_induction,DB.Thm),
   ("omniCommand_distinct_clauses",omniCommand_distinct_clauses,DB.Thm),
   ("datatype_slCommand",datatype_slCommand,DB.Thm),
   ("slCommand_11",slCommand_11,DB.Thm),
   ("slCommand_distinct",slCommand_distinct,DB.Thm),
   ("slCommand_case_cong",slCommand_case_cong,DB.Thm),
   ("slCommand_nchotomy",slCommand_nchotomy,DB.Thm),
   ("slCommand_Axiom",slCommand_Axiom,DB.Thm),
   ("slCommand_induction",slCommand_induction,DB.Thm),
   ("slCommand_distinct_clauses",slCommand_distinct_clauses,DB.Thm),
   ("slCommand_one_one",slCommand_one_one,DB.Thm),
   ("num2slState_slState2num",num2slState_slState2num,DB.Thm),
   ("slState2num_num2slState",slState2num_num2slState,DB.Thm),
   ("num2slState_11",num2slState_11,DB.Thm),
   ("slState2num_11",slState2num_11,DB.Thm),
   ("num2slState_ONTO",num2slState_ONTO,DB.Thm),
   ("slState2num_ONTO",slState2num_ONTO,DB.Thm),
   ("num2slState_thm",num2slState_thm,DB.Thm),
   ("slState2num_thm",slState2num_thm,DB.Thm),
   ("slState_EQ_slState",slState_EQ_slState,DB.Thm),
   ("slState_case_def",slState_case_def,DB.Thm),
   ("datatype_slState",datatype_slState,DB.Thm),
   ("slState_distinct",slState_distinct,DB.Thm),
   ("slState_case_cong",slState_case_cong,DB.Thm),
   ("slState_nchotomy",slState_nchotomy,DB.Thm),
   ("slState_Axiom",slState_Axiom,DB.Thm),
   ("slState_induction",slState_induction,DB.Thm),
   ("slState_distinct_clauses",slState_distinct_clauses,DB.Thm),
   ("num2slOutput_slOutput2num",num2slOutput_slOutput2num,DB.Thm),
   ("slOutput2num_num2slOutput",slOutput2num_num2slOutput,DB.Thm),
   ("num2slOutput_11",num2slOutput_11,DB.Thm),
   ("slOutput2num_11",slOutput2num_11,DB.Thm),
   ("num2slOutput_ONTO",num2slOutput_ONTO,DB.Thm),
   ("slOutput2num_ONTO",slOutput2num_ONTO,DB.Thm),
   ("num2slOutput_thm",num2slOutput_thm,DB.Thm),
   ("slOutput2num_thm",slOutput2num_thm,DB.Thm),
   ("slOutput_EQ_slOutput",slOutput_EQ_slOutput,DB.Thm),
   ("slOutput_case_def",slOutput_case_def,DB.Thm),
   ("datatype_slOutput",datatype_slOutput,DB.Thm),
   ("slOutput_distinct",slOutput_distinct,DB.Thm),
   ("slOutput_case_cong",slOutput_case_cong,DB.Thm),
   ("slOutput_nchotomy",slOutput_nchotomy,DB.Thm),
   ("slOutput_Axiom",slOutput_Axiom,DB.Thm),
   ("slOutput_induction",slOutput_induction,DB.Thm),
   ("slOutput_distinct_clauses",slOutput_distinct_clauses,DB.Thm),
   ("num2stateRole_stateRole2num",num2stateRole_stateRole2num,DB.Thm),
   ("stateRole2num_num2stateRole",stateRole2num_num2stateRole,DB.Thm),
   ("num2stateRole_11",num2stateRole_11,DB.Thm),
   ("stateRole2num_11",stateRole2num_11,DB.Thm),
   ("num2stateRole_ONTO",num2stateRole_ONTO,DB.Thm),
   ("stateRole2num_ONTO",stateRole2num_ONTO,DB.Thm),
   ("num2stateRole_thm",num2stateRole_thm,DB.Thm),
   ("stateRole2num_thm",stateRole2num_thm,DB.Thm),
   ("stateRole_EQ_stateRole",stateRole_EQ_stateRole,DB.Thm),
   ("stateRole_case_def",stateRole_case_def,DB.Thm),
   ("datatype_stateRole",datatype_stateRole,DB.Thm),
   ("stateRole_distinct",stateRole_distinct,DB.Thm),
   ("stateRole_case_cong",stateRole_case_cong,DB.Thm),
   ("stateRole_nchotomy",stateRole_nchotomy,DB.Thm),
   ("stateRole_Axiom",stateRole_Axiom,DB.Thm),
   ("stateRole_induction",stateRole_induction,DB.Thm),
   ("slRole_distinct_clauses",slRole_distinct_clauses,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ConductORPType",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY14.ConductORPType,9.plCommandNTY14.ConductORPType,10.psgCommandNTY14.ConductORPType,11.omniCommandNTY14.ConductORPType,9.slCommandNTY14.ConductORPType,7.slStateNTY14.ConductORPType,8.slOutputNTY14.ConductORPType,9.stateRole"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ConductORPType",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO13.plCommand2num4.%206OO13.num2plCommand4.%198OO6.secure4.%214OO8.withdraw4.%231OO8.complete4.%195OO12.plIncomplete4.%209OO14.plCommand_size4.%208OO14.plCommand_CASE4.%207OO4.case4.%207OO14.psgCommand2num4.%210OO14.num2psgCommand4.%199OO9.actionsIn4.%194OO13.psgIncomplete4.%213OO15.psgCommand_size4.%212OO15.psgCommand_CASE4.%211OO4.case4.%211OO15.omniCommand2num4.%203OO15.num2omniCommand4.%197OO17.ssmSecureComplete4.%224OO20.ssmActionsInComplete4.%223OO19.ssmWithdrawComplete4.%225OO18.invalidOmniCommand4.%196OO16.omniCommand_size4.%205OO16.omniCommand_CASE4.%204OO4.case4.%204OO2.PL4.%176OO3.PSG4.%177OO4.OMNI4.%174OO14.slCommand_CASE4.%215OO14.slCommand_size4.%216OO4.case4.%215OO11.slState2num4.%220OO11.num2slState4.%201OO11.CONDUCT_ORP4.%168OO6.SECURE4.%180OO10.ACTIONS_IN4.%158OO8.WITHDRAW4.%190OO8.COMPLETE4.%166OO12.slState_size4.%222OO12.slState_CASE4.%221OO4.case4.%221OO12.slOutput2num4.%217OO12.num2slOutput4.%200OO10.ConductORP4.%171OO6.Secure4.%182OO9.ActionsIn4.%162OO8.Withdraw4.%191OO8.Complete4.%170OO15.unAuthenticated4.%229OO12.unAuthorized4.%230OO13.slOutput_size4.%219OO13.slOutput_CASE4.%218OO4.case4.%218OO13.stateRole2num4.%226OO13.num2stateRole4.%202OO13.PlatoonLeader4.%178OO15.PlatoonSergeant4.%179OO4.Omni4.%175OO14.stateRole_size4.%228OO14.stateRole_CASE4.%227OO4.case4.%227"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ConductORPType_grammars = merge_grammars ["indexedLists",
                                                "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ConductORPType"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ConductORPType_grammars = 
    Portable.## (addtyUDs,addtmUDs) ConductORPType_grammars
  val _ = Parse.grammarDB_insert("ConductORPType",ConductORPType_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG plCommand_Axiom,
           case_def=plCommand_case_def,
           case_cong=plCommand_case_cong,
           induction=ORIG plCommand_induction,
           nchotomy=plCommand_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$plCommand_size) :ConductORPType$plCommand -> num$num`,
                     ORIG plCommand_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME plCommand_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2plCommand_thm plCommand2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG psgCommand_Axiom,
           case_def=psgCommand_case_def,
           case_cong=psgCommand_case_cong,
           induction=ORIG psgCommand_induction,
           nchotomy=psgCommand_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$psgCommand_size) :ConductORPType$psgCommand -> num$num`,
                     ORIG psgCommand_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME psgCommand_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2psgCommand_thm psgCommand2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG omniCommand_Axiom,
           case_def=omniCommand_case_def,
           case_cong=omniCommand_case_cong,
           induction=ORIG omniCommand_induction,
           nchotomy=omniCommand_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$omniCommand_size) :ConductORPType$omniCommand -> num$num`,
                     ORIG omniCommand_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME omniCommand_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2omniCommand_thm omniCommand2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG slCommand_Axiom,
           case_def=slCommand_case_def,
           case_cong=slCommand_case_cong,
           induction=ORIG slCommand_induction,
           nchotomy=slCommand_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$slCommand_size) :ConductORPType$slCommand -> num$num`,
                     ORIG slCommand_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME slCommand_11,
           distinct=SOME slCommand_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG slState_Axiom,
           case_def=slState_case_def,
           case_cong=slState_case_cong,
           induction=ORIG slState_induction,
           nchotomy=slState_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$slState_size) :ConductORPType$slState -> num$num`,
                     ORIG slState_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME slState_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2slState_thm slState2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG slOutput_Axiom,
           case_def=slOutput_case_def,
           case_cong=slOutput_case_cong,
           induction=ORIG slOutput_induction,
           nchotomy=slOutput_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$slOutput_size) :ConductORPType$slOutput -> num$num`,
                     ORIG slOutput_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME slOutput_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2slOutput_thm slOutput2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG stateRole_Axiom,
           case_def=stateRole_case_def,
           case_cong=stateRole_case_cong,
           induction=ORIG stateRole_induction,
           nchotomy=stateRole_nchotomy,
           size=SOME(Parse.Term`(ConductORPType$stateRole_size) :ConductORPType$stateRole -> num$num`,
                     ORIG stateRole_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME stateRole_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2stateRole_thm stateRole2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ConductORPType"
end
