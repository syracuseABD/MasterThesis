structure PBTypeIntegratedTheory :> PBTypeIntegratedTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading PBTypeIntegratedTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open OMNITypeTheory
  in end;
  val _ = Theory.link_parents
          ("PBTypeIntegrated",
          Arbnum.fromString "1526502772",
          Arbnum.fromString "930871")
          [("OMNIType",
           Arbnum.fromString "1526502768",
           Arbnum.fromString "51917")];
  val _ = Theory.incorporate_types "PBTypeIntegrated"
       [("stateRole", 0), ("slState", 0), ("slOutput", 0),
        ("slCommand", 0), ("plCommand", 0), ("omniCommand", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("PBTypeIntegrated", "slOutput"), ID("min", "fun"), ID("num", "num"),
   ID("PBTypeIntegrated", "stateRole"),
   ID("PBTypeIntegrated", "omniCommand"),
   ID("PBTypeIntegrated", "slState"), ID("PBTypeIntegrated", "slCommand"),
   ID("PBTypeIntegrated", "plCommand"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("pair", "prod"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"),
   ID("PBTypeIntegrated", "COMPLETE_PB"), ID("bool", "COND"),
   ID("PBTypeIntegrated", "CONDUCT_ORP"),
   ID("PBTypeIntegrated", "CONDUCT_PB"), ID("ind_type", "CONSTR"),
   ID("PBTypeIntegrated", "CompletePB"),
   ID("PBTypeIntegrated", "ConductORP"),
   ID("PBTypeIntegrated", "ConductPB"), ID("bool", "DATATYPE"),
   ID("PBTypeIntegrated", "MOVE_TO_ORP"),
   ID("PBTypeIntegrated", "MOVE_TO_PB"),
   ID("PBTypeIntegrated", "MoveToORP"), ID("PBTypeIntegrated", "MoveToPB"),
   ID("arithmetic", "NUMERAL"), ID("PBTypeIntegrated", "OMNI"),
   ID("PBTypeIntegrated", "Omni"), ID("PBTypeIntegrated", "PL"),
   ID("PBTypeIntegrated", "PLAN_PB"), ID("PBTypeIntegrated", "PlanPB"),
   ID("PBTypeIntegrated", "PlatoonLeader"), ID("num", "SUC"),
   ID("bool", "TYPE_DEFINITION"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("PBTypeIntegrated", "completePB"),
   ID("PBTypeIntegrated", "conductORP"),
   ID("PBTypeIntegrated", "conductPB"), ID("PBTypeIntegrated", "crossLD"),
   ID("PBTypeIntegrated", "incomplete"),
   ID("PBTypeIntegrated", "invalidOmniCommand"),
   ID("PBTypeIntegrated", "moveToPB"),
   ID("PBTypeIntegrated", "num2omniCommand"),
   ID("PBTypeIntegrated", "num2plCommand"),
   ID("PBTypeIntegrated", "num2slOutput"),
   ID("PBTypeIntegrated", "num2slState"),
   ID("PBTypeIntegrated", "num2stateRole"),
   ID("PBTypeIntegrated", "omniCommand2num"),
   ID("PBTypeIntegrated", "omniCommand_CASE"),
   ID("PBTypeIntegrated", "omniCommand_size"),
   ID("PBTypeIntegrated", "plCommand2num"),
   ID("PBTypeIntegrated", "plCommand_CASE"),
   ID("PBTypeIntegrated", "plCommand_size"),
   ID("PBTypeIntegrated", "slCommand_CASE"),
   ID("PBTypeIntegrated", "slCommand_size"),
   ID("PBTypeIntegrated", "slOutput2num"),
   ID("PBTypeIntegrated", "slOutput_CASE"),
   ID("PBTypeIntegrated", "slOutput_size"),
   ID("PBTypeIntegrated", "slState2num"),
   ID("PBTypeIntegrated", "slState_CASE"),
   ID("PBTypeIntegrated", "slState_size"),
   ID("PBTypeIntegrated", "ssmConductORPComplete"),
   ID("PBTypeIntegrated", "ssmConductPBComplete"),
   ID("PBTypeIntegrated", "ssmMoveToORPComplete"),
   ID("PBTypeIntegrated", "ssmMoveToPBComplete"),
   ID("PBTypeIntegrated", "ssmPlanPBComplete"),
   ID("PBTypeIntegrated", "stateRole2num"),
   ID("PBTypeIntegrated", "stateRole_CASE"),
   ID("PBTypeIntegrated", "stateRole_size"),
   ID("PBTypeIntegrated", "unAuthenticated"),
   ID("PBTypeIntegrated", "unAuthorized"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [1, 4, 4],
   TYOP [1, 4, 5], TYOP [1, 2, 6], TYOP [4], TYOP [5], TYOP [1, 9, 1],
   TYOP [1, 4, 6], TYOP [1, 4, 11], TYOP [1, 4, 12], TYOP [1, 4, 13],
   TYOP [1, 9, 14], TYOP [1, 0, 1], TYOP [1, 4, 14], TYOP [1, 4, 17],
   TYOP [1, 0, 18], TYOP [6], TYOP [1, 20, 1], TYOP [1, 8, 4],
   TYOP [1, 22, 4], TYOP [7], TYOP [1, 24, 4], TYOP [1, 25, 23],
   TYOP [1, 20, 26], TYOP [1, 24, 1], TYOP [1, 24, 14], TYOP [1, 8, 1],
   TYOP [1, 8, 14], TYOP [1, 1, 2], TYOP [1, 1, 9], TYOP [1, 1, 0],
   TYOP [1, 1, 24], TYOP [1, 1, 8], TYOP [1, 24, 20], TYOP [1, 8, 20],
   TYOP [8], TYOP [10, 24, 8], TYOP [9, 40], TYOP [1, 41, 39],
   TYOP [1, 8, 39], TYOP [1, 24, 39], TYOP [1, 20, 39], TYOP [1, 0, 39],
   TYOP [1, 9, 39], TYOP [1, 2, 39], TYOP [1, 0, 4], TYOP [1, 9, 4],
   TYOP [1, 2, 4], TYOP [1, 20, 4], TYOP [1, 8, 43], TYOP [1, 8, 53],
   TYOP [1, 8, 54], TYOP [1, 8, 55], TYOP [1, 8, 56], TYOP [1, 24, 44],
   TYOP [1, 24, 58], TYOP [1, 24, 59], TYOP [1, 24, 60], TYOP [1, 24, 61],
   TYOP [1, 20, 41], TYOP [1, 38, 39], TYOP [1, 37, 64], TYOP [1, 0, 46],
   TYOP [1, 0, 66], TYOP [1, 0, 67], TYOP [1, 0, 68], TYOP [1, 0, 69],
   TYOP [1, 0, 70], TYOP [1, 0, 71], TYOP [1, 9, 47], TYOP [1, 9, 73],
   TYOP [1, 9, 74], TYOP [1, 9, 75], TYOP [1, 9, 76], TYOP [1, 2, 48],
   TYOP [1, 4, 39], TYOP [1, 79, 39], TYOP [1, 22, 39], TYOP [1, 81, 39],
   TYOP [1, 43, 39], TYOP [1, 83, 39], TYOP [1, 25, 39], TYOP [1, 85, 39],
   TYOP [1, 44, 39], TYOP [1, 87, 39], TYOP [1, 42, 39], TYOP [1, 89, 39],
   TYOP [1, 45, 39], TYOP [1, 91, 39], TYOP [1, 46, 39], TYOP [1, 93, 39],
   TYOP [1, 47, 39], TYOP [1, 95, 39], TYOP [1, 48, 39], TYOP [1, 97, 39],
   TYOP [1, 1, 39], TYOP [1, 99, 39], TYOP [1, 1, 1], TYOP [1, 1, 101],
   TYOP [1, 8, 40], TYOP [1, 24, 103], TYOP [1, 39, 39], TYOP [1, 39, 105],
   TYOP [1, 1, 99], TYOP [1, 4, 79], TYOP [1, 41, 42], TYOP [1, 20, 45],
   TYOP [1, 30, 39], TYOP [1, 111, 39], TYOP [1, 28, 39],
   TYOP [1, 113, 39], TYOP [1, 52, 39], TYOP [1, 115, 39],
   TYOP [1, 63, 39], TYOP [1, 117, 39], TYOP [1, 49, 39],
   TYOP [1, 119, 39], TYOP [1, 16, 39], TYOP [1, 121, 39],
   TYOP [1, 50, 39], TYOP [1, 123, 39], TYOP [1, 10, 39],
   TYOP [1, 125, 39], TYOP [1, 51, 39], TYOP [1, 127, 39], TYOP [1, 3, 39],
   TYOP [1, 129, 39], TYOP [1, 39, 6], TYOP [1, 1, 41], TYOP [1, 132, 41],
   TYOP [1, 40, 133], TYOP [1, 1, 134], TYOP [1, 99, 111],
   TYOP [1, 99, 113], TYOP [1, 99, 121], TYOP [1, 99, 125],
   TYOP [1, 99, 129], TYOP [1, 42, 117]]
  end
  val _ = Theory.incorporate_consts "PBTypeIntegrated" tyvector
     [("unAuthorized", 0), ("unAuthenticated", 0), ("stateRole_size", 3),
      ("stateRole_CASE", 7), ("stateRole2num", 3),
      ("ssmPlanPBComplete", 8), ("ssmMoveToPBComplete", 8),
      ("ssmMoveToORPComplete", 8), ("ssmConductPBComplete", 8),
      ("ssmConductORPComplete", 8), ("slState_size", 10),
      ("slState_CASE", 15), ("slState2num", 10), ("slOutput_size", 16),
      ("slOutput_CASE", 19), ("slOutput2num", 16), ("slCommand_size", 21),
      ("slCommand_CASE", 27), ("plCommand_size", 28),
      ("plCommand_CASE", 29), ("plCommand2num", 28),
      ("omniCommand_size", 30), ("omniCommand_CASE", 31),
      ("omniCommand2num", 30), ("num2stateRole", 32), ("num2slState", 33),
      ("num2slOutput", 34), ("num2plCommand", 35), ("num2omniCommand", 36),
      ("moveToPB", 24), ("invalidOmniCommand", 8), ("incomplete", 24),
      ("crossLD", 24), ("conductPB", 24), ("conductORP", 24),
      ("completePB", 24), ("PlatoonLeader", 2), ("PlanPB", 0),
      ("PLAN_PB", 9), ("PL", 37), ("Omni", 2), ("OMNI", 38),
      ("MoveToPB", 0), ("MoveToORP", 0), ("MOVE_TO_PB", 9),
      ("MOVE_TO_ORP", 9), ("ConductPB", 0), ("ConductORP", 0),
      ("CompletePB", 0), ("CONDUCT_PB", 9), ("CONDUCT_ORP", 9),
      ("COMPLETE_PB", 9)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'slCommand'", 42), TMV("M", 8), TMV("M", 24), TMV("M", 20),
   TMV("M", 0), TMV("M", 9), TMV("M", 2), TMV("M'", 8), TMV("M'", 24),
   TMV("M'", 20), TMV("M'", 0), TMV("M'", 9), TMV("M'", 2), TMV("P", 43),
   TMV("P", 44), TMV("P", 45), TMV("P", 46), TMV("P", 47), TMV("P", 48),
   TMV("a", 8), TMV("a", 24), TMV("a", 0), TMV("a", 9), TMV("a", 2),
   TMV("a'", 8), TMV("a'", 24), TMV("a'", 0), TMV("a'", 9), TMV("a'", 2),
   TMV("a0", 41), TMV("f", 22), TMV("f", 25), TMV("f", 49), TMV("f", 50),
   TMV("f", 51), TMV("f'", 25), TMV("f0", 25), TMV("f1", 22),
   TMV("f1'", 22), TMV("fn", 52), TMV("m", 1), TMV("n", 1), TMV("o", 8),
   TMV("omniCommand", 57), TMV("p", 24), TMV("plCommand", 62), TMV("r", 1),
   TMV("r'", 1), TMV("rep", 30), TMV("rep", 28), TMV("rep", 63),
   TMV("rep", 16), TMV("rep", 10), TMV("rep", 3), TMV("s", 20),
   TMV("slCommand", 65), TMV("slOutput", 72), TMV("slState", 77),
   TMV("ss", 20), TMV("stateRole", 78), TMV("v0", 4), TMV("v0'", 4),
   TMV("v1", 4), TMV("v1'", 4), TMV("v2", 4), TMV("v2'", 4), TMV("v3", 4),
   TMV("v3'", 4), TMV("v4", 4), TMV("v4'", 4), TMV("v5", 4), TMV("v5'", 4),
   TMV("v6", 4), TMV("v6'", 4), TMV("v7", 4), TMV("v7'", 4), TMV("x", 8),
   TMV("x", 24), TMV("x", 0), TMV("x", 9), TMV("x", 2), TMV("x0", 4),
   TMV("x1", 4), TMV("x2", 4), TMV("x3", 4), TMV("x4", 4), TMV("x5", 4),
   TMV("x6", 4), TMV("x7", 4), TMC(11, 80), TMC(11, 82), TMC(11, 84),
   TMC(11, 86), TMC(11, 88), TMC(11, 90), TMC(11, 92), TMC(11, 94),
   TMC(11, 96), TMC(11, 98), TMC(11, 100), TMC(11, 83), TMC(11, 87),
   TMC(11, 89), TMC(11, 91), TMC(11, 93), TMC(11, 95), TMC(11, 97),
   TMC(12, 102), TMC(13, 104), TMC(14, 106), TMC(15, 1), TMC(16, 107),
   TMC(17, 108), TMC(17, 106), TMC(17, 107), TMC(17, 53), TMC(17, 58),
   TMC(17, 109), TMC(17, 110), TMC(17, 66), TMC(17, 73), TMC(17, 78),
   TMC(18, 106), TMC(19, 82), TMC(19, 112), TMC(19, 86), TMC(19, 114),
   TMC(19, 116), TMC(19, 118), TMC(19, 120), TMC(19, 122), TMC(19, 124),
   TMC(19, 126), TMC(19, 128), TMC(19, 130), TMC(19, 100), TMC(19, 83),
   TMC(19, 87), TMC(19, 93), TMC(19, 95), TMC(19, 97), TMC(20, 8),
   TMC(20, 24), TMC(21, 101), TMC(22, 101), TMC(23, 41), TMC(24, 9),
   TMC(25, 131), TMC(26, 9), TMC(27, 9), TMC(28, 135), TMC(29, 0),
   TMC(30, 0), TMC(31, 0), TMC(32, 105), TMC(33, 9), TMC(34, 9),
   TMC(35, 0), TMC(36, 0), TMC(37, 101), TMC(38, 38), TMC(39, 2),
   TMC(40, 37), TMC(41, 9), TMC(42, 0), TMC(43, 2), TMC(44, 101),
   TMC(45, 136), TMC(45, 137), TMC(45, 138), TMC(45, 139), TMC(45, 140),
   TMC(45, 141), TMC(46, 1), TMC(47, 106), TMC(48, 24), TMC(49, 24),
   TMC(50, 24), TMC(51, 24), TMC(52, 24), TMC(53, 8), TMC(54, 24),
   TMC(55, 36), TMC(56, 35), TMC(57, 34), TMC(58, 33), TMC(59, 32),
   TMC(60, 30), TMC(61, 31), TMC(62, 30), TMC(63, 28), TMC(64, 29),
   TMC(65, 28), TMC(66, 27), TMC(67, 21), TMC(68, 16), TMC(69, 19),
   TMC(70, 16), TMC(71, 10), TMC(72, 15), TMC(73, 10), TMC(74, 8),
   TMC(75, 8), TMC(76, 8), TMC(77, 8), TMC(78, 8), TMC(79, 3), TMC(80, 7),
   TMC(81, 3), TMC(82, 0), TMC(83, 0), TMC(84, 105)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op plCommand_TY_DEF x = x
    val op plCommand_TY_DEF =
    ThmBind.DT(((("PBTypeIntegrated",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%126%49%168%41%111$0@%159%144%144%173@4|@$0@|@"])
  fun op plCommand_BIJ x = x
    val op plCommand_BIJ =
    ThmBind.DT(((("PBTypeIntegrated",1),
                [("PBTypeIntegrated",[0]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%109%101%20%116%183%190$0@3$0@|@2%99%46%113%41%111$0@%159%144%144%173@4|$0@2%114%190%183$0@3$0@2|@2"])






  fun op plCommand_size_def x = x
    val op plCommand_size_def =
    ThmBind.DT(((("PBTypeIntegrated",17),[]),[]),
               [ThmBind.read"%101%77%114%192$0@2%110@|@"])
  fun op plCommand_CASE x = x
    val op plCommand_CASE =
    ThmBind.DT(((("PBTypeIntegrated",18),[]),[]),
               [ThmBind.read"%101%77%89%60%89%62%89%64%89%66%89%68%89%70%112%191$6@$5@$4@$3@$2@$1@$0@2%40%147%111$0@%159%144%173@4%147%114$0@%110@2$6@$5@2%147%111$0@%159%143%143%173@5$4@%147%111$0@%159%144%143%173@5$3@%147%114$0@%159%144%143%173@5$2@$1@4|%190$6@3|@|@|@|@|@|@|@"])
  fun op omniCommand_TY_DEF x = x
    val op omniCommand_TY_DEF =
    ThmBind.DT(((("PBTypeIntegrated",27),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%124%48%167%41%111$0@%159%144%144%173@4|@$0@|@"])
  fun op omniCommand_BIJ x = x
    val op omniCommand_BIJ =
    ThmBind.DT(((("PBTypeIntegrated",28),
                [("PBTypeIntegrated",[27]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%109%100%19%115%182%187$0@3$0@|@2%99%46%113%41%111$0@%159%144%144%173@4|$0@2%114%187%182$0@3$0@2|@2"])






  fun op omniCommand_size_def x = x
    val op omniCommand_size_def =
    ThmBind.DT(((("PBTypeIntegrated",44),[]),[]),
               [ThmBind.read"%100%76%114%189$0@2%110@|@"])
  fun op omniCommand_CASE x = x
    val op omniCommand_CASE =
    ThmBind.DT(((("PBTypeIntegrated",45),[]),[]),
               [ThmBind.read"%100%76%89%60%89%62%89%64%89%66%89%68%89%70%112%188$6@$5@$4@$3@$2@$1@$0@2%40%147%111$0@%159%144%173@4%147%114$0@%110@2$6@$5@2%147%111$0@%159%143%143%173@5$4@%147%111$0@%159%144%143%173@5$3@%147%114$0@%159%144%143%173@5$2@$1@4|%187$6@3|@|@|@|@|@|@|@"])
  fun op slCommand_TY_DEF x = x
    val op slCommand_TY_DEF =
    ThmBind.DT(((("PBTypeIntegrated",54),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%128%50%172%29%94%0%122%102%29%122%174%137%20%117$1@%20%150%110@%108$0@%141@2%41%145|@|$0@2|@2%136%19%117$1@%19%150%166%110@2%108%142@$0@2%41%145|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op slCommand_case_def x = x
    val op slCommand_case_def =
    ThmBind.DT(((("PBTypeIntegrated",60),
                [("PBTypeIntegrated",[55,56,57,58,59]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%109%101%20%92%31%90%37%112%193%162$2@2$1@$0@2$1$2@2|@|@|@2%100%19%92%31%90%37%112%193%160$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op slCommand_size_def x = x
    val op slCommand_size_def =
    ThmBind.DT(((("PBTypeIntegrated",61),
                [("PBTypeIntegrated",[55,56,57,58,59]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%109%101%20%114%194%162$0@3%107%159%143%173@3%192$0@3|@2%100%19%114%194%160$0@3%107%159%143%173@3%189$0@3|@2"])
  fun op stateRole_TY_DEF x = x
    val op stateRole_TY_DEF =
    ThmBind.DT(((("PBTypeIntegrated",71),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%134%53%171%41%111$0@%159%144%173@3|@$0@|@"])
  fun op stateRole_BIJ x = x
    val op stateRole_BIJ =
    ThmBind.DT(((("PBTypeIntegrated",72),
                [("PBTypeIntegrated",[71]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%109%106%23%121%186%206$0@3$0@|@2%99%46%113%41%111$0@%159%144%173@3|$0@2%114%206%186$0@3$0@2|@2"])


  fun op stateRole_size_def x = x
    val op stateRole_size_def =
    ThmBind.DT(((("PBTypeIntegrated",84),[]),[]),
               [ThmBind.read"%106%80%114%208$0@2%110@|@"])
  fun op stateRole_CASE x = x
    val op stateRole_CASE =
    ThmBind.DT(((("PBTypeIntegrated",85),[]),[]),
               [ThmBind.read"%106%80%89%60%89%62%112%207$2@$1@$0@2%40%147%114$0@%110@2$2@$1@|%206$2@3|@|@|@"])
  fun op slState_TY_DEF x = x
    val op slState_TY_DEF =
    ThmBind.DT(((("PBTypeIntegrated",94),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%132%52%170%41%111$0@%159%144%144%173@4|@$0@|@"])
  fun op slState_BIJ x = x
    val op slState_BIJ =
    ThmBind.DT(((("PBTypeIntegrated",95),
                [("PBTypeIntegrated",[94]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%109%105%22%120%185%198$0@3$0@|@2%99%46%113%41%111$0@%159%144%144%173@4|$0@2%114%198%185$0@3$0@2|@2"])






  fun op slState_size_def x = x
    val op slState_size_def =
    ThmBind.DT(((("PBTypeIntegrated",111),[]),[]),
               [ThmBind.read"%105%79%114%200$0@2%110@|@"])
  fun op slState_CASE x = x
    val op slState_CASE =
    ThmBind.DT(((("PBTypeIntegrated",112),[]),[]),
               [ThmBind.read"%105%79%89%60%89%62%89%64%89%66%89%68%89%70%112%199$6@$5@$4@$3@$2@$1@$0@2%40%147%111$0@%159%144%173@4%147%114$0@%110@2$6@$5@2%147%111$0@%159%143%143%173@5$4@%147%111$0@%159%144%143%173@5$3@%147%114$0@%159%144%143%173@5$2@$1@4|%198$6@3|@|@|@|@|@|@|@"])
  fun op slOutput_TY_DEF x = x
    val op slOutput_TY_DEF =
    ThmBind.DT(((("PBTypeIntegrated",121),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%130%51%169%41%111$0@%159%144%143%143%173@5|@$0@|@"])
  fun op slOutput_BIJ x = x
    val op slOutput_BIJ =
    ThmBind.DT(((("PBTypeIntegrated",122),
                [("PBTypeIntegrated",[121]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%109%104%21%119%184%195$0@3$0@|@2%99%46%113%41%111$0@%159%144%143%143%173@5|$0@2%114%195%184$0@3$0@2|@2"])








  fun op slOutput_size_def x = x
    val op slOutput_size_def =
    ThmBind.DT(((("PBTypeIntegrated",140),[]),[]),
               [ThmBind.read"%104%78%114%197$0@2%110@|@"])
  fun op slOutput_CASE x = x
    val op slOutput_CASE =
    ThmBind.DT(((("PBTypeIntegrated",141),[]),[]),
               [ThmBind.read"%104%78%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196$8@$7@$6@$5@$4@$3@$2@$1@$0@2%40%147%111$0@%159%143%143%173@5%147%111$0@%159%143%173@4$8@%147%114$0@%159%143%173@4$7@$6@3%147%111$0@%159%143%144%173@5%147%114$0@%159%143%143%173@5$5@$4@2%147%111$0@%159%144%144%173@5$3@%147%114$0@%159%144%144%173@5$2@$1@4|%195$8@3|@|@|@|@|@|@|@|@|@"])
  fun op num2plCommand_plCommand2num x = x
    val op num2plCommand_plCommand2num =
    ThmBind.DT(((("PBTypeIntegrated",2),
                [("PBTypeIntegrated",[1])]),["DISK_THM"]),
               [ThmBind.read"%101%20%116%183%190$0@3$0@|@"])
  fun op plCommand2num_num2plCommand x = x
    val op plCommand2num_num2plCommand =
    ThmBind.DT(((("PBTypeIntegrated",3),
                [("PBTypeIntegrated",[1])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%144%173@5%114%190%183$0@3$0@2|@"])
  fun op num2plCommand_11 x = x
    val op num2plCommand_11 =
    ThmBind.DT(((("PBTypeIntegrated",4),
                [("PBTypeIntegrated",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%99%47%122%111$1@%159%144%144%173@5%122%111$0@%159%144%144%173@5%113%116%183$1@2%183$0@3%114$1@$0@4|@|@"])
  fun op plCommand2num_11 x = x
    val op plCommand2num_11 =
    ThmBind.DT(((("PBTypeIntegrated",5),
                [("PBTypeIntegrated",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%101%20%101%25%113%114%190$1@2%190$0@3%116$1@$0@2|@|@"])
  fun op num2plCommand_ONTO x = x
    val op num2plCommand_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",6),
                [("PBTypeIntegrated",[1]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%101%20%135%46%109%116$1@%183$0@3%111$0@%159%144%144%173@5|@|@"])
  fun op plCommand2num_ONTO x = x
    val op plCommand2num_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",7),
                [("PBTypeIntegrated",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%144%173@5%137%20%114$1@%190$0@2|@2|@"])
  fun op num2plCommand_thm x = x
    val op num2plCommand_thm =
    ThmBind.DT(((("PBTypeIntegrated",14),
                [("PBTypeIntegrated",[8,9,10,11,12,13])]),[]),
               [ThmBind.read"%109%116%183%110@2%178@2%109%116%183%159%143%173@4%176@2%109%116%183%159%144%173@4%181@2%109%116%183%159%143%143%173@5%177@2%109%116%183%159%144%143%173@5%175@2%116%183%159%143%144%173@5%179@6"])
  fun op plCommand2num_thm x = x
    val op plCommand2num_thm =
    ThmBind.DT(((("PBTypeIntegrated",15),
                [("PBTypeIntegrated",[3,8,9,10,11,12,13]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%109%114%190%178@2%110@2%109%114%190%176@2%159%143%173@4%109%114%190%181@2%159%144%173@4%109%114%190%177@2%159%143%143%173@5%109%114%190%175@2%159%144%143%173@5%114%190%179@2%159%143%144%173@9"])
  fun op plCommand_EQ_plCommand x = x
    val op plCommand_EQ_plCommand =
    ThmBind.DT(((("PBTypeIntegrated",16),
                [("PBTypeIntegrated",[5]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%101%20%101%25%113%116$1@$0@2%114%190$1@2%190$0@3|@|@"])
  fun op plCommand_case_def x = x
    val op plCommand_case_def =
    ThmBind.DT(((("PBTypeIntegrated",19),
                [("PBTypeIntegrated",[15,18]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%89%68%89%70%112%191%178@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%191%176@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%191%181@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%191%177@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%191%175@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@2%89%60%89%62%89%64%89%66%89%68%89%70%112%191%179@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@6"])
  fun op datatype_plCommand x = x
    val op datatype_plCommand =
    ThmBind.DT(((("PBTypeIntegrated",20),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%154%45%178@%176@%181@%177@%175@%179@2"])
  fun op plCommand_distinct x = x
    val op plCommand_distinct =
    ThmBind.DT(((("PBTypeIntegrated",21),
                [("PBTypeIntegrated",[15,16]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%116%178@%176@3%109%211%116%178@%181@3%109%211%116%178@%177@3%109%211%116%178@%175@3%109%211%116%178@%179@3%109%211%116%176@%181@3%109%211%116%176@%177@3%109%211%116%176@%175@3%109%211%116%176@%179@3%109%211%116%181@%177@3%109%211%116%181@%175@3%109%211%116%181@%179@3%109%211%116%177@%175@3%109%211%116%177@%179@3%211%116%175@%179@16"])
  fun op plCommand_case_cong x = x
    val op plCommand_case_cong =
    ThmBind.DT(((("PBTypeIntegrated",22),
                [("PBTypeIntegrated",[6,8,9,10,11,12,13,19]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%101%2%101%8%89%60%89%62%89%64%89%66%89%68%89%70%122%109%116$7@$6@2%109%122%116$6@%178@2%112$5@%61@3%109%122%116$6@%176@2%112$4@%63@3%109%122%116$6@%181@2%112$3@%65@3%109%122%116$6@%177@2%112$2@%67@3%109%122%116$6@%175@2%112$1@%69@3%122%116$6@%179@2%112$0@%71@9%112%191$7@$5@$4@$3@$2@$1@$0@2%191$6@%61@%63@%65@%67@%69@%71@3|@|@|@|@|@|@|@|@"])
  fun op plCommand_nchotomy x = x
    val op plCommand_nchotomy =
    ThmBind.DT(((("PBTypeIntegrated",23),
                [("PBTypeIntegrated",[6,8,9,10,11,12,13]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%101%20%174%116$0@%178@2%174%116$0@%176@2%174%116$0@%181@2%174%116$0@%177@2%174%116$0@%175@2%116$0@%179@6|@"])
  fun op plCommand_Axiom x = x
    val op plCommand_Axiom =
    ThmBind.DT(((("PBTypeIntegrated",24),
                [("PBTypeIntegrated",[15]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%89%85%89%86%125%31%109%112$0%178@2$6@2%109%112$0%176@2$5@2%109%112$0%181@2$4@2%109%112$0%177@2$3@2%109%112$0%175@2$2@2%112$0%179@2$1@6|@|@|@|@|@|@|@"])
  fun op plCommand_induction x = x
    val op plCommand_induction =
    ThmBind.DT(((("PBTypeIntegrated",25),
                [("PBTypeIntegrated",[6,8,9,10,11,12,13]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%93%14%122%109$0%175@2%109$0%176@2%109$0%177@2%109$0%178@2%109$0%179@2$0%181@7%101%20$1$0@|@2|@"])
  fun op plCommand_distinct_clauses x = x
    val op plCommand_distinct_clauses =
    ThmBind.DT(((("PBTypeIntegrated",26),
                [("PBTypeIntegrated",[15,16]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%116%178@%176@3%109%211%116%178@%181@3%109%211%116%178@%177@3%109%211%116%178@%175@3%109%211%116%178@%179@3%109%211%116%176@%181@3%109%211%116%176@%177@3%109%211%116%176@%175@3%109%211%116%176@%179@3%109%211%116%181@%177@3%109%211%116%181@%175@3%109%211%116%181@%179@3%109%211%116%177@%175@3%109%211%116%177@%179@3%211%116%175@%179@16"])
  fun op num2omniCommand_omniCommand2num x = x
    val op num2omniCommand_omniCommand2num =
    ThmBind.DT(((("PBTypeIntegrated",29),
                [("PBTypeIntegrated",[28])]),["DISK_THM"]),
               [ThmBind.read"%100%19%115%182%187$0@3$0@|@"])
  fun op omniCommand2num_num2omniCommand x = x
    val op omniCommand2num_num2omniCommand =
    ThmBind.DT(((("PBTypeIntegrated",30),
                [("PBTypeIntegrated",[28])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%144%173@5%114%187%182$0@3$0@2|@"])
  fun op num2omniCommand_11 x = x
    val op num2omniCommand_11 =
    ThmBind.DT(((("PBTypeIntegrated",31),
                [("PBTypeIntegrated",[28]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%99%47%122%111$1@%159%144%144%173@5%122%111$0@%159%144%144%173@5%113%115%182$1@2%182$0@3%114$1@$0@4|@|@"])
  fun op omniCommand2num_11 x = x
    val op omniCommand2num_11 =
    ThmBind.DT(((("PBTypeIntegrated",32),
                [("PBTypeIntegrated",[28]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%100%19%100%24%113%114%187$1@2%187$0@3%115$1@$0@2|@|@"])
  fun op num2omniCommand_ONTO x = x
    val op num2omniCommand_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",33),
                [("PBTypeIntegrated",[28]),
                 ("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%100%19%135%46%109%115$1@%182$0@3%111$0@%159%144%144%173@5|@|@"])
  fun op omniCommand2num_ONTO x = x
    val op omniCommand2num_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",34),
                [("PBTypeIntegrated",[28]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%144%173@5%136%19%114$1@%187$0@2|@2|@"])
  fun op num2omniCommand_thm x = x
    val op num2omniCommand_thm =
    ThmBind.DT(((("PBTypeIntegrated",41),
                [("PBTypeIntegrated",[35,36,37,38,39,40])]),[]),
               [ThmBind.read"%109%115%182%110@2%205@2%109%115%182%159%143%173@4%203@2%109%115%182%159%144%173@4%201@2%109%115%182%159%143%143%173@5%204@2%109%115%182%159%144%143%173@5%202@2%115%182%159%143%144%173@5%180@6"])
  fun op omniCommand2num_thm x = x
    val op omniCommand2num_thm =
    ThmBind.DT(((("PBTypeIntegrated",42),
                [("PBTypeIntegrated",[30,35,36,37,38,39,40]),
                 ("bool",[25,53]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%109%114%187%205@2%110@2%109%114%187%203@2%159%143%173@4%109%114%187%201@2%159%144%173@4%109%114%187%204@2%159%143%143%173@5%109%114%187%202@2%159%144%143%173@5%114%187%180@2%159%143%144%173@9"])
  fun op omniCommand_EQ_omniCommand x = x
    val op omniCommand_EQ_omniCommand =
    ThmBind.DT(((("PBTypeIntegrated",43),
                [("PBTypeIntegrated",[32]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%100%19%100%24%113%115$1@$0@2%114%187$1@2%187$0@3|@|@"])
  fun op omniCommand_case_def x = x
    val op omniCommand_case_def =
    ThmBind.DT(((("PBTypeIntegrated",46),
                [("PBTypeIntegrated",[42,45]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%89%68%89%70%112%188%205@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%188%203@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%188%201@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%188%204@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%188%202@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@2%89%60%89%62%89%64%89%66%89%68%89%70%112%188%180@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@6"])
  fun op datatype_omniCommand x = x
    val op datatype_omniCommand =
    ThmBind.DT(((("PBTypeIntegrated",47),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%154%43%205@%203@%201@%204@%202@%180@2"])
  fun op omniCommand_distinct x = x
    val op omniCommand_distinct =
    ThmBind.DT(((("PBTypeIntegrated",48),
                [("PBTypeIntegrated",[42,43]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%115%205@%203@3%109%211%115%205@%201@3%109%211%115%205@%204@3%109%211%115%205@%202@3%109%211%115%205@%180@3%109%211%115%203@%201@3%109%211%115%203@%204@3%109%211%115%203@%202@3%109%211%115%203@%180@3%109%211%115%201@%204@3%109%211%115%201@%202@3%109%211%115%201@%180@3%109%211%115%204@%202@3%109%211%115%204@%180@3%211%115%202@%180@16"])
  fun op omniCommand_case_cong x = x
    val op omniCommand_case_cong =
    ThmBind.DT(((("PBTypeIntegrated",49),
                [("PBTypeIntegrated",[33,35,36,37,38,39,40,46]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%100%1%100%7%89%60%89%62%89%64%89%66%89%68%89%70%122%109%115$7@$6@2%109%122%115$6@%205@2%112$5@%61@3%109%122%115$6@%203@2%112$4@%63@3%109%122%115$6@%201@2%112$3@%65@3%109%122%115$6@%204@2%112$2@%67@3%109%122%115$6@%202@2%112$1@%69@3%122%115$6@%180@2%112$0@%71@9%112%188$7@$5@$4@$3@$2@$1@$0@2%188$6@%61@%63@%65@%67@%69@%71@3|@|@|@|@|@|@|@|@"])
  fun op omniCommand_nchotomy x = x
    val op omniCommand_nchotomy =
    ThmBind.DT(((("PBTypeIntegrated",50),
                [("PBTypeIntegrated",[33,35,36,37,38,39,40]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%100%19%174%115$0@%205@2%174%115$0@%203@2%174%115$0@%201@2%174%115$0@%204@2%174%115$0@%202@2%115$0@%180@6|@"])
  fun op omniCommand_Axiom x = x
    val op omniCommand_Axiom =
    ThmBind.DT(((("PBTypeIntegrated",51),
                [("PBTypeIntegrated",[42]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%89%85%89%86%123%30%109%112$0%205@2$6@2%109%112$0%203@2$5@2%109%112$0%201@2$4@2%109%112$0%204@2$3@2%109%112$0%202@2$2@2%112$0%180@2$1@6|@|@|@|@|@|@|@"])
  fun op omniCommand_induction x = x
    val op omniCommand_induction =
    ThmBind.DT(((("PBTypeIntegrated",52),
                [("PBTypeIntegrated",[33,35,36,37,38,39,40]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%91%13%122%109$0%180@2%109$0%201@2%109$0%202@2%109$0%203@2%109$0%204@2$0%205@7%100%19$1$0@|@2|@"])
  fun op omniCommand_distinct_clauses x = x
    val op omniCommand_distinct_clauses =
    ThmBind.DT(((("PBTypeIntegrated",53),
                [("PBTypeIntegrated",[42,43]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%115%205@%203@3%109%211%115%205@%201@3%109%211%115%205@%204@3%109%211%115%205@%202@3%109%211%115%205@%180@3%109%211%115%203@%201@3%109%211%115%203@%204@3%109%211%115%203@%202@3%109%211%115%203@%180@3%109%211%115%201@%204@3%109%211%115%201@%202@3%109%211%115%201@%180@3%109%211%115%204@%202@3%109%211%115%204@%180@3%211%115%202@%180@16"])
  fun op datatype_slCommand x = x
    val op datatype_slCommand =
    ThmBind.DT(((("PBTypeIntegrated",62),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%154%55%162@%160@2"])
  fun op slCommand_11 x = x
    val op slCommand_11 =
    ThmBind.DT(((("PBTypeIntegrated",63),
                [("PBTypeIntegrated",[55,56,57,58,59]),
                 ("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%109%101%20%101%25%113%118%162$1@2%162$0@3%116$1@$0@2|@|@2%100%19%100%24%113%118%160$1@2%160$0@3%115$1@$0@2|@|@2"])
  fun op slCommand_distinct x = x
    val op slCommand_distinct =
    ThmBind.DT(((("PBTypeIntegrated",64),
                [("PBTypeIntegrated",[55,56,57,58,59]),
                 ("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%100%24%101%20%211%118%162$0@2%160$1@3|@|@"])
  fun op slCommand_case_cong x = x
    val op slCommand_case_cong =
    ThmBind.DT(((("PBTypeIntegrated",65),
                [("PBTypeIntegrated",[55,56,57,58,59,60]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%103%3%103%9%92%31%90%37%122%109%118$3@$2@2%109%101%20%122%118$3@%162$0@3%112$2$0@2%35$0@3|@2%100%19%122%118$3@%160$0@3%112$1$0@2%38$0@3|@4%112%193$3@$1@$0@2%193$2@%35@%38@3|@|@|@|@"])
  fun op slCommand_nchotomy x = x
    val op slCommand_nchotomy =
    ThmBind.DT(((("PBTypeIntegrated",66),
                [("PBTypeIntegrated",[55,56,57,58,59]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%103%58%174%137%44%118$1@%162$0@2|@2%136%42%118$1@%160$0@2|@2|@"])
  fun op slCommand_Axiom x = x
    val op slCommand_Axiom =
    ThmBind.DT(((("PBTypeIntegrated",67),
                [("PBTypeIntegrated",[55,56,57,58,59]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%92%36%90%37%127%39%109%101%20%112$1%162$0@3$3$0@2|@2%100%19%112$1%160$0@3$2$0@2|@2|@|@|@"])
  fun op slCommand_induction x = x
    val op slCommand_induction =
    ThmBind.DT(((("PBTypeIntegrated",68),
                [("PBTypeIntegrated",[55,56,57,58,59]),
                 ("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%95%15%122%109%101%44$1%162$0@2|@2%100%42$1%160$0@2|@3%103%54$1$0@|@2|@"])
  fun op slCommand_distinct_clauses x = x
    val op slCommand_distinct_clauses =
    ThmBind.DT(((("PBTypeIntegrated",69),
                [("PBTypeIntegrated",[55,56,57,58,59]),
                 ("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%100%24%101%20%211%118%162$0@2%160$1@3|@|@"])
  fun op slCommand_one_one x = x
    val op slCommand_one_one =
    ThmBind.DT(((("PBTypeIntegrated",70),
                [("PBTypeIntegrated",[55,56,57,58,59]),
                 ("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%109%101%20%101%25%113%118%162$1@2%162$0@3%116$1@$0@2|@|@2%100%19%100%24%113%118%160$1@2%160$0@3%115$1@$0@2|@|@2"])
  fun op num2stateRole_stateRole2num x = x
    val op num2stateRole_stateRole2num =
    ThmBind.DT(((("PBTypeIntegrated",73),
                [("PBTypeIntegrated",[72])]),["DISK_THM"]),
               [ThmBind.read"%106%23%121%186%206$0@3$0@|@"])
  fun op stateRole2num_num2stateRole x = x
    val op stateRole2num_num2stateRole =
    ThmBind.DT(((("PBTypeIntegrated",74),
                [("PBTypeIntegrated",[72])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%173@4%114%206%186$0@3$0@2|@"])
  fun op num2stateRole_11 x = x
    val op num2stateRole_11 =
    ThmBind.DT(((("PBTypeIntegrated",75),
                [("PBTypeIntegrated",[72]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%99%47%122%111$1@%159%144%173@4%122%111$0@%159%144%173@4%113%121%186$1@2%186$0@3%114$1@$0@4|@|@"])
  fun op stateRole2num_11 x = x
    val op stateRole2num_11 =
    ThmBind.DT(((("PBTypeIntegrated",76),
                [("PBTypeIntegrated",[72]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%106%23%106%28%113%114%206$1@2%206$0@3%121$1@$0@2|@|@"])
  fun op num2stateRole_ONTO x = x
    val op num2stateRole_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",77),
                [("PBTypeIntegrated",[72]),
                 ("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%106%23%135%46%109%121$1@%186$0@3%111$0@%159%144%173@4|@|@"])
  fun op stateRole2num_ONTO x = x
    val op stateRole2num_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",78),
                [("PBTypeIntegrated",[72]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%173@4%140%23%114$1@%206$0@2|@2|@"])
  fun op num2stateRole_thm x = x
    val op num2stateRole_thm =
    ThmBind.DT(((("PBTypeIntegrated",81),
                [("PBTypeIntegrated",[79,80])]),[]),
               [ThmBind.read"%109%121%186%110@2%165@2%121%186%159%143%173@4%161@2"])
  fun op stateRole2num_thm x = x
    val op stateRole2num_thm =
    ThmBind.DT(((("PBTypeIntegrated",82),
                [("PBTypeIntegrated",[74,79,80]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%109%114%206%165@2%110@2%114%206%161@2%159%143%173@4"])
  fun op stateRole_EQ_stateRole x = x
    val op stateRole_EQ_stateRole =
    ThmBind.DT(((("PBTypeIntegrated",83),
                [("PBTypeIntegrated",[76]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%106%23%106%28%113%121$1@$0@2%114%206$1@2%206$0@3|@|@"])
  fun op stateRole_case_def x = x
    val op stateRole_case_def =
    ThmBind.DT(((("PBTypeIntegrated",86),
                [("PBTypeIntegrated",[82,85]),("bool",[55,63]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%112%207%165@$1@$0@2$1@|@|@2%89%60%89%62%112%207%161@$1@$0@2$0@|@|@2"])
  fun op datatype_stateRole x = x
    val op datatype_stateRole =
    ThmBind.DT(((("PBTypeIntegrated",87),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%154%59%165@%161@2"])
  fun op stateRole_distinct x = x
    val op stateRole_distinct =
    ThmBind.DT(((("PBTypeIntegrated",88),
                [("PBTypeIntegrated",[82,83]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%211%121%165@%161@2"])
  fun op stateRole_case_cong x = x
    val op stateRole_case_cong =
    ThmBind.DT(((("PBTypeIntegrated",89),
                [("PBTypeIntegrated",[77,79,80,86]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%106%6%106%12%89%60%89%62%122%109%121$3@$2@2%109%122%121$2@%165@2%112$1@%61@3%122%121$2@%161@2%112$0@%63@5%112%207$3@$1@$0@2%207$2@%61@%63@3|@|@|@|@"])
  fun op stateRole_nchotomy x = x
    val op stateRole_nchotomy =
    ThmBind.DT(((("PBTypeIntegrated",90),
                [("PBTypeIntegrated",[77,79,80]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%106%23%174%121$0@%165@2%121$0@%161@2|@"])
  fun op stateRole_Axiom x = x
    val op stateRole_Axiom =
    ThmBind.DT(((("PBTypeIntegrated",91),
                [("PBTypeIntegrated",[82]),("bool",[8,14,25,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%133%34%109%112$0%165@2$2@2%112$0%161@2$1@2|@|@|@"])
  fun op stateRole_induction x = x
    val op stateRole_induction =
    ThmBind.DT(((("PBTypeIntegrated",92),
                [("PBTypeIntegrated",[77,79,80]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%98%18%122%109$0%161@2$0%165@3%106%23$1$0@|@2|@"])
  fun op stateRole_distinct_clauses x = x
    val op stateRole_distinct_clauses =
    ThmBind.DT(((("PBTypeIntegrated",93),
                [("PBTypeIntegrated",[82,83]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%211%121%165@%161@2"])
  fun op num2slState_slState2num x = x
    val op num2slState_slState2num =
    ThmBind.DT(((("PBTypeIntegrated",96),
                [("PBTypeIntegrated",[95])]),["DISK_THM"]),
               [ThmBind.read"%105%22%120%185%198$0@3$0@|@"])
  fun op slState2num_num2slState x = x
    val op slState2num_num2slState =
    ThmBind.DT(((("PBTypeIntegrated",97),
                [("PBTypeIntegrated",[95])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%144%173@5%114%198%185$0@3$0@2|@"])
  fun op num2slState_11 x = x
    val op num2slState_11 =
    ThmBind.DT(((("PBTypeIntegrated",98),
                [("PBTypeIntegrated",[95]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%99%47%122%111$1@%159%144%144%173@5%122%111$0@%159%144%144%173@5%113%120%185$1@2%185$0@3%114$1@$0@4|@|@"])
  fun op slState2num_11 x = x
    val op slState2num_11 =
    ThmBind.DT(((("PBTypeIntegrated",99),
                [("PBTypeIntegrated",[95]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%105%22%105%27%113%114%198$1@2%198$0@3%120$1@$0@2|@|@"])
  fun op num2slState_ONTO x = x
    val op num2slState_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",100),
                [("PBTypeIntegrated",[95]),
                 ("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%105%22%135%46%109%120$1@%185$0@3%111$0@%159%144%144%173@5|@|@"])
  fun op slState2num_ONTO x = x
    val op slState2num_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",101),
                [("PBTypeIntegrated",[95]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%144%173@5%139%22%114$1@%198$0@2|@2|@"])
  fun op num2slState_thm x = x
    val op num2slState_thm =
    ThmBind.DT(((("PBTypeIntegrated",108),
                [("PBTypeIntegrated",[102,103,104,105,106,107])]),[]),
               [ThmBind.read"%109%120%185%110@2%163@2%109%120%185%159%143%173@4%155@2%109%120%185%159%144%173@4%148@2%109%120%185%159%143%143%173@5%156@2%109%120%185%159%144%143%173@5%149@2%120%185%159%143%144%173@5%146@6"])
  fun op slState2num_thm x = x
    val op slState2num_thm =
    ThmBind.DT(((("PBTypeIntegrated",109),
                [("PBTypeIntegrated",[97,102,103,104,105,106,107]),
                 ("bool",[25,53]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%109%114%198%163@2%110@2%109%114%198%155@2%159%143%173@4%109%114%198%148@2%159%144%173@4%109%114%198%156@2%159%143%143%173@5%109%114%198%149@2%159%144%143%173@5%114%198%146@2%159%143%144%173@9"])
  fun op slState_EQ_slState x = x
    val op slState_EQ_slState =
    ThmBind.DT(((("PBTypeIntegrated",110),
                [("PBTypeIntegrated",[99]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%105%22%105%27%113%120$1@$0@2%114%198$1@2%198$0@3|@|@"])
  fun op slState_case_def x = x
    val op slState_case_def =
    ThmBind.DT(((("PBTypeIntegrated",113),
                [("PBTypeIntegrated",[109,112]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%89%68%89%70%112%199%163@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%199%155@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%199%148@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%199%156@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%112%199%149@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@2%89%60%89%62%89%64%89%66%89%68%89%70%112%199%146@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@6"])
  fun op datatype_slState x = x
    val op datatype_slState =
    ThmBind.DT(((("PBTypeIntegrated",114),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%154%57%163@%155@%148@%156@%149@%146@2"])
  fun op slState_distinct x = x
    val op slState_distinct =
    ThmBind.DT(((("PBTypeIntegrated",115),
                [("PBTypeIntegrated",[109,110]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%120%163@%155@3%109%211%120%163@%148@3%109%211%120%163@%156@3%109%211%120%163@%149@3%109%211%120%163@%146@3%109%211%120%155@%148@3%109%211%120%155@%156@3%109%211%120%155@%149@3%109%211%120%155@%146@3%109%211%120%148@%156@3%109%211%120%148@%149@3%109%211%120%148@%146@3%109%211%120%156@%149@3%109%211%120%156@%146@3%211%120%149@%146@16"])
  fun op slState_case_cong x = x
    val op slState_case_cong =
    ThmBind.DT(((("PBTypeIntegrated",116),
                [("PBTypeIntegrated",[100,102,103,104,105,106,107,113]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%105%5%105%11%89%60%89%62%89%64%89%66%89%68%89%70%122%109%120$7@$6@2%109%122%120$6@%163@2%112$5@%61@3%109%122%120$6@%155@2%112$4@%63@3%109%122%120$6@%148@2%112$3@%65@3%109%122%120$6@%156@2%112$2@%67@3%109%122%120$6@%149@2%112$1@%69@3%122%120$6@%146@2%112$0@%71@9%112%199$7@$5@$4@$3@$2@$1@$0@2%199$6@%61@%63@%65@%67@%69@%71@3|@|@|@|@|@|@|@|@"])
  fun op slState_nchotomy x = x
    val op slState_nchotomy =
    ThmBind.DT(((("PBTypeIntegrated",117),
                [("PBTypeIntegrated",[100,102,103,104,105,106,107]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%105%22%174%120$0@%163@2%174%120$0@%155@2%174%120$0@%148@2%174%120$0@%156@2%174%120$0@%149@2%120$0@%146@6|@"])
  fun op slState_Axiom x = x
    val op slState_Axiom =
    ThmBind.DT(((("PBTypeIntegrated",118),
                [("PBTypeIntegrated",[109]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%89%85%89%86%131%33%109%112$0%163@2$6@2%109%112$0%155@2$5@2%109%112$0%148@2$4@2%109%112$0%156@2$3@2%109%112$0%149@2$2@2%112$0%146@2$1@6|@|@|@|@|@|@|@"])
  fun op slState_induction x = x
    val op slState_induction =
    ThmBind.DT(((("PBTypeIntegrated",119),
                [("PBTypeIntegrated",[100,102,103,104,105,106,107]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%97%17%122%109$0%146@2%109$0%148@2%109$0%149@2%109$0%155@2%109$0%156@2$0%163@7%105%22$1$0@|@2|@"])
  fun op slState_distinct_clauses x = x
    val op slState_distinct_clauses =
    ThmBind.DT(((("PBTypeIntegrated",120),
                [("PBTypeIntegrated",[109,110]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%120%163@%155@3%109%211%120%163@%148@3%109%211%120%163@%156@3%109%211%120%163@%149@3%109%211%120%163@%146@3%109%211%120%155@%148@3%109%211%120%155@%156@3%109%211%120%155@%149@3%109%211%120%155@%146@3%109%211%120%148@%156@3%109%211%120%148@%149@3%109%211%120%148@%146@3%109%211%120%156@%149@3%109%211%120%156@%146@3%211%120%149@%146@16"])
  fun op num2slOutput_slOutput2num x = x
    val op num2slOutput_slOutput2num =
    ThmBind.DT(((("PBTypeIntegrated",123),
                [("PBTypeIntegrated",[122])]),["DISK_THM"]),
               [ThmBind.read"%104%21%119%184%195$0@3$0@|@"])
  fun op slOutput2num_num2slOutput x = x
    val op slOutput2num_num2slOutput =
    ThmBind.DT(((("PBTypeIntegrated",124),
                [("PBTypeIntegrated",[122])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%143%143%173@6%114%195%184$0@3$0@2|@"])
  fun op num2slOutput_11 x = x
    val op num2slOutput_11 =
    ThmBind.DT(((("PBTypeIntegrated",125),
                [("PBTypeIntegrated",[122]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%99%47%122%111$1@%159%144%143%143%173@6%122%111$0@%159%144%143%143%173@6%113%119%184$1@2%184$0@3%114$1@$0@4|@|@"])
  fun op slOutput2num_11 x = x
    val op slOutput2num_11 =
    ThmBind.DT(((("PBTypeIntegrated",126),
                [("PBTypeIntegrated",[122]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%104%21%104%26%113%114%195$1@2%195$0@3%119$1@$0@2|@|@"])
  fun op num2slOutput_ONTO x = x
    val op num2slOutput_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",127),
                [("PBTypeIntegrated",[122]),
                 ("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%104%21%135%46%109%119$1@%184$0@3%111$0@%159%144%143%143%173@6|@|@"])
  fun op slOutput2num_ONTO x = x
    val op slOutput2num_ONTO =
    ThmBind.DT(((("PBTypeIntegrated",128),
                [("PBTypeIntegrated",[122]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%99%46%113%111$0@%159%144%143%143%173@6%138%21%114$1@%195$0@2|@2|@"])
  fun op num2slOutput_thm x = x
    val op num2slOutput_thm =
    ThmBind.DT(((("PBTypeIntegrated",137),
                [("PBTypeIntegrated",
                 [129,130,131,132,133,134,135,136])]),[]),
               [ThmBind.read"%109%119%184%110@2%164@2%109%119%184%159%143%173@4%157@2%109%119%184%159%144%173@4%152@2%109%119%184%159%143%143%173@5%158@2%109%119%184%159%144%143%173@5%153@2%109%119%184%159%143%144%173@5%151@2%109%119%184%159%144%144%173@5%209@2%119%184%159%143%143%143%173@6%210@8"])
  fun op slOutput2num_thm x = x
    val op slOutput2num_thm =
    ThmBind.DT(((("PBTypeIntegrated",138),
                [("PBTypeIntegrated",
                 [124,129,130,131,132,133,134,135,136]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%109%114%195%164@2%110@2%109%114%195%157@2%159%143%173@4%109%114%195%152@2%159%144%173@4%109%114%195%158@2%159%143%143%173@5%109%114%195%153@2%159%144%143%173@5%109%114%195%151@2%159%143%144%173@5%109%114%195%209@2%159%144%144%173@5%114%195%210@2%159%143%143%143%173@12"])
  fun op slOutput_EQ_slOutput x = x
    val op slOutput_EQ_slOutput =
    ThmBind.DT(((("PBTypeIntegrated",139),
                [("PBTypeIntegrated",[126]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%104%21%104%26%113%119$1@$0@2%114%195$1@2%195$0@3|@|@"])
  fun op slOutput_case_def x = x
    val op slOutput_case_def =
    ThmBind.DT(((("PBTypeIntegrated",142),
                [("PBTypeIntegrated",[138,141]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%164@$7@$6@$5@$4@$3@$2@$1@$0@2$7@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%157@$7@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%152@$7@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%158@$7@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%153@$7@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%151@$7@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%209@$7@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@|@2%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%196%210@$7@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@|@8"])
  fun op datatype_slOutput x = x
    val op datatype_slOutput =
    ThmBind.DT(((("PBTypeIntegrated",143),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%154%56%164@%157@%152@%158@%153@%151@%209@%210@2"])
  fun op slOutput_distinct x = x
    val op slOutput_distinct =
    ThmBind.DT(((("PBTypeIntegrated",144),
                [("PBTypeIntegrated",[138,139]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%119%164@%157@3%109%211%119%164@%152@3%109%211%119%164@%158@3%109%211%119%164@%153@3%109%211%119%164@%151@3%109%211%119%164@%209@3%109%211%119%164@%210@3%109%211%119%157@%152@3%109%211%119%157@%158@3%109%211%119%157@%153@3%109%211%119%157@%151@3%109%211%119%157@%209@3%109%211%119%157@%210@3%109%211%119%152@%158@3%109%211%119%152@%153@3%109%211%119%152@%151@3%109%211%119%152@%209@3%109%211%119%152@%210@3%109%211%119%158@%153@3%109%211%119%158@%151@3%109%211%119%158@%209@3%109%211%119%158@%210@3%109%211%119%153@%151@3%109%211%119%153@%209@3%109%211%119%153@%210@3%109%211%119%151@%209@3%109%211%119%151@%210@3%211%119%209@%210@29"])
  fun op slOutput_case_cong x = x
    val op slOutput_case_cong =
    ThmBind.DT(((("PBTypeIntegrated",145),
                [("PBTypeIntegrated",
                 [127,129,130,131,132,133,134,135,136,142]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%104%4%104%10%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%122%109%119$9@$8@2%109%122%119$8@%164@2%112$7@%61@3%109%122%119$8@%157@2%112$6@%63@3%109%122%119$8@%152@2%112$5@%65@3%109%122%119$8@%158@2%112$4@%67@3%109%122%119$8@%153@2%112$3@%69@3%109%122%119$8@%151@2%112$2@%71@3%109%122%119$8@%209@2%112$1@%73@3%122%119$8@%210@2%112$0@%75@11%112%196$9@$7@$6@$5@$4@$3@$2@$1@$0@2%196$8@%61@%63@%65@%67@%69@%71@%73@%75@3|@|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_nchotomy x = x
    val op slOutput_nchotomy =
    ThmBind.DT(((("PBTypeIntegrated",146),
                [("PBTypeIntegrated",
                 [127,129,130,131,132,133,134,135,136]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%104%21%174%119$0@%164@2%174%119$0@%157@2%174%119$0@%152@2%174%119$0@%158@2%174%119$0@%153@2%174%119$0@%151@2%174%119$0@%209@2%119$0@%210@8|@"])
  fun op slOutput_Axiom x = x
    val op slOutput_Axiom =
    ThmBind.DT(((("PBTypeIntegrated",147),
                [("PBTypeIntegrated",[138]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%89%85%89%86%89%87%89%88%129%32%109%112$0%164@2$8@2%109%112$0%157@2$7@2%109%112$0%152@2$6@2%109%112$0%158@2$5@2%109%112$0%153@2$4@2%109%112$0%151@2$3@2%109%112$0%209@2$2@2%112$0%210@2$1@8|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_induction x = x
    val op slOutput_induction =
    ThmBind.DT(((("PBTypeIntegrated",148),
                [("PBTypeIntegrated",
                 [127,129,130,131,132,133,134,135,136]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%96%16%122%109$0%151@2%109$0%152@2%109$0%153@2%109$0%157@2%109$0%158@2%109$0%164@2%109$0%209@2$0%210@9%104%21$1$0@|@2|@"])
  fun op slOutput_distinct_clauses x = x
    val op slOutput_distinct_clauses =
    ThmBind.DT(((("PBTypeIntegrated",149),
                [("PBTypeIntegrated",[138,139]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%109%211%119%164@%157@3%109%211%119%164@%152@3%109%211%119%164@%158@3%109%211%119%164@%153@3%109%211%119%164@%151@3%109%211%119%164@%209@3%109%211%119%164@%210@3%109%211%119%157@%152@3%109%211%119%157@%158@3%109%211%119%157@%153@3%109%211%119%157@%151@3%109%211%119%157@%209@3%109%211%119%157@%210@3%109%211%119%152@%158@3%109%211%119%152@%153@3%109%211%119%152@%151@3%109%211%119%152@%209@3%109%211%119%152@%210@3%109%211%119%158@%153@3%109%211%119%158@%151@3%109%211%119%158@%209@3%109%211%119%158@%210@3%109%211%119%153@%151@3%109%211%119%153@%209@3%109%211%119%153@%210@3%109%211%119%151@%209@3%109%211%119%151@%210@3%211%119%209@%210@29"])

  val _ = DB.bindl "PBTypeIntegrated"
  [("plCommand_TY_DEF",plCommand_TY_DEF,DB.Def),
   ("plCommand_BIJ",plCommand_BIJ,DB.Def),
   ("plCommand_size_def",plCommand_size_def,DB.Def),
   ("plCommand_CASE",plCommand_CASE,DB.Def),
   ("omniCommand_TY_DEF",omniCommand_TY_DEF,DB.Def),
   ("omniCommand_BIJ",omniCommand_BIJ,DB.Def),
   ("omniCommand_size_def",omniCommand_size_def,DB.Def),
   ("omniCommand_CASE",omniCommand_CASE,DB.Def),
   ("slCommand_TY_DEF",slCommand_TY_DEF,DB.Def),
   ("slCommand_case_def",slCommand_case_def,DB.Def),
   ("slCommand_size_def",slCommand_size_def,DB.Def),
   ("stateRole_TY_DEF",stateRole_TY_DEF,DB.Def),
   ("stateRole_BIJ",stateRole_BIJ,DB.Def),
   ("stateRole_size_def",stateRole_size_def,DB.Def),
   ("stateRole_CASE",stateRole_CASE,DB.Def),
   ("slState_TY_DEF",slState_TY_DEF,DB.Def),
   ("slState_BIJ",slState_BIJ,DB.Def),
   ("slState_size_def",slState_size_def,DB.Def),
   ("slState_CASE",slState_CASE,DB.Def),
   ("slOutput_TY_DEF",slOutput_TY_DEF,DB.Def),
   ("slOutput_BIJ",slOutput_BIJ,DB.Def),
   ("slOutput_size_def",slOutput_size_def,DB.Def),
   ("slOutput_CASE",slOutput_CASE,DB.Def),
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
   ("stateRole_distinct_clauses",stateRole_distinct_clauses,DB.Thm),
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
   ("slOutput_distinct_clauses",slOutput_distinct_clauses,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "PBTypeIntegrated",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY16.PBTypeIntegrated,9.plCommandNTY16.PBTypeIntegrated,11.omniCommandNTY16.PBTypeIntegrated,9.slCommandNTY16.PBTypeIntegrated,9.stateRoleNTY16.PBTypeIntegrated,7.slStateNTY16.PBTypeIntegrated,8.slOutput"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "PBTypeIntegrated",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO13.plCommand2num4.%190OO13.num2plCommand4.%183OO7.crossLD4.%178OO10.conductORP4.%176OO8.moveToPB4.%181OO9.conductPB4.%177OO10.completePB4.%175OO10.incomplete4.%179OO14.plCommand_size4.%192OO14.plCommand_CASE4.%191OO4.case4.%191OO15.omniCommand2num4.%187OO15.num2omniCommand4.%182OO17.ssmPlanPBComplete4.%205OO20.ssmMoveToORPComplete4.%203OO21.ssmConductORPComplete4.%201OO19.ssmMoveToPBComplete4.%204OO20.ssmConductPBComplete4.%202OO18.invalidOmniCommand4.%180OO16.omniCommand_size4.%189OO16.omniCommand_CASE4.%188OO4.case4.%188OO2.PL4.%162OO4.OMNI4.%160OO14.slCommand_CASE4.%193OO14.slCommand_size4.%194OO4.case4.%193OO13.stateRole2num4.%206OO13.num2stateRole4.%186OO13.PlatoonLeader4.%165OO4.Omni4.%161OO14.stateRole_size4.%208OO14.stateRole_CASE4.%207OO4.case4.%207OO11.slState2num4.%198OO11.num2slState4.%185OO7.PLAN_PB4.%163OO11.MOVE_TO_ORP4.%155OO11.CONDUCT_ORP4.%148OO10.MOVE_TO_PB4.%156OO10.CONDUCT_PB4.%149OO11.COMPLETE_PB4.%146OO12.slState_size4.%200OO12.slState_CASE4.%199OO4.case4.%199OO12.slOutput2num4.%195OO12.num2slOutput4.%184OO6.PlanPB4.%164OO9.MoveToORP4.%157OO10.ConductORP4.%152OO8.MoveToPB4.%158OO9.ConductPB4.%153OO10.CompletePB4.%151OO15.unAuthenticated4.%209OO12.unAuthorized4.%210OO13.slOutput_size4.%197OO13.slOutput_CASE4.%196OO4.case4.%196"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val PBTypeIntegrated_grammars = merge_grammars ["OMNIType"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="PBTypeIntegrated"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val PBTypeIntegrated_grammars = 
    Portable.## (addtyUDs,addtmUDs) PBTypeIntegrated_grammars
  val _ = Parse.grammarDB_insert("PBTypeIntegrated",PBTypeIntegrated_grammars)
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
           size=SOME(Parse.Term`(PBTypeIntegrated$plCommand_size) :PBTypeIntegrated$plCommand -> num$num`,
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
          {ax=ORIG omniCommand_Axiom,
           case_def=omniCommand_case_def,
           case_cong=omniCommand_case_cong,
           induction=ORIG omniCommand_induction,
           nchotomy=omniCommand_nchotomy,
           size=SOME(Parse.Term`(PBTypeIntegrated$omniCommand_size) :PBTypeIntegrated$omniCommand -> num$num`,
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
           size=SOME(Parse.Term`(PBTypeIntegrated$slCommand_size) :PBTypeIntegrated$slCommand -> num$num`,
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
          {ax=ORIG stateRole_Axiom,
           case_def=stateRole_case_def,
           case_cong=stateRole_case_cong,
           induction=ORIG stateRole_induction,
           nchotomy=stateRole_nchotomy,
           size=SOME(Parse.Term`(PBTypeIntegrated$stateRole_size) :PBTypeIntegrated$stateRole -> num$num`,
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
           size=SOME(Parse.Term`(PBTypeIntegrated$slState_size) :PBTypeIntegrated$slState -> num$num`,
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
           size=SOME(Parse.Term`(PBTypeIntegrated$slOutput_size) :PBTypeIntegrated$slOutput -> num$num`,
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

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "PBTypeIntegrated"
end
