structure PlanPBTypeTheory :> PlanPBTypeTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading PlanPBTypeTheory ... " else ()
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
          ("PlanPBType",
          Arbnum.fromString "1528688779",
          Arbnum.fromString "358648")
          [("indexedLists",
           Arbnum.fromString "1501974078",
           Arbnum.fromString "687272"),
           ("patternMatches",
           Arbnum.fromString "1501974125",
           Arbnum.fromString "747236")];
  val _ = Theory.incorporate_types "PlanPBType"
       [("stateRole", 0), ("slState", 0), ("slOutput", 0),
        ("slCommand", 0), ("psgCommand", 0), ("plCommand", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("PlanPBType", "plCommand"), ID("PlanPBType", "slOutput"),
   ID("min", "fun"), ID("num", "num"), ID("PlanPBType", "stateRole"),
   ID("PlanPBType", "slState"), ID("PlanPBType", "slCommand"),
   ID("PlanPBType", "psgCommand"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("pair", "prod"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"),
   ID("PlanPBType", "COMPLETE"), ID("PlanPBType", "COMPLETE_PLAN"),
   ID("bool", "COND"), ID("ind_type", "CONSTR"),
   ID("PlanPBType", "Complete"), ID("PlanPBType", "CompletePlan"),
   ID("bool", "DATATYPE"), ID("PlanPBType", "INITIATE_MOVEMENT"),
   ID("PlanPBType", "InitiateMovement"), ID("arithmetic", "NUMERAL"),
   ID("PlanPBType", "OPOID"), ID("PlanPBType", "Opoid"),
   ID("PlanPBType", "PL"), ID("PlanPBType", "PLAN_PB"),
   ID("PlanPBType", "PSG"), ID("PlanPBType", "PlanPB"),
   ID("PlanPBType", "PlatoonLeader"), ID("PlanPBType", "PlatoonSergeant"),
   ID("PlanPBType", "RECEIVE_MISSION"), ID("PlanPBType", "RECON"),
   ID("PlanPBType", "REPORT1"), ID("PlanPBType", "REPORT2"),
   ID("PlanPBType", "ReceiveMission"), ID("PlanPBType", "Recon"),
   ID("PlanPBType", "Report1"), ID("PlanPBType", "Report2"),
   ID("num", "SUC"), ID("PlanPBType", "SUPERVISE"),
   ID("PlanPBType", "Supervise"), ID("PlanPBType", "TENTATIVE_PLAN"),
   ID("bool", "TYPE_DEFINITION"), ID("PlanPBType", "TentativePlan"),
   ID("PlanPBType", "WARNO"), ID("PlanPBType", "Warno"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("PlanPBType", "complete"), ID("PlanPBType", "completePlan"),
   ID("PlanPBType", "initiateMovement"),
   ID("PlanPBType", "invalidPlCommand"),
   ID("PlanPBType", "invalidPsgCommand"),
   ID("PlanPBType", "num2plCommand"), ID("PlanPBType", "num2psgCommand"),
   ID("PlanPBType", "num2slOutput"), ID("PlanPBType", "num2slState"),
   ID("PlanPBType", "num2stateRole"), ID("PlanPBType", "opoid"),
   ID("PlanPBType", "plCommand2num"), ID("PlanPBType", "plCommand_CASE"),
   ID("PlanPBType", "plCommand_size"), ID("PlanPBType", "plIncomplete"),
   ID("PlanPBType", "psgCommand2num"), ID("PlanPBType", "psgCommand_CASE"),
   ID("PlanPBType", "psgCommand_size"), ID("PlanPBType", "psgIncomplete"),
   ID("PlanPBType", "receiveMission"), ID("PlanPBType", "recon"),
   ID("PlanPBType", "report1"), ID("PlanPBType", "report2"),
   ID("PlanPBType", "slCommand_CASE"), ID("PlanPBType", "slCommand_size"),
   ID("PlanPBType", "slOutput2num"), ID("PlanPBType", "slOutput_CASE"),
   ID("PlanPBType", "slOutput_size"), ID("PlanPBType", "slState2num"),
   ID("PlanPBType", "slState_CASE"), ID("PlanPBType", "slState_size"),
   ID("PlanPBType", "stateRole2num"), ID("PlanPBType", "stateRole_CASE"),
   ID("PlanPBType", "stateRole_size"), ID("PlanPBType", "supervise"),
   ID("PlanPBType", "tentativePlan"), ID("PlanPBType", "unAuthenticated"),
   ID("PlanPBType", "unAuthorized"), ID("PlanPBType", "warno"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [1], TYOP [3], TYOP [4], TYOP [2, 3, 2], TYV "'a",
   TYOP [2, 5, 5], TYOP [2, 5, 6], TYOP [2, 3, 7], TYOP [5],
   TYOP [2, 9, 2], TYOP [2, 5, 7], TYOP [2, 5, 11], TYOP [2, 5, 12],
   TYOP [2, 5, 13], TYOP [2, 5, 14], TYOP [2, 5, 15], TYOP [2, 5, 16],
   TYOP [2, 5, 17], TYOP [2, 5, 18], TYOP [2, 5, 19], TYOP [2, 9, 20],
   TYOP [2, 1, 2], TYOP [2, 5, 20], TYOP [2, 5, 23], TYOP [2, 1, 24],
   TYOP [6], TYOP [2, 26, 2], TYOP [7], TYOP [2, 28, 5], TYOP [2, 29, 5],
   TYOP [2, 0, 5], TYOP [2, 31, 30], TYOP [2, 26, 32], TYOP [2, 28, 2],
   TYOP [2, 28, 11], TYOP [2, 0, 2], TYOP [2, 0, 20], TYOP [2, 2, 3],
   TYOP [2, 2, 9], TYOP [2, 2, 1], TYOP [2, 2, 28], TYOP [2, 2, 0],
   TYOP [2, 28, 26], TYOP [2, 0, 26], TYOP [8], TYOP [10, 0, 28],
   TYOP [9, 46], TYOP [2, 47, 45], TYOP [2, 0, 45], TYOP [2, 28, 45],
   TYOP [2, 26, 45], TYOP [2, 1, 45], TYOP [2, 9, 45], TYOP [2, 3, 45],
   TYOP [2, 1, 5], TYOP [2, 9, 5], TYOP [2, 3, 5], TYOP [2, 26, 5],
   TYOP [2, 0, 49], TYOP [2, 0, 59], TYOP [2, 0, 60], TYOP [2, 0, 61],
   TYOP [2, 0, 62], TYOP [2, 0, 63], TYOP [2, 0, 64], TYOP [2, 0, 65],
   TYOP [2, 0, 66], TYOP [2, 0, 67], TYOP [2, 0, 68], TYOP [2, 28, 50],
   TYOP [2, 28, 70], TYOP [2, 26, 47], TYOP [2, 43, 45], TYOP [2, 44, 73],
   TYOP [2, 1, 52], TYOP [2, 1, 75], TYOP [2, 1, 76], TYOP [2, 1, 77],
   TYOP [2, 1, 78], TYOP [2, 1, 79], TYOP [2, 1, 80], TYOP [2, 1, 81],
   TYOP [2, 1, 82], TYOP [2, 1, 83], TYOP [2, 1, 84], TYOP [2, 1, 85],
   TYOP [2, 1, 86], TYOP [2, 9, 53], TYOP [2, 9, 88], TYOP [2, 9, 89],
   TYOP [2, 9, 90], TYOP [2, 9, 91], TYOP [2, 9, 92], TYOP [2, 9, 93],
   TYOP [2, 9, 94], TYOP [2, 9, 95], TYOP [2, 9, 96], TYOP [2, 9, 97],
   TYOP [2, 3, 54], TYOP [2, 5, 45], TYOP [2, 100, 45], TYOP [2, 31, 45],
   TYOP [2, 102, 45], TYOP [2, 49, 45], TYOP [2, 104, 45],
   TYOP [2, 29, 45], TYOP [2, 106, 45], TYOP [2, 50, 45],
   TYOP [2, 108, 45], TYOP [2, 48, 45], TYOP [2, 110, 45],
   TYOP [2, 51, 45], TYOP [2, 112, 45], TYOP [2, 52, 45],
   TYOP [2, 114, 45], TYOP [2, 53, 45], TYOP [2, 116, 45],
   TYOP [2, 54, 45], TYOP [2, 118, 45], TYOP [2, 2, 45], TYOP [2, 120, 45],
   TYOP [2, 2, 2], TYOP [2, 2, 122], TYOP [2, 28, 46], TYOP [2, 0, 124],
   TYOP [2, 45, 45], TYOP [2, 45, 126], TYOP [2, 2, 120], TYOP [2, 5, 100],
   TYOP [2, 47, 48], TYOP [2, 26, 51], TYOP [2, 36, 45], TYOP [2, 132, 45],
   TYOP [2, 34, 45], TYOP [2, 134, 45], TYOP [2, 58, 45],
   TYOP [2, 136, 45], TYOP [2, 72, 45], TYOP [2, 138, 45],
   TYOP [2, 55, 45], TYOP [2, 140, 45], TYOP [2, 22, 45],
   TYOP [2, 142, 45], TYOP [2, 56, 45], TYOP [2, 144, 45],
   TYOP [2, 10, 45], TYOP [2, 146, 45], TYOP [2, 57, 45],
   TYOP [2, 148, 45], TYOP [2, 4, 45], TYOP [2, 150, 45], TYOP [2, 45, 7],
   TYOP [2, 2, 47], TYOP [2, 153, 47], TYOP [2, 46, 154], TYOP [2, 2, 155],
   TYOP [2, 120, 132], TYOP [2, 120, 134], TYOP [2, 120, 142],
   TYOP [2, 120, 146], TYOP [2, 120, 150], TYOP [2, 48, 138]]
  end
  val _ = Theory.incorporate_consts "PlanPBType" tyvector
     [("warno", 0), ("unAuthorized", 1), ("unAuthenticated", 1),
      ("tentativePlan", 0), ("supervise", 0), ("stateRole_size", 4),
      ("stateRole_CASE", 8), ("stateRole2num", 4), ("slState_size", 10),
      ("slState_CASE", 21), ("slState2num", 10), ("slOutput_size", 22),
      ("slOutput_CASE", 25), ("slOutput2num", 22), ("slCommand_size", 27),
      ("slCommand_CASE", 33), ("report2", 0), ("report1", 0), ("recon", 0),
      ("receiveMission", 0), ("psgIncomplete", 28),
      ("psgCommand_size", 34), ("psgCommand_CASE", 35),
      ("psgCommand2num", 34), ("plIncomplete", 0), ("plCommand_size", 36),
      ("plCommand_CASE", 37), ("plCommand2num", 36), ("opoid", 0),
      ("num2stateRole", 38), ("num2slState", 39), ("num2slOutput", 40),
      ("num2psgCommand", 41), ("num2plCommand", 42),
      ("invalidPsgCommand", 28), ("invalidPlCommand", 0),
      ("initiateMovement", 28), ("completePlan", 0), ("complete", 0),
      ("Warno", 1), ("WARNO", 9), ("TentativePlan", 1),
      ("TENTATIVE_PLAN", 9), ("Supervise", 1), ("SUPERVISE", 9),
      ("Report2", 1), ("Report1", 1), ("Recon", 1), ("ReceiveMission", 1),
      ("REPORT2", 9), ("REPORT1", 9), ("RECON", 9), ("RECEIVE_MISSION", 9),
      ("PlatoonSergeant", 3), ("PlatoonLeader", 3), ("PlanPB", 1),
      ("PSG", 43), ("PLAN_PB", 9), ("PL", 44), ("Opoid", 1), ("OPOID", 9),
      ("InitiateMovement", 1), ("INITIATE_MOVEMENT", 9),
      ("CompletePlan", 1), ("Complete", 1), ("COMPLETE_PLAN", 9),
      ("COMPLETE", 9)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'slCommand'", 48), TMV("M", 0), TMV("M", 28), TMV("M", 26),
   TMV("M", 1), TMV("M", 9), TMV("M", 3), TMV("M'", 0), TMV("M'", 28),
   TMV("M'", 26), TMV("M'", 1), TMV("M'", 9), TMV("M'", 3), TMV("P", 49),
   TMV("P", 50), TMV("P", 51), TMV("P", 52), TMV("P", 53), TMV("P", 54),
   TMV("a", 0), TMV("a", 28), TMV("a", 1), TMV("a", 9), TMV("a", 3),
   TMV("a'", 0), TMV("a'", 28), TMV("a'", 1), TMV("a'", 9), TMV("a'", 3),
   TMV("a0", 47), TMV("f", 31), TMV("f", 29), TMV("f", 55), TMV("f", 56),
   TMV("f", 57), TMV("f'", 31), TMV("f0", 31), TMV("f1", 29),
   TMV("f1'", 29), TMV("fn", 58), TMV("m", 2), TMV("n", 2), TMV("p", 0),
   TMV("p", 28), TMV("plCommand", 69), TMV("psgCommand", 71), TMV("r", 2),
   TMV("r'", 2), TMV("rep", 36), TMV("rep", 34), TMV("rep", 72),
   TMV("rep", 22), TMV("rep", 10), TMV("rep", 4), TMV("s", 26),
   TMV("slCommand", 74), TMV("slOutput", 87), TMV("slState", 98),
   TMV("ss", 26), TMV("stateRole", 99), TMV("v0", 5), TMV("v0'", 5),
   TMV("v1", 5), TMV("v1'", 5), TMV("v10", 5), TMV("v10'", 5),
   TMV("v11", 5), TMV("v11'", 5), TMV("v12", 5), TMV("v12'", 5),
   TMV("v13", 5), TMV("v13'", 5), TMV("v2", 5), TMV("v2'", 5),
   TMV("v3", 5), TMV("v3'", 5), TMV("v4", 5), TMV("v4'", 5), TMV("v5", 5),
   TMV("v5'", 5), TMV("v6", 5), TMV("v6'", 5), TMV("v7", 5), TMV("v7'", 5),
   TMV("v8", 5), TMV("v8'", 5), TMV("v9", 5), TMV("v9'", 5), TMV("x", 0),
   TMV("x", 28), TMV("x", 1), TMV("x", 9), TMV("x", 3), TMV("x0", 5),
   TMV("x1", 5), TMV("x10", 5), TMV("x11", 5), TMV("x12", 5),
   TMV("x13", 5), TMV("x2", 5), TMV("x3", 5), TMV("x4", 5), TMV("x5", 5),
   TMV("x6", 5), TMV("x7", 5), TMV("x8", 5), TMV("x9", 5), TMC(11, 101),
   TMC(11, 103), TMC(11, 105), TMC(11, 107), TMC(11, 109), TMC(11, 111),
   TMC(11, 113), TMC(11, 115), TMC(11, 117), TMC(11, 119), TMC(11, 121),
   TMC(11, 104), TMC(11, 108), TMC(11, 110), TMC(11, 112), TMC(11, 114),
   TMC(11, 116), TMC(11, 118), TMC(12, 123), TMC(13, 125), TMC(14, 127),
   TMC(15, 2), TMC(16, 128), TMC(17, 129), TMC(17, 127), TMC(17, 128),
   TMC(17, 59), TMC(17, 70), TMC(17, 130), TMC(17, 131), TMC(17, 75),
   TMC(17, 88), TMC(17, 99), TMC(18, 127), TMC(19, 103), TMC(19, 133),
   TMC(19, 107), TMC(19, 135), TMC(19, 137), TMC(19, 139), TMC(19, 141),
   TMC(19, 143), TMC(19, 145), TMC(19, 147), TMC(19, 149), TMC(19, 151),
   TMC(19, 121), TMC(19, 104), TMC(19, 108), TMC(19, 114), TMC(19, 116),
   TMC(19, 118), TMC(20, 0), TMC(20, 28), TMC(21, 122), TMC(22, 122),
   TMC(23, 47), TMC(24, 9), TMC(25, 9), TMC(26, 152), TMC(27, 156),
   TMC(28, 1), TMC(29, 1), TMC(30, 126), TMC(31, 9), TMC(32, 1),
   TMC(33, 122), TMC(34, 9), TMC(35, 1), TMC(36, 44), TMC(37, 9),
   TMC(38, 43), TMC(39, 1), TMC(40, 3), TMC(41, 3), TMC(42, 9), TMC(43, 9),
   TMC(44, 9), TMC(45, 9), TMC(46, 1), TMC(47, 1), TMC(48, 1), TMC(49, 1),
   TMC(50, 122), TMC(51, 9), TMC(52, 1), TMC(53, 9), TMC(54, 157),
   TMC(54, 158), TMC(54, 159), TMC(54, 160), TMC(54, 161), TMC(54, 162),
   TMC(55, 1), TMC(56, 9), TMC(57, 1), TMC(58, 2), TMC(59, 127),
   TMC(60, 0), TMC(61, 0), TMC(62, 28), TMC(63, 0), TMC(64, 28),
   TMC(65, 42), TMC(66, 41), TMC(67, 40), TMC(68, 39), TMC(69, 38),
   TMC(70, 0), TMC(71, 36), TMC(72, 37), TMC(73, 36), TMC(74, 0),
   TMC(75, 34), TMC(76, 35), TMC(77, 34), TMC(78, 28), TMC(79, 0),
   TMC(80, 0), TMC(81, 0), TMC(82, 0), TMC(83, 33), TMC(84, 27),
   TMC(85, 22), TMC(86, 25), TMC(87, 22), TMC(88, 10), TMC(89, 21),
   TMC(90, 10), TMC(91, 4), TMC(92, 8), TMC(93, 4), TMC(94, 0), TMC(95, 0),
   TMC(96, 1), TMC(97, 1), TMC(98, 0), TMC(99, 126)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op plCommand_TY_DEF x = x
    val op plCommand_TY_DEF =
    ThmBind.DT(((("PlanPBType",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%142%48%194%41%129$0@%173%162%161%162%203@5|@$0@|@"])
  fun op plCommand_BIJ x = x
    val op plCommand_BIJ =
    ThmBind.DT(((("PlanPBType",1),
                [("PlanPBType",[0]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%127%118%19%133%210%216$0@3$0@|@2%117%46%131%41%129$0@%173%162%161%162%203@5|$0@2%132%216%210$0@3$0@2|@2"])












  fun op plCommand_size_def x = x
    val op plCommand_size_def =
    ThmBind.DT(((("PlanPBType",23),[]),[]),
               [ThmBind.read"%118%88%132%218$0@2%128@|@"])
  fun op plCommand_CASE x = x
    val op plCommand_CASE =
    ThmBind.DT(((("PlanPBType",24),[]),[]),
               [ThmBind.read"%118%88%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%40%166%129$0@%173%161%162%203@5%166%129$0@%173%162%203@4%166%132$0@%128@2$12@$11@2%166%129$0@%173%161%161%203@5$10@%166%132$0@%173%161%161%203@5$9@$8@4%166%129$0@%173%162%161%161%203@6%166%129$0@%173%162%162%203@5$7@%166%132$0@%173%162%162%203@5$6@$5@3%166%129$0@%173%161%162%161%203@6$4@%166%129$0@%173%162%162%161%203@6$3@%166%132$0@%173%162%162%161%203@6$2@$1@5|%216$12@3|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op psgCommand_TY_DEF x = x
    val op psgCommand_TY_DEF =
    ThmBind.DT(((("PlanPBType",33),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%144%49%195%41%129$0@%173%161%161%203@4|@$0@|@"])
  fun op psgCommand_BIJ x = x
    val op psgCommand_BIJ =
    ThmBind.DT(((("PlanPBType",34),
                [("PlanPBType",[33]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%127%119%20%134%211%220$0@3$0@|@2%117%46%131%41%129$0@%173%161%161%203@4|$0@2%132%220%211$0@3$0@2|@2"])



  fun op psgCommand_size_def x = x
    val op psgCommand_size_def =
    ThmBind.DT(((("PlanPBType",47),[]),[]),
               [ThmBind.read"%119%89%132%222$0@2%128@|@"])
  fun op psgCommand_CASE x = x
    val op psgCommand_CASE =
    ThmBind.DT(((("PlanPBType",48),[]),[]),
               [ThmBind.read"%119%89%107%60%107%62%107%72%130%221$3@$2@$1@$0@2%40%166%129$0@%173%161%203@4$3@%166%132$0@%173%161%203@4$2@$1@2|%220$3@3|@|@|@|@"])
  fun op slCommand_TY_DEF x = x
    val op slCommand_TY_DEF =
    ThmBind.DT(((("PlanPBType",57),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%146%50%199%29%112%0%140%120%29%140%204%154%19%135$1@%19%167%128@%126$0@%160@2%41%163|@|$0@2|@2%155%20%135$1@%20%167%190%128@2%126%159@$0@2%41%163|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op slCommand_case_def x = x
    val op slCommand_case_def =
    ThmBind.DT(((("PlanPBType",63),
                [("PlanPBType",[58,59,60,61,62]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%127%118%19%108%30%110%37%130%228%176$2@2$1@$0@2$1$2@2|@|@|@2%119%20%108%30%110%37%130%228%178$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op slCommand_size_def x = x
    val op slCommand_size_def =
    ThmBind.DT(((("PlanPBType",64),
                [("PlanPBType",[58,59,60,61,62]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%127%118%19%132%229%176$0@3%125%173%161%203@3%218$0@3|@2%119%20%132%229%178$0@3%125%173%161%203@3%222$0@3|@2"])
  fun op slState_TY_DEF x = x
    val op slState_TY_DEF =
    ThmBind.DT(((("PlanPBType",74),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%150%52%197%41%129$0@%173%162%161%162%203@5|@$0@|@"])
  fun op slState_BIJ x = x
    val op slState_BIJ =
    ThmBind.DT(((("PlanPBType",75),
                [("PlanPBType",[74]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%127%123%22%138%213%233$0@3$0@|@2%117%46%131%41%129$0@%173%162%161%162%203@5|$0@2%132%233%213$0@3$0@2|@2"])












  fun op slState_size_def x = x
    val op slState_size_def =
    ThmBind.DT(((("PlanPBType",97),[]),[]),
               [ThmBind.read"%123%91%132%235$0@2%128@|@"])
  fun op slState_CASE x = x
    val op slState_CASE =
    ThmBind.DT(((("PlanPBType",98),[]),[]),
               [ThmBind.read"%123%91%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%40%166%129$0@%173%161%162%203@5%166%129$0@%173%162%203@4%166%132$0@%128@2$12@$11@2%166%129$0@%173%161%161%203@5$10@%166%132$0@%173%161%161%203@5$9@$8@4%166%129$0@%173%162%161%161%203@6%166%129$0@%173%162%162%203@5$7@%166%132$0@%173%162%162%203@5$6@$5@3%166%129$0@%173%161%162%161%203@6$4@%166%129$0@%173%162%162%161%203@6$3@%166%132$0@%173%162%162%161%203@6$2@$1@5|%233$12@3|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_TY_DEF x = x
    val op slOutput_TY_DEF =
    ThmBind.DT(((("PlanPBType",107),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%148%51%196%41%129$0@%173%162%162%162%203@5|@$0@|@"])
  fun op slOutput_BIJ x = x
    val op slOutput_BIJ =
    ThmBind.DT(((("PlanPBType",108),
                [("PlanPBType",[107]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%127%122%21%137%212%230$0@3$0@|@2%117%46%131%41%129$0@%173%162%162%162%203@5|$0@2%132%230%212$0@3$0@2|@2"])














  fun op slOutput_size_def x = x
    val op slOutput_size_def =
    ThmBind.DT(((("PlanPBType",132),[]),[]),
               [ThmBind.read"%122%90%132%232$0@2%128@|@"])
  fun op slOutput_CASE x = x
    val op slOutput_CASE =
    ThmBind.DT(((("PlanPBType",133),[]),[]),
               [ThmBind.read"%122%90%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231$14@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%40%166%129$0@%173%162%162%203@5%166%129$0@%173%162%203@4%166%132$0@%128@2$14@$13@2%166%129$0@%173%161%161%203@5$12@%166%129$0@%173%162%161%203@5$11@%166%132$0@%173%162%161%203@5$10@$9@5%166%129$0@%173%161%162%161%203@6%166%129$0@%173%161%161%161%203@6$8@%166%132$0@%173%161%161%161%203@6$7@$6@3%166%129$0@%173%161%161%162%203@6%166%132$0@%173%161%162%161%203@6$5@$4@2%166%129$0@%173%162%161%162%203@6$3@%166%132$0@%173%162%161%162%203@6$2@$1@5|%230$14@3|@|@|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op stateRole_TY_DEF x = x
    val op stateRole_TY_DEF =
    ThmBind.DT(((("PlanPBType",142),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%152%53%198%41%129$0@%173%162%203@3|@$0@|@"])
  fun op stateRole_BIJ x = x
    val op stateRole_BIJ =
    ThmBind.DT(((("PlanPBType",143),
                [("PlanPBType",[142]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%127%124%23%139%214%236$0@3$0@|@2%117%46%131%41%129$0@%173%162%203@3|$0@2%132%236%214$0@3$0@2|@2"])


  fun op stateRole_size_def x = x
    val op stateRole_size_def =
    ThmBind.DT(((("PlanPBType",155),[]),[]),
               [ThmBind.read"%124%92%132%238$0@2%128@|@"])
  fun op stateRole_CASE x = x
    val op stateRole_CASE =
    ThmBind.DT(((("PlanPBType",156),[]),[]),
               [ThmBind.read"%124%92%107%60%107%62%130%237$2@$1@$0@2%40%166%132$0@%128@2$2@$1@|%236$2@3|@|@|@"])
  fun op num2plCommand_plCommand2num x = x
    val op num2plCommand_plCommand2num =
    ThmBind.DT(((("PlanPBType",2),[("PlanPBType",[1])]),["DISK_THM"]),
               [ThmBind.read"%118%19%133%210%216$0@3$0@|@"])
  fun op plCommand2num_num2plCommand x = x
    val op plCommand2num_num2plCommand =
    ThmBind.DT(((("PlanPBType",3),[("PlanPBType",[1])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%161%162%203@6%132%216%210$0@3$0@2|@"])
  fun op num2plCommand_11 x = x
    val op num2plCommand_11 =
    ThmBind.DT(((("PlanPBType",4),
                [("PlanPBType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%117%47%140%129$1@%173%162%161%162%203@6%140%129$0@%173%162%161%162%203@6%131%133%210$1@2%210$0@3%132$1@$0@4|@|@"])
  fun op plCommand2num_11 x = x
    val op plCommand2num_11 =
    ThmBind.DT(((("PlanPBType",5),
                [("PlanPBType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%118%19%118%24%131%132%216$1@2%216$0@3%133$1@$0@2|@|@"])
  fun op num2plCommand_ONTO x = x
    val op num2plCommand_ONTO =
    ThmBind.DT(((("PlanPBType",6),
                [("PlanPBType",[1]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%118%19%153%46%127%133$1@%210$0@3%129$0@%173%162%161%162%203@6|@|@"])
  fun op plCommand2num_ONTO x = x
    val op plCommand2num_ONTO =
    ThmBind.DT(((("PlanPBType",7),
                [("PlanPBType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%161%162%203@6%154%19%132$1@%216$0@2|@2|@"])
  fun op num2plCommand_thm x = x
    val op num2plCommand_thm =
    ThmBind.DT(((("PlanPBType",20),
                [("PlanPBType",[8,9,10,11,12,13,14,15,16,17,18,19])]),[]),
               [ThmBind.read"%127%133%210%128@2%224@2%127%133%210%173%161%203@4%243@2%127%133%210%173%162%203@4%240@2%127%133%210%173%161%161%203@5%225@2%127%133%210%173%162%161%203@5%226@2%127%133%210%173%161%162%203@5%206@2%127%133%210%173%162%162%203@5%215@2%127%133%210%173%161%161%161%203@6%239@2%127%133%210%173%162%161%161%203@6%227@2%127%133%210%173%161%162%161%203@6%205@2%127%133%210%173%162%162%161%203@6%219@2%133%210%173%161%161%162%203@6%208@12"])
  fun op plCommand2num_thm x = x
    val op plCommand2num_thm =
    ThmBind.DT(((("PlanPBType",21),
                [("PlanPBType",[3,8,9,10,11,12,13,14,15,16,17,18,19]),
                 ("bool",[25,53]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%132%216%224@2%128@2%127%132%216%243@2%173%161%203@4%127%132%216%240@2%173%162%203@4%127%132%216%225@2%173%161%161%203@5%127%132%216%226@2%173%162%161%203@5%127%132%216%206@2%173%161%162%203@5%127%132%216%215@2%173%162%162%203@5%127%132%216%239@2%173%161%161%161%203@6%127%132%216%227@2%173%162%161%161%203@6%127%132%216%205@2%173%161%162%161%203@6%127%132%216%219@2%173%162%162%161%203@6%132%216%208@2%173%161%161%162%203@16"])
  fun op plCommand_EQ_plCommand x = x
    val op plCommand_EQ_plCommand =
    ThmBind.DT(((("PlanPBType",22),
                [("PlanPBType",[5]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%118%19%118%24%131%133$1@$0@2%132%216$1@2%216$0@3|@|@"])
  fun op plCommand_case_def x = x
    val op plCommand_case_def =
    ThmBind.DT(((("PlanPBType",25),
                [("PlanPBType",[21,24]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%224@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$11@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%243@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$10@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%240@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$9@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%225@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$8@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%226@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$7@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%206@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%215@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%239@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%227@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%205@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%219@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@|@|@|@|@|@2%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%217%208@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@|@|@|@|@|@12"])
  fun op datatype_plCommand x = x
    val op datatype_plCommand =
    ThmBind.DT(((("PlanPBType",26),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%170%44%224@%243@%240@%225@%226@%206@%215@%239@%227@%205@%219@%208@2"])
  fun op plCommand_distinct x = x
    val op plCommand_distinct =
    ThmBind.DT(((("PlanPBType",27),
                [("PlanPBType",[21,22]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%133%224@%243@3%127%244%133%224@%240@3%127%244%133%224@%225@3%127%244%133%224@%226@3%127%244%133%224@%206@3%127%244%133%224@%215@3%127%244%133%224@%239@3%127%244%133%224@%227@3%127%244%133%224@%205@3%127%244%133%224@%219@3%127%244%133%224@%208@3%127%244%133%243@%240@3%127%244%133%243@%225@3%127%244%133%243@%226@3%127%244%133%243@%206@3%127%244%133%243@%215@3%127%244%133%243@%239@3%127%244%133%243@%227@3%127%244%133%243@%205@3%127%244%133%243@%219@3%127%244%133%243@%208@3%127%244%133%240@%225@3%127%244%133%240@%226@3%127%244%133%240@%206@3%127%244%133%240@%215@3%127%244%133%240@%239@3%127%244%133%240@%227@3%127%244%133%240@%205@3%127%244%133%240@%219@3%127%244%133%240@%208@3%127%244%133%225@%226@3%127%244%133%225@%206@3%127%244%133%225@%215@3%127%244%133%225@%239@3%127%244%133%225@%227@3%127%244%133%225@%205@3%127%244%133%225@%219@3%127%244%133%225@%208@3%127%244%133%226@%206@3%127%244%133%226@%215@3%127%244%133%226@%239@3%127%244%133%226@%227@3%127%244%133%226@%205@3%127%244%133%226@%219@3%127%244%133%226@%208@3%127%244%133%206@%215@3%127%244%133%206@%239@3%127%244%133%206@%227@3%127%244%133%206@%205@3%127%244%133%206@%219@3%127%244%133%206@%208@3%127%244%133%215@%239@3%127%244%133%215@%227@3%127%244%133%215@%205@3%127%244%133%215@%219@3%127%244%133%215@%208@3%127%244%133%239@%227@3%127%244%133%239@%205@3%127%244%133%239@%219@3%127%244%133%239@%208@3%127%244%133%227@%205@3%127%244%133%227@%219@3%127%244%133%227@%208@3%127%244%133%205@%219@3%127%244%133%205@%208@3%244%133%219@%208@67"])
  fun op plCommand_case_cong x = x
    val op plCommand_case_cong =
    ThmBind.DT(((("PlanPBType",28),
                [("PlanPBType",[6,8,9,10,11,12,13,14,15,16,17,18,19,25]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%118%1%118%7%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%140%127%133$13@$12@2%127%140%133$12@%224@2%130$11@%61@3%127%140%133$12@%243@2%130$10@%63@3%127%140%133$12@%240@2%130$9@%73@3%127%140%133$12@%225@2%130$8@%75@3%127%140%133$12@%226@2%130$7@%77@3%127%140%133$12@%206@2%130$6@%79@3%127%140%133$12@%215@2%130$5@%81@3%127%140%133$12@%239@2%130$4@%83@3%127%140%133$12@%227@2%130$3@%85@3%127%140%133$12@%205@2%130$2@%87@3%127%140%133$12@%219@2%130$1@%65@3%140%133$12@%208@2%130$0@%67@15%130%217$13@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%217$12@%61@%63@%73@%75@%77@%79@%81@%83@%85@%87@%65@%67@3|@|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op plCommand_nchotomy x = x
    val op plCommand_nchotomy =
    ThmBind.DT(((("PlanPBType",29),
                [("PlanPBType",[6,8,9,10,11,12,13,14,15,16,17,18,19]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%118%19%204%133$0@%224@2%204%133$0@%243@2%204%133$0@%240@2%204%133$0@%225@2%204%133$0@%226@2%204%133$0@%206@2%204%133$0@%215@2%204%133$0@%239@2%204%133$0@%227@2%204%133$0@%205@2%204%133$0@%219@2%133$0@%208@12|@"])
  fun op plCommand_Axiom x = x
    val op plCommand_Axiom =
    ThmBind.DT(((("PlanPBType",30),
                [("PlanPBType",[21]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%107%93%107%94%107%99%107%100%107%101%107%102%107%103%107%104%107%105%107%106%107%95%107%96%141%30%127%130$0%224@2$12@2%127%130$0%243@2$11@2%127%130$0%240@2$10@2%127%130$0%225@2$9@2%127%130$0%226@2$8@2%127%130$0%206@2$7@2%127%130$0%215@2$6@2%127%130$0%239@2$5@2%127%130$0%227@2$4@2%127%130$0%205@2$3@2%127%130$0%219@2$2@2%130$0%208@2$1@12|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op plCommand_induction x = x
    val op plCommand_induction =
    ThmBind.DT(((("PlanPBType",31),
                [("PlanPBType",[6,8,9,10,11,12,13,14,15,16,17,18,19]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%109%13%140%127$0%205@2%127$0%206@2%127$0%208@2%127$0%215@2%127$0%219@2%127$0%224@2%127$0%225@2%127$0%226@2%127$0%227@2%127$0%239@2%127$0%240@2$0%243@13%118%19$1$0@|@2|@"])
  fun op plCommand_distinct_clauses x = x
    val op plCommand_distinct_clauses =
    ThmBind.DT(((("PlanPBType",32),
                [("PlanPBType",[21,22]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%133%224@%243@3%127%244%133%224@%240@3%127%244%133%224@%225@3%127%244%133%224@%226@3%127%244%133%224@%206@3%127%244%133%224@%215@3%127%244%133%224@%239@3%127%244%133%224@%227@3%127%244%133%224@%205@3%127%244%133%224@%219@3%127%244%133%224@%208@3%127%244%133%243@%240@3%127%244%133%243@%225@3%127%244%133%243@%226@3%127%244%133%243@%206@3%127%244%133%243@%215@3%127%244%133%243@%239@3%127%244%133%243@%227@3%127%244%133%243@%205@3%127%244%133%243@%219@3%127%244%133%243@%208@3%127%244%133%240@%225@3%127%244%133%240@%226@3%127%244%133%240@%206@3%127%244%133%240@%215@3%127%244%133%240@%239@3%127%244%133%240@%227@3%127%244%133%240@%205@3%127%244%133%240@%219@3%127%244%133%240@%208@3%127%244%133%225@%226@3%127%244%133%225@%206@3%127%244%133%225@%215@3%127%244%133%225@%239@3%127%244%133%225@%227@3%127%244%133%225@%205@3%127%244%133%225@%219@3%127%244%133%225@%208@3%127%244%133%226@%206@3%127%244%133%226@%215@3%127%244%133%226@%239@3%127%244%133%226@%227@3%127%244%133%226@%205@3%127%244%133%226@%219@3%127%244%133%226@%208@3%127%244%133%206@%215@3%127%244%133%206@%239@3%127%244%133%206@%227@3%127%244%133%206@%205@3%127%244%133%206@%219@3%127%244%133%206@%208@3%127%244%133%215@%239@3%127%244%133%215@%227@3%127%244%133%215@%205@3%127%244%133%215@%219@3%127%244%133%215@%208@3%127%244%133%239@%227@3%127%244%133%239@%205@3%127%244%133%239@%219@3%127%244%133%239@%208@3%127%244%133%227@%205@3%127%244%133%227@%219@3%127%244%133%227@%208@3%127%244%133%205@%219@3%127%244%133%205@%208@3%244%133%219@%208@67"])
  fun op num2psgCommand_psgCommand2num x = x
    val op num2psgCommand_psgCommand2num =
    ThmBind.DT(((("PlanPBType",35),[("PlanPBType",[34])]),["DISK_THM"]),
               [ThmBind.read"%119%20%134%211%220$0@3$0@|@"])
  fun op psgCommand2num_num2psgCommand x = x
    val op psgCommand2num_num2psgCommand =
    ThmBind.DT(((("PlanPBType",36),[("PlanPBType",[34])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%161%161%203@5%132%220%211$0@3$0@2|@"])
  fun op num2psgCommand_11 x = x
    val op num2psgCommand_11 =
    ThmBind.DT(((("PlanPBType",37),
                [("PlanPBType",[34]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%117%47%140%129$1@%173%161%161%203@5%140%129$0@%173%161%161%203@5%131%134%211$1@2%211$0@3%132$1@$0@4|@|@"])
  fun op psgCommand2num_11 x = x
    val op psgCommand2num_11 =
    ThmBind.DT(((("PlanPBType",38),
                [("PlanPBType",[34]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%119%20%119%25%131%132%220$1@2%220$0@3%134$1@$0@2|@|@"])
  fun op num2psgCommand_ONTO x = x
    val op num2psgCommand_ONTO =
    ThmBind.DT(((("PlanPBType",39),
                [("PlanPBType",[34]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%119%20%153%46%127%134$1@%211$0@3%129$0@%173%161%161%203@5|@|@"])
  fun op psgCommand2num_ONTO x = x
    val op psgCommand2num_ONTO =
    ThmBind.DT(((("PlanPBType",40),
                [("PlanPBType",[34]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%161%161%203@5%155%20%132$1@%220$0@2|@2|@"])
  fun op num2psgCommand_thm x = x
    val op num2psgCommand_thm =
    ThmBind.DT(((("PlanPBType",44),[("PlanPBType",[41,42,43])]),[]),
               [ThmBind.read"%127%134%211%128@2%207@2%127%134%211%173%161%203@4%223@2%134%211%173%162%203@4%209@3"])
  fun op psgCommand2num_thm x = x
    val op psgCommand2num_thm =
    ThmBind.DT(((("PlanPBType",45),
                [("PlanPBType",[36,41,42,43]),("bool",[25]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%132%220%207@2%128@2%127%132%220%223@2%173%161%203@4%132%220%209@2%173%162%203@5"])
  fun op psgCommand_EQ_psgCommand x = x
    val op psgCommand_EQ_psgCommand =
    ThmBind.DT(((("PlanPBType",46),
                [("PlanPBType",[38]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%119%20%119%25%131%134$1@$0@2%132%220$1@2%220$0@3|@|@"])
  fun op psgCommand_case_def x = x
    val op psgCommand_case_def =
    ThmBind.DT(((("PlanPBType",49),
                [("PlanPBType",[45,48]),("bool",[55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%127%107%60%107%62%107%72%130%221%207@$2@$1@$0@2$2@|@|@|@2%127%107%60%107%62%107%72%130%221%223@$2@$1@$0@2$1@|@|@|@2%107%60%107%62%107%72%130%221%209@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_psgCommand x = x
    val op datatype_psgCommand =
    ThmBind.DT(((("PlanPBType",50),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%170%45%207@%223@%209@2"])
  fun op psgCommand_distinct x = x
    val op psgCommand_distinct =
    ThmBind.DT(((("PlanPBType",51),
                [("PlanPBType",[45,46]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%134%207@%223@3%127%244%134%207@%209@3%244%134%223@%209@4"])
  fun op psgCommand_case_cong x = x
    val op psgCommand_case_cong =
    ThmBind.DT(((("PlanPBType",52),
                [("PlanPBType",[39,41,42,43,49]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%119%2%119%8%107%60%107%62%107%72%140%127%134$4@$3@2%127%140%134$3@%207@2%130$2@%61@3%127%140%134$3@%223@2%130$1@%63@3%140%134$3@%209@2%130$0@%73@6%130%221$4@$2@$1@$0@2%221$3@%61@%63@%73@3|@|@|@|@|@"])
  fun op psgCommand_nchotomy x = x
    val op psgCommand_nchotomy =
    ThmBind.DT(((("PlanPBType",53),
                [("PlanPBType",[39,41,42,43]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%119%20%204%134$0@%207@2%204%134$0@%223@2%134$0@%209@3|@"])
  fun op psgCommand_Axiom x = x
    val op psgCommand_Axiom =
    ThmBind.DT(((("PlanPBType",54),
                [("PlanPBType",[45]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%107%93%107%94%107%99%143%31%127%130$0%207@2$3@2%127%130$0%223@2$2@2%130$0%209@2$1@3|@|@|@|@"])
  fun op psgCommand_induction x = x
    val op psgCommand_induction =
    ThmBind.DT(((("PlanPBType",55),
                [("PlanPBType",[39,41,42,43]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%111%14%140%127$0%207@2%127$0%209@2$0%223@4%119%20$1$0@|@2|@"])
  fun op psgCommand_distinct_clauses x = x
    val op psgCommand_distinct_clauses =
    ThmBind.DT(((("PlanPBType",56),
                [("PlanPBType",[45,46]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%134%207@%223@3%127%244%134%207@%209@3%244%134%223@%209@4"])
  fun op datatype_slCommand x = x
    val op datatype_slCommand =
    ThmBind.DT(((("PlanPBType",65),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%170%55%176@%178@2"])
  fun op slCommand_11 x = x
    val op slCommand_11 =
    ThmBind.DT(((("PlanPBType",66),
                [("PlanPBType",[58,59,60,61,62]),("bool",[26,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%127%118%19%118%24%131%136%176$1@2%176$0@3%133$1@$0@2|@|@2%119%20%119%25%131%136%178$1@2%178$0@3%134$1@$0@2|@|@2"])
  fun op slCommand_distinct x = x
    val op slCommand_distinct =
    ThmBind.DT(((("PlanPBType",67),
                [("PlanPBType",[58,59,60,61,62]),
                 ("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%119%25%118%19%244%136%176$0@2%178$1@3|@|@"])
  fun op slCommand_case_cong x = x
    val op slCommand_case_cong =
    ThmBind.DT(((("PlanPBType",68),
                [("PlanPBType",[58,59,60,61,62,63]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%121%3%121%9%108%30%110%37%140%127%136$3@$2@2%127%118%19%140%136$3@%176$0@3%130$2$0@2%35$0@3|@2%119%20%140%136$3@%178$0@3%130$1$0@2%38$0@3|@4%130%228$3@$1@$0@2%228$2@%35@%38@3|@|@|@|@"])
  fun op slCommand_nchotomy x = x
    val op slCommand_nchotomy =
    ThmBind.DT(((("PlanPBType",69),
                [("PlanPBType",[58,59,60,61,62]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%121%58%204%154%42%136$1@%176$0@2|@2%155%43%136$1@%178$0@2|@2|@"])
  fun op slCommand_Axiom x = x
    val op slCommand_Axiom =
    ThmBind.DT(((("PlanPBType",70),
                [("PlanPBType",[58,59,60,61,62]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%108%36%110%37%145%39%127%118%19%130$1%176$0@3$3$0@2|@2%119%20%130$1%178$0@3$2$0@2|@2|@|@|@"])
  fun op slCommand_induction x = x
    val op slCommand_induction =
    ThmBind.DT(((("PlanPBType",71),
                [("PlanPBType",[58,59,60,61,62]),
                 ("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%113%15%140%127%118%42$1%176$0@2|@2%119%43$1%178$0@2|@3%121%54$1$0@|@2|@"])
  fun op slCommand_distinct_clauses x = x
    val op slCommand_distinct_clauses =
    ThmBind.DT(((("PlanPBType",72),
                [("PlanPBType",[58,59,60,61,62]),
                 ("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%119%25%118%19%244%136%176$0@2%178$1@3|@|@"])
  fun op slCommand_one_one x = x
    val op slCommand_one_one =
    ThmBind.DT(((("PlanPBType",73),
                [("PlanPBType",[58,59,60,61,62]),("bool",[26,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%127%118%19%118%24%131%136%176$1@2%176$0@3%133$1@$0@2|@|@2%119%20%119%25%131%136%178$1@2%178$0@3%134$1@$0@2|@|@2"])
  fun op num2slState_slState2num x = x
    val op num2slState_slState2num =
    ThmBind.DT(((("PlanPBType",76),[("PlanPBType",[75])]),["DISK_THM"]),
               [ThmBind.read"%123%22%138%213%233$0@3$0@|@"])
  fun op slState2num_num2slState x = x
    val op slState2num_num2slState =
    ThmBind.DT(((("PlanPBType",77),[("PlanPBType",[75])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%161%162%203@6%132%233%213$0@3$0@2|@"])
  fun op num2slState_11 x = x
    val op num2slState_11 =
    ThmBind.DT(((("PlanPBType",78),
                [("PlanPBType",[75]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%117%47%140%129$1@%173%162%161%162%203@6%140%129$0@%173%162%161%162%203@6%131%138%213$1@2%213$0@3%132$1@$0@4|@|@"])
  fun op slState2num_11 x = x
    val op slState2num_11 =
    ThmBind.DT(((("PlanPBType",79),
                [("PlanPBType",[75]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%123%22%123%27%131%132%233$1@2%233$0@3%138$1@$0@2|@|@"])
  fun op num2slState_ONTO x = x
    val op num2slState_ONTO =
    ThmBind.DT(((("PlanPBType",80),
                [("PlanPBType",[75]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%123%22%153%46%127%138$1@%213$0@3%129$0@%173%162%161%162%203@6|@|@"])
  fun op slState2num_ONTO x = x
    val op slState2num_ONTO =
    ThmBind.DT(((("PlanPBType",81),
                [("PlanPBType",[75]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%161%162%203@6%157%22%132$1@%233$0@2|@2|@"])
  fun op num2slState_thm x = x
    val op num2slState_thm =
    ThmBind.DT(((("PlanPBType",94),
                [("PlanPBType",
                 [82,83,84,85,86,87,88,89,90,91,92,93])]),[]),
               [ThmBind.read"%127%138%213%128@2%177@2%127%138%213%173%161%203@4%182@2%127%138%213%173%162%203@4%201@2%127%138%213%173%161%161%203@5%193@2%127%138%213%173%162%161%203@5%171@2%127%138%213%173%161%162%203@5%183@2%127%138%213%173%162%162%203@5%184@2%127%138%213%173%161%161%161%203@6%165@2%127%138%213%173%162%161%161%203@6%174@2%127%138%213%173%161%162%161%203@6%191@2%127%138%213%173%162%162%161%203@6%185@2%138%213%173%161%161%162%203@6%164@12"])
  fun op slState2num_thm x = x
    val op slState2num_thm =
    ThmBind.DT(((("PlanPBType",95),
                [("PlanPBType",[77,82,83,84,85,86,87,88,89,90,91,92,93]),
                 ("bool",[25,53]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%132%233%177@2%128@2%127%132%233%182@2%173%161%203@4%127%132%233%201@2%173%162%203@4%127%132%233%193@2%173%161%161%203@5%127%132%233%171@2%173%162%161%203@5%127%132%233%183@2%173%161%162%203@5%127%132%233%184@2%173%162%162%203@5%127%132%233%165@2%173%161%161%161%203@6%127%132%233%174@2%173%162%161%161%203@6%127%132%233%191@2%173%161%162%161%203@6%127%132%233%185@2%173%162%162%161%203@6%132%233%164@2%173%161%161%162%203@16"])
  fun op slState_EQ_slState x = x
    val op slState_EQ_slState =
    ThmBind.DT(((("PlanPBType",96),
                [("PlanPBType",[79]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%123%22%123%27%131%138$1@$0@2%132%233$1@2%233$0@3|@|@"])
  fun op slState_case_def x = x
    val op slState_case_def =
    ThmBind.DT(((("PlanPBType",99),
                [("PlanPBType",[95,98]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%177@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$11@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%182@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$10@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%201@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$9@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%193@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$8@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%171@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$7@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%183@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%184@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%165@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%174@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%191@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%185@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@|@|@|@|@|@2%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%130%234%164@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@|@|@|@|@|@12"])
  fun op datatype_slState x = x
    val op datatype_slState =
    ThmBind.DT(((("PlanPBType",100),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%170%57%177@%182@%201@%193@%171@%183@%184@%165@%174@%191@%185@%164@2"])
  fun op slState_distinct x = x
    val op slState_distinct =
    ThmBind.DT(((("PlanPBType",101),
                [("PlanPBType",[95,96]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%138%177@%182@3%127%244%138%177@%201@3%127%244%138%177@%193@3%127%244%138%177@%171@3%127%244%138%177@%183@3%127%244%138%177@%184@3%127%244%138%177@%165@3%127%244%138%177@%174@3%127%244%138%177@%191@3%127%244%138%177@%185@3%127%244%138%177@%164@3%127%244%138%182@%201@3%127%244%138%182@%193@3%127%244%138%182@%171@3%127%244%138%182@%183@3%127%244%138%182@%184@3%127%244%138%182@%165@3%127%244%138%182@%174@3%127%244%138%182@%191@3%127%244%138%182@%185@3%127%244%138%182@%164@3%127%244%138%201@%193@3%127%244%138%201@%171@3%127%244%138%201@%183@3%127%244%138%201@%184@3%127%244%138%201@%165@3%127%244%138%201@%174@3%127%244%138%201@%191@3%127%244%138%201@%185@3%127%244%138%201@%164@3%127%244%138%193@%171@3%127%244%138%193@%183@3%127%244%138%193@%184@3%127%244%138%193@%165@3%127%244%138%193@%174@3%127%244%138%193@%191@3%127%244%138%193@%185@3%127%244%138%193@%164@3%127%244%138%171@%183@3%127%244%138%171@%184@3%127%244%138%171@%165@3%127%244%138%171@%174@3%127%244%138%171@%191@3%127%244%138%171@%185@3%127%244%138%171@%164@3%127%244%138%183@%184@3%127%244%138%183@%165@3%127%244%138%183@%174@3%127%244%138%183@%191@3%127%244%138%183@%185@3%127%244%138%183@%164@3%127%244%138%184@%165@3%127%244%138%184@%174@3%127%244%138%184@%191@3%127%244%138%184@%185@3%127%244%138%184@%164@3%127%244%138%165@%174@3%127%244%138%165@%191@3%127%244%138%165@%185@3%127%244%138%165@%164@3%127%244%138%174@%191@3%127%244%138%174@%185@3%127%244%138%174@%164@3%127%244%138%191@%185@3%127%244%138%191@%164@3%244%138%185@%164@67"])
  fun op slState_case_cong x = x
    val op slState_case_cong =
    ThmBind.DT(((("PlanPBType",102),
                [("PlanPBType",
                 [80,82,83,84,85,86,87,88,89,90,91,92,93,99]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%123%5%123%11%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%140%127%138$13@$12@2%127%140%138$12@%177@2%130$11@%61@3%127%140%138$12@%182@2%130$10@%63@3%127%140%138$12@%201@2%130$9@%73@3%127%140%138$12@%193@2%130$8@%75@3%127%140%138$12@%171@2%130$7@%77@3%127%140%138$12@%183@2%130$6@%79@3%127%140%138$12@%184@2%130$5@%81@3%127%140%138$12@%165@2%130$4@%83@3%127%140%138$12@%174@2%130$3@%85@3%127%140%138$12@%191@2%130$2@%87@3%127%140%138$12@%185@2%130$1@%65@3%140%138$12@%164@2%130$0@%67@15%130%234$13@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%234$12@%61@%63@%73@%75@%77@%79@%81@%83@%85@%87@%65@%67@3|@|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op slState_nchotomy x = x
    val op slState_nchotomy =
    ThmBind.DT(((("PlanPBType",103),
                [("PlanPBType",[80,82,83,84,85,86,87,88,89,90,91,92,93]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%123%22%204%138$0@%177@2%204%138$0@%182@2%204%138$0@%201@2%204%138$0@%193@2%204%138$0@%171@2%204%138$0@%183@2%204%138$0@%184@2%204%138$0@%165@2%204%138$0@%174@2%204%138$0@%191@2%204%138$0@%185@2%138$0@%164@12|@"])
  fun op slState_Axiom x = x
    val op slState_Axiom =
    ThmBind.DT(((("PlanPBType",104),
                [("PlanPBType",[95]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%107%93%107%94%107%99%107%100%107%101%107%102%107%103%107%104%107%105%107%106%107%95%107%96%149%33%127%130$0%177@2$12@2%127%130$0%182@2$11@2%127%130$0%201@2$10@2%127%130$0%193@2$9@2%127%130$0%171@2$8@2%127%130$0%183@2$7@2%127%130$0%184@2$6@2%127%130$0%165@2$5@2%127%130$0%174@2$4@2%127%130$0%191@2$3@2%127%130$0%185@2$2@2%130$0%164@2$1@12|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op slState_induction x = x
    val op slState_induction =
    ThmBind.DT(((("PlanPBType",105),
                [("PlanPBType",[80,82,83,84,85,86,87,88,89,90,91,92,93]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%115%17%140%127$0%164@2%127$0%165@2%127$0%171@2%127$0%174@2%127$0%177@2%127$0%182@2%127$0%183@2%127$0%184@2%127$0%185@2%127$0%191@2%127$0%193@2$0%201@13%123%22$1$0@|@2|@"])
  fun op slState_distinct_clauses x = x
    val op slState_distinct_clauses =
    ThmBind.DT(((("PlanPBType",106),
                [("PlanPBType",[95,96]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%138%177@%182@3%127%244%138%177@%201@3%127%244%138%177@%193@3%127%244%138%177@%171@3%127%244%138%177@%183@3%127%244%138%177@%184@3%127%244%138%177@%165@3%127%244%138%177@%174@3%127%244%138%177@%191@3%127%244%138%177@%185@3%127%244%138%177@%164@3%127%244%138%182@%201@3%127%244%138%182@%193@3%127%244%138%182@%171@3%127%244%138%182@%183@3%127%244%138%182@%184@3%127%244%138%182@%165@3%127%244%138%182@%174@3%127%244%138%182@%191@3%127%244%138%182@%185@3%127%244%138%182@%164@3%127%244%138%201@%193@3%127%244%138%201@%171@3%127%244%138%201@%183@3%127%244%138%201@%184@3%127%244%138%201@%165@3%127%244%138%201@%174@3%127%244%138%201@%191@3%127%244%138%201@%185@3%127%244%138%201@%164@3%127%244%138%193@%171@3%127%244%138%193@%183@3%127%244%138%193@%184@3%127%244%138%193@%165@3%127%244%138%193@%174@3%127%244%138%193@%191@3%127%244%138%193@%185@3%127%244%138%193@%164@3%127%244%138%171@%183@3%127%244%138%171@%184@3%127%244%138%171@%165@3%127%244%138%171@%174@3%127%244%138%171@%191@3%127%244%138%171@%185@3%127%244%138%171@%164@3%127%244%138%183@%184@3%127%244%138%183@%165@3%127%244%138%183@%174@3%127%244%138%183@%191@3%127%244%138%183@%185@3%127%244%138%183@%164@3%127%244%138%184@%165@3%127%244%138%184@%174@3%127%244%138%184@%191@3%127%244%138%184@%185@3%127%244%138%184@%164@3%127%244%138%165@%174@3%127%244%138%165@%191@3%127%244%138%165@%185@3%127%244%138%165@%164@3%127%244%138%174@%191@3%127%244%138%174@%185@3%127%244%138%174@%164@3%127%244%138%191@%185@3%127%244%138%191@%164@3%244%138%185@%164@67"])
  fun op num2slOutput_slOutput2num x = x
    val op num2slOutput_slOutput2num =
    ThmBind.DT(((("PlanPBType",109),[("PlanPBType",[108])]),["DISK_THM"]),
               [ThmBind.read"%122%21%137%212%230$0@3$0@|@"])
  fun op slOutput2num_num2slOutput x = x
    val op slOutput2num_num2slOutput =
    ThmBind.DT(((("PlanPBType",110),[("PlanPBType",[108])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%162%162%203@6%132%230%212$0@3$0@2|@"])
  fun op num2slOutput_11 x = x
    val op num2slOutput_11 =
    ThmBind.DT(((("PlanPBType",111),
                [("PlanPBType",[108]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%117%47%140%129$1@%173%162%162%162%203@6%140%129$0@%173%162%162%162%203@6%131%137%212$1@2%212$0@3%132$1@$0@4|@|@"])
  fun op slOutput2num_11 x = x
    val op slOutput2num_11 =
    ThmBind.DT(((("PlanPBType",112),
                [("PlanPBType",[108]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%122%21%122%26%131%132%230$1@2%230$0@3%137$1@$0@2|@|@"])
  fun op num2slOutput_ONTO x = x
    val op num2slOutput_ONTO =
    ThmBind.DT(((("PlanPBType",113),
                [("PlanPBType",[108]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%122%21%153%46%127%137$1@%212$0@3%129$0@%173%162%162%162%203@6|@|@"])
  fun op slOutput2num_ONTO x = x
    val op slOutput2num_ONTO =
    ThmBind.DT(((("PlanPBType",114),
                [("PlanPBType",[108]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%162%162%203@6%156%21%132$1@%230$0@2|@2|@"])
  fun op num2slOutput_thm x = x
    val op num2slOutput_thm =
    ThmBind.DT(((("PlanPBType",129),
                [("PlanPBType",
                 [115,116,117,118,119,120,121,122,123,124,125,126,127,
                  128])]),[]),
               [ThmBind.read"%127%137%212%128@2%179@2%127%137%212%173%161%203@4%186@2%127%137%212%173%162%203@4%202@2%127%137%212%173%161%161%203@5%200@2%127%137%212%173%162%161%203@5%172@2%127%137%212%173%161%162%203@5%187@2%127%137%212%173%162%162%203@5%188@2%127%137%212%173%161%161%161%203@6%169@2%127%137%212%173%162%161%161%203@6%175@2%127%137%212%173%161%162%161%203@6%192@2%127%137%212%173%162%162%161%203@6%189@2%127%137%212%173%161%161%162%203@6%168@2%127%137%212%173%162%161%162%203@6%241@2%137%212%173%161%162%162%203@6%242@14"])
  fun op slOutput2num_thm x = x
    val op slOutput2num_thm =
    ThmBind.DT(((("PlanPBType",130),
                [("PlanPBType",
                 [110,115,116,117,118,119,120,121,122,123,124,125,126,127,
                  128]),("bool",[25,53]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%132%230%179@2%128@2%127%132%230%186@2%173%161%203@4%127%132%230%202@2%173%162%203@4%127%132%230%200@2%173%161%161%203@5%127%132%230%172@2%173%162%161%203@5%127%132%230%187@2%173%161%162%203@5%127%132%230%188@2%173%162%162%203@5%127%132%230%169@2%173%161%161%161%203@6%127%132%230%175@2%173%162%161%161%203@6%127%132%230%192@2%173%161%162%161%203@6%127%132%230%189@2%173%162%162%161%203@6%127%132%230%168@2%173%161%161%162%203@6%127%132%230%241@2%173%162%161%162%203@6%132%230%242@2%173%161%162%162%203@18"])
  fun op slOutput_EQ_slOutput x = x
    val op slOutput_EQ_slOutput =
    ThmBind.DT(((("PlanPBType",131),
                [("PlanPBType",[112]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%122%21%122%26%131%137$1@$0@2%132%230$1@2%230$0@3|@|@"])
  fun op slOutput_case_def x = x
    val op slOutput_case_def =
    ThmBind.DT(((("PlanPBType",134),
                [("PlanPBType",[130,133]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%179@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$13@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%186@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$12@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%202@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$11@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%200@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$10@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%172@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$9@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%187@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$8@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%188@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$7@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%169@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%175@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%192@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%189@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%168@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%127%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%241@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@|@|@|@|@|@|@|@2%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%130%231%242@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@|@|@|@|@|@|@|@14"])
  fun op datatype_slOutput x = x
    val op datatype_slOutput =
    ThmBind.DT(((("PlanPBType",135),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%170%56%179@%186@%202@%200@%172@%187@%188@%169@%175@%192@%189@%168@%241@%242@2"])
  fun op slOutput_distinct x = x
    val op slOutput_distinct =
    ThmBind.DT(((("PlanPBType",136),
                [("PlanPBType",[130,131]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%137%179@%186@3%127%244%137%179@%202@3%127%244%137%179@%200@3%127%244%137%179@%172@3%127%244%137%179@%187@3%127%244%137%179@%188@3%127%244%137%179@%169@3%127%244%137%179@%175@3%127%244%137%179@%192@3%127%244%137%179@%189@3%127%244%137%179@%168@3%127%244%137%179@%241@3%127%244%137%179@%242@3%127%244%137%186@%202@3%127%244%137%186@%200@3%127%244%137%186@%172@3%127%244%137%186@%187@3%127%244%137%186@%188@3%127%244%137%186@%169@3%127%244%137%186@%175@3%127%244%137%186@%192@3%127%244%137%186@%189@3%127%244%137%186@%168@3%127%244%137%186@%241@3%127%244%137%186@%242@3%127%244%137%202@%200@3%127%244%137%202@%172@3%127%244%137%202@%187@3%127%244%137%202@%188@3%127%244%137%202@%169@3%127%244%137%202@%175@3%127%244%137%202@%192@3%127%244%137%202@%189@3%127%244%137%202@%168@3%127%244%137%202@%241@3%127%244%137%202@%242@3%127%244%137%200@%172@3%127%244%137%200@%187@3%127%244%137%200@%188@3%127%244%137%200@%169@3%127%244%137%200@%175@3%127%244%137%200@%192@3%127%244%137%200@%189@3%127%244%137%200@%168@3%127%244%137%200@%241@3%127%244%137%200@%242@3%127%244%137%172@%187@3%127%244%137%172@%188@3%127%244%137%172@%169@3%127%244%137%172@%175@3%127%244%137%172@%192@3%127%244%137%172@%189@3%127%244%137%172@%168@3%127%244%137%172@%241@3%127%244%137%172@%242@3%127%244%137%187@%188@3%127%244%137%187@%169@3%127%244%137%187@%175@3%127%244%137%187@%192@3%127%244%137%187@%189@3%127%244%137%187@%168@3%127%244%137%187@%241@3%127%244%137%187@%242@3%127%244%137%188@%169@3%127%244%137%188@%175@3%127%244%137%188@%192@3%127%244%137%188@%189@3%127%244%137%188@%168@3%127%244%137%188@%241@3%127%244%137%188@%242@3%127%244%137%169@%175@3%127%244%137%169@%192@3%127%244%137%169@%189@3%127%244%137%169@%168@3%127%244%137%169@%241@3%127%244%137%169@%242@3%127%244%137%175@%192@3%127%244%137%175@%189@3%127%244%137%175@%168@3%127%244%137%175@%241@3%127%244%137%175@%242@3%127%244%137%192@%189@3%127%244%137%192@%168@3%127%244%137%192@%241@3%127%244%137%192@%242@3%127%244%137%189@%168@3%127%244%137%189@%241@3%127%244%137%189@%242@3%127%244%137%168@%241@3%127%244%137%168@%242@3%244%137%241@%242@92"])
  fun op slOutput_case_cong x = x
    val op slOutput_case_cong =
    ThmBind.DT(((("PlanPBType",137),
                [("PlanPBType",
                 [113,115,116,117,118,119,120,121,122,123,124,125,126,127,
                  128,134]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%122%4%122%10%107%60%107%62%107%72%107%74%107%76%107%78%107%80%107%82%107%84%107%86%107%64%107%66%107%68%107%70%140%127%137$15@$14@2%127%140%137$14@%179@2%130$13@%61@3%127%140%137$14@%186@2%130$12@%63@3%127%140%137$14@%202@2%130$11@%73@3%127%140%137$14@%200@2%130$10@%75@3%127%140%137$14@%172@2%130$9@%77@3%127%140%137$14@%187@2%130$8@%79@3%127%140%137$14@%188@2%130$7@%81@3%127%140%137$14@%169@2%130$6@%83@3%127%140%137$14@%175@2%130$5@%85@3%127%140%137$14@%192@2%130$4@%87@3%127%140%137$14@%189@2%130$3@%65@3%127%140%137$14@%168@2%130$2@%67@3%127%140%137$14@%241@2%130$1@%69@3%140%137$14@%242@2%130$0@%71@17%130%231$15@$13@$12@$11@$10@$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%231$14@%61@%63@%73@%75@%77@%79@%81@%83@%85@%87@%65@%67@%69@%71@3|@|@|@|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_nchotomy x = x
    val op slOutput_nchotomy =
    ThmBind.DT(((("PlanPBType",138),
                [("PlanPBType",
                 [113,115,116,117,118,119,120,121,122,123,124,125,126,127,
                  128]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%122%21%204%137$0@%179@2%204%137$0@%186@2%204%137$0@%202@2%204%137$0@%200@2%204%137$0@%172@2%204%137$0@%187@2%204%137$0@%188@2%204%137$0@%169@2%204%137$0@%175@2%204%137$0@%192@2%204%137$0@%189@2%204%137$0@%168@2%204%137$0@%241@2%137$0@%242@14|@"])
  fun op slOutput_Axiom x = x
    val op slOutput_Axiom =
    ThmBind.DT(((("PlanPBType",139),
                [("PlanPBType",[130]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%107%93%107%94%107%99%107%100%107%101%107%102%107%103%107%104%107%105%107%106%107%95%107%96%107%97%107%98%147%32%127%130$0%179@2$14@2%127%130$0%186@2$13@2%127%130$0%202@2$12@2%127%130$0%200@2$11@2%127%130$0%172@2$10@2%127%130$0%187@2$9@2%127%130$0%188@2$8@2%127%130$0%169@2$7@2%127%130$0%175@2$6@2%127%130$0%192@2$5@2%127%130$0%189@2$4@2%127%130$0%168@2$3@2%127%130$0%241@2$2@2%130$0%242@2$1@14|@|@|@|@|@|@|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_induction x = x
    val op slOutput_induction =
    ThmBind.DT(((("PlanPBType",140),
                [("PlanPBType",
                 [113,115,116,117,118,119,120,121,122,123,124,125,126,127,
                  128]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%114%16%140%127$0%168@2%127$0%169@2%127$0%172@2%127$0%175@2%127$0%179@2%127$0%186@2%127$0%187@2%127$0%188@2%127$0%189@2%127$0%192@2%127$0%200@2%127$0%202@2%127$0%241@2$0%242@15%122%21$1$0@|@2|@"])
  fun op slOutput_distinct_clauses x = x
    val op slOutput_distinct_clauses =
    ThmBind.DT(((("PlanPBType",141),
                [("PlanPBType",[130,131]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%244%137%179@%186@3%127%244%137%179@%202@3%127%244%137%179@%200@3%127%244%137%179@%172@3%127%244%137%179@%187@3%127%244%137%179@%188@3%127%244%137%179@%169@3%127%244%137%179@%175@3%127%244%137%179@%192@3%127%244%137%179@%189@3%127%244%137%179@%168@3%127%244%137%179@%241@3%127%244%137%179@%242@3%127%244%137%186@%202@3%127%244%137%186@%200@3%127%244%137%186@%172@3%127%244%137%186@%187@3%127%244%137%186@%188@3%127%244%137%186@%169@3%127%244%137%186@%175@3%127%244%137%186@%192@3%127%244%137%186@%189@3%127%244%137%186@%168@3%127%244%137%186@%241@3%127%244%137%186@%242@3%127%244%137%202@%200@3%127%244%137%202@%172@3%127%244%137%202@%187@3%127%244%137%202@%188@3%127%244%137%202@%169@3%127%244%137%202@%175@3%127%244%137%202@%192@3%127%244%137%202@%189@3%127%244%137%202@%168@3%127%244%137%202@%241@3%127%244%137%202@%242@3%127%244%137%200@%172@3%127%244%137%200@%187@3%127%244%137%200@%188@3%127%244%137%200@%169@3%127%244%137%200@%175@3%127%244%137%200@%192@3%127%244%137%200@%189@3%127%244%137%200@%168@3%127%244%137%200@%241@3%127%244%137%200@%242@3%127%244%137%172@%187@3%127%244%137%172@%188@3%127%244%137%172@%169@3%127%244%137%172@%175@3%127%244%137%172@%192@3%127%244%137%172@%189@3%127%244%137%172@%168@3%127%244%137%172@%241@3%127%244%137%172@%242@3%127%244%137%187@%188@3%127%244%137%187@%169@3%127%244%137%187@%175@3%127%244%137%187@%192@3%127%244%137%187@%189@3%127%244%137%187@%168@3%127%244%137%187@%241@3%127%244%137%187@%242@3%127%244%137%188@%169@3%127%244%137%188@%175@3%127%244%137%188@%192@3%127%244%137%188@%189@3%127%244%137%188@%168@3%127%244%137%188@%241@3%127%244%137%188@%242@3%127%244%137%169@%175@3%127%244%137%169@%192@3%127%244%137%169@%189@3%127%244%137%169@%168@3%127%244%137%169@%241@3%127%244%137%169@%242@3%127%244%137%175@%192@3%127%244%137%175@%189@3%127%244%137%175@%168@3%127%244%137%175@%241@3%127%244%137%175@%242@3%127%244%137%192@%189@3%127%244%137%192@%168@3%127%244%137%192@%241@3%127%244%137%192@%242@3%127%244%137%189@%168@3%127%244%137%189@%241@3%127%244%137%189@%242@3%127%244%137%168@%241@3%127%244%137%168@%242@3%244%137%241@%242@92"])
  fun op num2stateRole_stateRole2num x = x
    val op num2stateRole_stateRole2num =
    ThmBind.DT(((("PlanPBType",144),[("PlanPBType",[143])]),["DISK_THM"]),
               [ThmBind.read"%124%23%139%214%236$0@3$0@|@"])
  fun op stateRole2num_num2stateRole x = x
    val op stateRole2num_num2stateRole =
    ThmBind.DT(((("PlanPBType",145),[("PlanPBType",[143])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%203@4%132%236%214$0@3$0@2|@"])
  fun op num2stateRole_11 x = x
    val op num2stateRole_11 =
    ThmBind.DT(((("PlanPBType",146),
                [("PlanPBType",[143]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%117%47%140%129$1@%173%162%203@4%140%129$0@%173%162%203@4%131%139%214$1@2%214$0@3%132$1@$0@4|@|@"])
  fun op stateRole2num_11 x = x
    val op stateRole2num_11 =
    ThmBind.DT(((("PlanPBType",147),
                [("PlanPBType",[143]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%124%23%124%28%131%132%236$1@2%236$0@3%139$1@$0@2|@|@"])
  fun op num2stateRole_ONTO x = x
    val op num2stateRole_ONTO =
    ThmBind.DT(((("PlanPBType",148),
                [("PlanPBType",[143]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%124%23%153%46%127%139$1@%214$0@3%129$0@%173%162%203@4|@|@"])
  fun op stateRole2num_ONTO x = x
    val op stateRole2num_ONTO =
    ThmBind.DT(((("PlanPBType",149),
                [("PlanPBType",[143]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%117%46%131%129$0@%173%162%203@4%158%23%132$1@%236$0@2|@2|@"])
  fun op num2stateRole_thm x = x
    val op num2stateRole_thm =
    ThmBind.DT(((("PlanPBType",152),[("PlanPBType",[150,151])]),[]),
               [ThmBind.read"%127%139%214%128@2%180@2%139%214%173%161%203@4%181@2"])
  fun op stateRole2num_thm x = x
    val op stateRole2num_thm =
    ThmBind.DT(((("PlanPBType",153),
                [("PlanPBType",[145,150,151]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%132%236%180@2%128@2%132%236%181@2%173%161%203@4"])
  fun op stateRole_EQ_stateRole x = x
    val op stateRole_EQ_stateRole =
    ThmBind.DT(((("PlanPBType",154),
                [("PlanPBType",[147]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%124%23%124%28%131%139$1@$0@2%132%236$1@2%236$0@3|@|@"])
  fun op stateRole_case_def x = x
    val op stateRole_case_def =
    ThmBind.DT(((("PlanPBType",157),
                [("PlanPBType",[153,156]),("bool",[55,63]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%127%107%60%107%62%130%237%180@$1@$0@2$1@|@|@2%107%60%107%62%130%237%181@$1@$0@2$0@|@|@2"])
  fun op datatype_stateRole x = x
    val op datatype_stateRole =
    ThmBind.DT(((("PlanPBType",158),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%170%59%180@%181@2"])
  fun op stateRole_distinct x = x
    val op stateRole_distinct =
    ThmBind.DT(((("PlanPBType",159),
                [("PlanPBType",[153,154]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%244%139%180@%181@2"])
  fun op stateRole_case_cong x = x
    val op stateRole_case_cong =
    ThmBind.DT(((("PlanPBType",160),
                [("PlanPBType",[148,150,151,157]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%124%6%124%12%107%60%107%62%140%127%139$3@$2@2%127%140%139$2@%180@2%130$1@%61@3%140%139$2@%181@2%130$0@%63@5%130%237$3@$1@$0@2%237$2@%61@%63@3|@|@|@|@"])
  fun op stateRole_nchotomy x = x
    val op stateRole_nchotomy =
    ThmBind.DT(((("PlanPBType",161),
                [("PlanPBType",[148,150,151]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%124%23%204%139$0@%180@2%139$0@%181@2|@"])
  fun op stateRole_Axiom x = x
    val op stateRole_Axiom =
    ThmBind.DT(((("PlanPBType",162),
                [("PlanPBType",[153]),("bool",[8,14,25,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%107%93%107%94%151%34%127%130$0%180@2$2@2%130$0%181@2$1@2|@|@|@"])
  fun op stateRole_induction x = x
    val op stateRole_induction =
    ThmBind.DT(((("PlanPBType",163),
                [("PlanPBType",[148,150,151]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%116%18%140%127$0%180@2$0%181@3%124%23$1$0@|@2|@"])
  fun op slRole_distinct_clauses x = x
    val op slRole_distinct_clauses =
    ThmBind.DT(((("PlanPBType",164),
                [("PlanPBType",[153,154]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%244%139%180@%181@2"])

  val _ = DB.bindl "PlanPBType"
  [("plCommand_TY_DEF",plCommand_TY_DEF,DB.Def),
   ("plCommand_BIJ",plCommand_BIJ,DB.Def),
   ("plCommand_size_def",plCommand_size_def,DB.Def),
   ("plCommand_CASE",plCommand_CASE,DB.Def),
   ("psgCommand_TY_DEF",psgCommand_TY_DEF,DB.Def),
   ("psgCommand_BIJ",psgCommand_BIJ,DB.Def),
   ("psgCommand_size_def",psgCommand_size_def,DB.Def),
   ("psgCommand_CASE",psgCommand_CASE,DB.Def),
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
    thy = "PlanPBType",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY10.PlanPBType,9.plCommandNTY10.PlanPBType,10.psgCommandNTY10.PlanPBType,9.slCommandNTY10.PlanPBType,7.slStateNTY10.PlanPBType,8.slOutputNTY10.PlanPBType,9.stateRole"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "PlanPBType",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO13.plCommand2num4.%216OO13.num2plCommand4.%210OO14.receiveMission4.%224OO5.warno4.%243OO13.tentativePlan4.%240OO5.recon4.%225OO7.report14.%226OO12.completePlan4.%206OO5.opoid4.%215OO9.supervise4.%239OO7.report24.%227OO8.complete4.%205OO12.plIncomplete4.%219OO16.invalidPlCommand4.%208OO14.plCommand_size4.%218OO14.plCommand_CASE4.%217OO4.case4.%217OO14.psgCommand2num4.%220OO14.num2psgCommand4.%211OO16.initiateMovement4.%207OO13.psgIncomplete4.%223OO17.invalidPsgCommand4.%209OO15.psgCommand_size4.%222OO15.psgCommand_CASE4.%221OO4.case4.%221OO2.PL4.%176OO3.PSG4.%178OO14.slCommand_CASE4.%228OO14.slCommand_size4.%229OO4.case4.%228OO11.slState2num4.%233OO11.num2slState4.%213OO7.PLAN_PB4.%177OO15.RECEIVE_MISSION4.%182OO5.WARNO4.%201OO14.TENTATIVE_PLAN4.%193OO17.INITIATE_MOVEMENT4.%171OO5.RECON4.%183OO7.REPORT14.%184OO13.COMPLETE_PLAN4.%165OO5.OPOID4.%174OO9.SUPERVISE4.%191OO7.REPORT24.%185OO8.COMPLETE4.%164OO12.slState_size4.%235OO12.slState_CASE4.%234OO4.case4.%234OO12.slOutput2num4.%230OO12.num2slOutput4.%212OO6.PlanPB4.%179OO14.ReceiveMission4.%186OO5.Warno4.%202OO13.TentativePlan4.%200OO16.InitiateMovement4.%172OO5.Recon4.%187OO7.Report14.%188OO12.CompletePlan4.%169OO5.Opoid4.%175OO9.Supervise4.%192OO7.Report24.%189OO8.Complete4.%168OO15.unAuthenticated4.%241OO12.unAuthorized4.%242OO13.slOutput_size4.%232OO13.slOutput_CASE4.%231OO4.case4.%231OO13.stateRole2num4.%236OO13.num2stateRole4.%214OO13.PlatoonLeader4.%180OO15.PlatoonSergeant4.%181OO14.stateRole_size4.%238OO14.stateRole_CASE4.%237OO4.case4.%237"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val PlanPBType_grammars = merge_grammars ["indexedLists",
                                            "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="PlanPBType"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val PlanPBType_grammars = 
    Portable.## (addtyUDs,addtmUDs) PlanPBType_grammars
  val _ = Parse.grammarDB_insert("PlanPBType",PlanPBType_grammars)
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
           size=SOME(Parse.Term`(PlanPBType$plCommand_size) :PlanPBType$plCommand -> num$num`,
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
           size=SOME(Parse.Term`(PlanPBType$psgCommand_size) :PlanPBType$psgCommand -> num$num`,
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
          {ax=ORIG slCommand_Axiom,
           case_def=slCommand_case_def,
           case_cong=slCommand_case_cong,
           induction=ORIG slCommand_induction,
           nchotomy=slCommand_nchotomy,
           size=SOME(Parse.Term`(PlanPBType$slCommand_size) :PlanPBType$slCommand -> num$num`,
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
           size=SOME(Parse.Term`(PlanPBType$slState_size) :PlanPBType$slState -> num$num`,
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
           size=SOME(Parse.Term`(PlanPBType$slOutput_size) :PlanPBType$slOutput -> num$num`,
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
           size=SOME(Parse.Term`(PlanPBType$stateRole_size) :PlanPBType$stateRole -> num$num`,
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
val _ = Theory.load_complete "PlanPBType"
end
