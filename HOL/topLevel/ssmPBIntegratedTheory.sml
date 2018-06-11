structure ssmPBIntegratedTheory :> ssmPBIntegratedTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ssmPBIntegratedTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open PBIntegratedDefTheory ssmTheory
  in end;
  val _ = Theory.link_parents
          ("ssmPBIntegrated",
          Arbnum.fromString "1528748860",
          Arbnum.fromString "333590")
          [("PBIntegratedDef",
           Arbnum.fromString "1528748851",
           Arbnum.fromString "591160"),
           ("ssm",
           Arbnum.fromString "1528688695",
           Arbnum.fromString "391911")];
  val _ = Theory.incorporate_types "ssmPBIntegrated" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("aclfoundation", "Form"),
   ID("PBTypeIntegrated", "stateRole"), ID("option", "option"),
   ID("OMNIType", "command"), ID("PBTypeIntegrated", "slCommand"),
   ID("PBTypeIntegrated", "slOutput"), ID("ssm", "trType"),
   ID("list", "list"), ID("PBTypeIntegrated", "slState"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("OMNIType", "output"), ID("PBTypeIntegrated", "omniCommand"),
   ID("PBTypeIntegrated", "plCommand"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "IntLevel"), ID("aclfoundation", "SecLevel"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("pair", "prod"),
   ID("bool", "/\\"), ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("ssm", "CFG"), ID("ssm", "configuration"), ID("ssm", "CFGInterpret"),
   ID("PBTypeIntegrated", "COMPLETE_PB"), ID("bool", "COND"),
   ID("PBTypeIntegrated", "CONDUCT_ORP"),
   ID("PBTypeIntegrated", "CONDUCT_PB"), ID("list", "CONS"),
   ID("PBTypeIntegrated", "CompletePB"),
   ID("PBTypeIntegrated", "ConductORP"),
   ID("PBTypeIntegrated", "ConductPB"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("PBTypeIntegrated", "MOVE_TO_ORP"),
   ID("PBTypeIntegrated", "MOVE_TO_PB"),
   ID("PBTypeIntegrated", "MoveToORP"), ID("PBTypeIntegrated", "MoveToPB"),
   ID("list", "NIL"), ID("option", "NONE"), ID("aclfoundation", "Name"),
   ID("PBTypeIntegrated", "OMNI"), ID("PBTypeIntegrated", "Omni"),
   ID("ssmPBIntegrated", "PBNS"), ID("ssmPBIntegrated", "PBOut"),
   ID("PBTypeIntegrated", "PL"), ID("PBTypeIntegrated", "PLAN_PB"),
   ID("PBTypeIntegrated", "PlanPB"),
   ID("PBTypeIntegrated", "PlatoonLeader"),
   ID("aclfoundation", "Princ_CASE"), ID("OMNIType", "SLc"),
   ID("option", "SOME"), ID("bool", "T"), ID("ssm", "TR"),
   ID("aclfoundation", "TT"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("aclfoundation", "andf"),
   ID("ssm", "authenticationTest"), ID("PBTypeIntegrated", "completePB"),
   ID("PBTypeIntegrated", "conductORP"),
   ID("PBTypeIntegrated", "conductPB"), ID("aclfoundation", "controls"),
   ID("PBTypeIntegrated", "crossLD"), ID("ssm", "discard"),
   ID("aclfoundation", "domi"), ID("aclfoundation", "doms"),
   ID("aclfoundation", "eqf"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("ssm", "exec"), ID("PBIntegratedDef", "getPlCom"),
   ID("aclfoundation", "impf"), ID("ssm", "inputList"),
   ID("ssmPBIntegrated", "inputOK"), ID("aclfoundation", "lt"),
   ID("aclfoundation", "lte"), ID("aclfoundation", "meet"),
   ID("PBTypeIntegrated", "moveToPB"), ID("aclfoundation", "notf"),
   ID("aclfoundation", "orf"), ID("aclfoundation", "prop"),
   ID("ssm", "propCommandList"), ID("aclfoundation", "quoting"),
   ID("aclfoundation", "reps"), ID("aclrules", "sat"),
   ID("satList", "satList"), ID("aclfoundation", "says"),
   ID("PBIntegratedDef", "secAuthorization"),
   ID("PBIntegratedDef", "secContext"), ID("aclfoundation", "speaks_for"),
   ID("PBTypeIntegrated", "ssmPlanPBComplete"), ID("ssm", "trap"),
   ID("PBTypeIntegrated", "unAuthenticated"),
   ID("PBTypeIntegrated", "unAuthorized"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'e", TYV "'d", TYOP [3], TYOP [6], TYOP [5, 4],
   TYOP [4, 5], TYOP [2, 6, 3, 2, 1], TYOP [0, 7, 0], TYOP [7],
   TYOP [9, 6], TYOP [8, 10], TYOP [0, 11, 9], TYOP [10], TYOP [0, 13, 12],
   TYOP [0, 11, 13], TYOP [0, 13, 15], TYV "'b", TYOP [11, 6, 17, 3, 2, 1],
   TYOP [12, 2], TYOP [12, 1], TYOP [13, 9], TYOP [9, 21], TYOP [8, 22],
   TYOP [0, 11, 23], TYOP [0, 13, 24], TYOP [0, 11, 0], TYOP [0, 13, 26],
   TYOP [0, 7, 8], TYOP [9, 7], TYOP [9, 29], TYOP [14], TYOP [9, 23],
   TYOP [15], TYOP [16, 3], TYOP [17, 3, 2], TYOP [18, 3, 1], TYOP [19],
   TYOP [0, 8, 0], TYOP [0, 35, 0], TYOP [0, 39, 0], TYOP [0, 18, 0],
   TYOP [0, 41, 0], TYOP [0, 34, 0], TYOP [0, 43, 0], TYOP [0, 36, 0],
   TYOP [0, 45, 0], TYOP [0, 5, 0], TYOP [0, 47, 0], TYOP [0, 38, 0],
   TYOP [0, 27, 0], TYOP [0, 50, 0], TYOP [0, 16, 0], TYOP [0, 52, 0],
   TYOP [0, 25, 0], TYOP [0, 54, 0], TYOP [0, 10, 0], TYOP [0, 56, 0],
   TYOP [0, 37, 0], TYOP [0, 58, 0], TYOP [0, 6, 0], TYOP [0, 60, 0],
   TYOP [0, 19, 0], TYOP [0, 62, 0], TYOP [0, 20, 0], TYOP [0, 64, 0],
   TYOP [0, 13, 0], TYOP [0, 66, 0], TYOP [0, 26, 0], TYOP [22, 19, 20],
   TYOP [22, 18, 69], TYOP [0, 69, 70], TYOP [0, 18, 71], TYOP [0, 20, 69],
   TYOP [0, 19, 73], TYOP [0, 0, 0], TYOP [0, 0, 75], TYOP [0, 8, 38],
   TYOP [0, 31, 0], TYOP [0, 31, 78], TYOP [0, 33, 0], TYOP [0, 33, 80],
   TYOP [0, 9, 0], TYOP [0, 9, 82], TYOP [0, 13, 66], TYOP [0, 28, 0],
   TYOP [0, 85, 28], TYOP [28, 5, 2, 1, 23, 3, 13], TYOP [0, 32, 87],
   TYOP [0, 13, 88], TYOP [0, 30, 89], TYOP [0, 29, 29], TYOP [0, 91, 90],
   TYOP [0, 13, 91], TYOP [0, 93, 92], TYOP [0, 8, 94], TYOP [0, 87, 0],
   TYOP [0, 70, 96], TYOP [0, 9, 9], TYOP [0, 9, 98], TYOP [0, 0, 99],
   TYOP [0, 13, 13], TYOP [0, 13, 101], TYOP [0, 0, 102], TYOP [0, 7, 91],
   TYOP [0, 30, 30], TYOP [0, 29, 105], TYOP [0, 10, 10], TYOP [0, 6, 107],
   TYOP [0, 32, 32], TYOP [0, 23, 109], TYOP [0, 37, 58], TYOP [0, 111, 0],
   TYOP [0, 111, 112], TYOP [0, 111, 113], TYOP [0, 36, 45],
   TYOP [0, 115, 114], TYOP [0, 115, 116], TYOP [0, 35, 39],
   TYOP [0, 118, 117], TYOP [0, 118, 119], TYOP [0, 34, 8],
   TYOP [0, 34, 121], TYOP [0, 122, 120], TYOP [0, 121, 123],
   TYOP [0, 34, 43], TYOP [0, 125, 124], TYOP [0, 121, 126],
   TYOP [0, 28, 127], TYOP [0, 28, 128], TYOP [0, 28, 129],
   TYOP [0, 28, 130], TYOP [0, 8, 131], TYOP [0, 60, 132],
   TYOP [0, 0, 133], TYOP [0, 0, 134], TYOP [0, 7, 135], TYOP [0, 3, 34],
   TYOP [0, 31, 4], TYOP [0, 33, 4], TYOP [0, 125, 0], TYOP [0, 125, 140],
   TYOP [0, 3, 0], TYOP [0, 142, 141], TYOP [0, 34, 143], TYOP [0, 4, 5],
   TYOP [0, 5, 6], TYOP [0, 87, 96], TYOP [0, 11, 147], TYOP [0, 70, 148],
   TYOP [0, 8, 8], TYOP [0, 150, 8], TYOP [0, 28, 151], TYOP [0, 7, 7],
   TYOP [0, 7, 153], TYOP [0, 29, 0], TYOP [0, 8, 155], TYOP [0, 34, 153],
   TYOP [0, 10, 11], TYOP [0, 35, 7], TYOP [0, 35, 159], TYOP [0, 36, 7],
   TYOP [0, 36, 161], TYOP [0, 37, 7], TYOP [0, 37, 163], TYOP [0, 10, 33],
   TYOP [0, 29, 10], TYV "'a", TYOP [2, 6, 3, 167, 17], TYOP [0, 168, 0],
   TYOP [0, 34, 34], TYOP [0, 34, 170], TYOP [0, 6, 168], TYOP [0, 6, 7],
   TYOP [0, 34, 157], TYOP [0, 70, 8], TYOP [0, 70, 155], TYOP [0, 34, 7],
   TYOP [0, 34, 177]]
  end
  val _ = Theory.incorporate_consts "ssmPBIntegrated" tyvector
     [("inputOK", 8), ("PBOut", 14), ("PBNS", 16)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 18), TMV("NS", 16), TMV("Oi", 19), TMV("Os", 20),
   TMV("Out", 25), TMV("P", 8), TMV("P", 27), TMV("R", 28), TMV("a", 7),
   TMV("cmd", 5), TMV("cmd", 6), TMV("inputOK", 8), TMV("ins", 30),
   TMV("omniCommand", 31), TMV("outs", 32), TMV("plCommand", 33),
   TMV("s", 13), TMV("v", 7), TMV("v", 6), TMV("v", 13), TMV("v0", 10),
   TMV("v1", 7), TMV("v1", 10), TMV("v1", 11), TMV("v10", 34),
   TMV("v100", 7), TMV("v101", 7), TMV("v102", 7), TMV("v103", 7),
   TMV("v104", 7), TMV("v105", 7), TMV("v106", 7), TMV("v107", 7),
   TMV("v108", 7), TMV("v109", 34), TMV("v110", 7), TMV("v111", 34),
   TMV("v112", 34), TMV("v113", 34), TMV("v114", 7), TMV("v115", 34),
   TMV("v116", 34), TMV("v117", 7), TMV("v118", 35), TMV("v119", 35),
   TMV("v12", 34), TMV("v120", 35), TMV("v121", 35), TMV("v122", 36),
   TMV("v123", 36), TMV("v124", 36), TMV("v125", 36), TMV("v126", 37),
   TMV("v127", 37), TMV("v128", 37), TMV("v129", 37), TMV("v13", 34),
   TMV("v130", 37), TMV("v131", 37), TMV("v133", 34), TMV("v134", 34),
   TMV("v135", 34), TMV("v136", 34), TMV("v137", 3), TMV("v138", 34),
   TMV("v139", 34), TMV("v14", 34), TMV("v140", 34), TMV("v141", 34),
   TMV("v15", 7), TMV("v16", 34), TMV("v17", 34), TMV("v18", 7),
   TMV("v19", 35), TMV("v2", 7), TMV("v20", 35), TMV("v21", 35),
   TMV("v22", 35), TMV("v23", 36), TMV("v24", 36), TMV("v25", 36),
   TMV("v26", 36), TMV("v27", 37), TMV("v28", 37), TMV("v29", 37),
   TMV("v3", 7), TMV("v30", 37), TMV("v31", 37), TMV("v32", 37),
   TMV("v33", 6), TMV("v34", 7), TMV("v35", 7), TMV("v36", 7),
   TMV("v37", 7), TMV("v38", 7), TMV("v39", 7), TMV("v4", 7),
   TMV("v40", 7), TMV("v41", 7), TMV("v42", 7), TMV("v43", 34),
   TMV("v44", 7), TMV("v45", 34), TMV("v46", 34), TMV("v47", 34),
   TMV("v48", 7), TMV("v49", 34), TMV("v5", 7), TMV("v50", 34),
   TMV("v51", 7), TMV("v52", 35), TMV("v53", 35), TMV("v54", 35),
   TMV("v55", 35), TMV("v56", 36), TMV("v57", 36), TMV("v58", 36),
   TMV("v59", 36), TMV("v6", 7), TMV("v6", 10), TMV("v60", 37),
   TMV("v61", 37), TMV("v62", 37), TMV("v63", 37), TMV("v64", 37),
   TMV("v65", 37), TMV("v66", 6), TMV("v67", 7), TMV("v68", 7),
   TMV("v69", 7), TMV("v7", 7), TMV("v70", 7), TMV("v71", 7),
   TMV("v72", 7), TMV("v73", 7), TMV("v74", 7), TMV("v75", 7),
   TMV("v76", 34), TMV("v77", 7), TMV("v78", 34), TMV("v79", 34),
   TMV("v8", 7), TMV("v80", 34), TMV("v81", 7), TMV("v82", 34),
   TMV("v83", 34), TMV("v84", 7), TMV("v85", 35), TMV("v86", 35),
   TMV("v87", 35), TMV("v88", 35), TMV("v89", 36), TMV("v9", 7),
   TMV("v90", 36), TMV("v91", 36), TMV("v92", 36), TMV("v93", 37),
   TMV("v94", 37), TMV("v95", 37), TMV("v96", 37), TMV("v97", 37),
   TMV("v98", 37), TMV("v99", 6), TMV("x", 10), TMC(20, 38), TMC(20, 40),
   TMC(20, 42), TMC(20, 44), TMC(20, 46), TMC(20, 48), TMC(20, 49),
   TMC(20, 51), TMC(20, 53), TMC(20, 55), TMC(20, 57), TMC(20, 59),
   TMC(20, 61), TMC(20, 63), TMC(20, 65), TMC(20, 67), TMC(20, 68),
   TMC(21, 72), TMC(21, 74), TMC(23, 76), TMC(24, 76), TMC(24, 77),
   TMC(24, 79), TMC(24, 81), TMC(24, 83), TMC(24, 84), TMC(25, 76),
   TMC(26, 86), TMC(27, 95), TMC(29, 97), TMC(30, 13), TMC(31, 100),
   TMC(31, 103), TMC(32, 13), TMC(33, 13), TMC(34, 104), TMC(34, 106),
   TMC(34, 108), TMC(34, 110), TMC(35, 9), TMC(36, 9), TMC(37, 9),
   TMC(38, 0), TMC(39, 7), TMC(40, 136), TMC(41, 75), TMC(42, 13),
   TMC(43, 13), TMC(44, 9), TMC(45, 9), TMC(46, 29), TMC(46, 10),
   TMC(47, 6), TMC(48, 137), TMC(49, 138), TMC(50, 3), TMC(51, 16),
   TMC(52, 14), TMC(53, 139), TMC(54, 13), TMC(55, 9), TMC(56, 3),
   TMC(57, 144), TMC(58, 145), TMC(59, 146), TMC(60, 0), TMC(61, 149),
   TMC(62, 7), TMC(63, 85), TMC(64, 152), TMC(65, 154), TMC(66, 156),
   TMC(67, 33), TMC(68, 33), TMC(69, 33), TMC(70, 157), TMC(71, 33),
   TMC(72, 158), TMC(73, 160), TMC(74, 162), TMC(75, 154), TMC(76, 160),
   TMC(77, 164), TMC(78, 162), TMC(79, 158), TMC(80, 165), TMC(81, 154),
   TMC(82, 166), TMC(83, 169), TMC(83, 8), TMC(84, 164), TMC(85, 164),
   TMC(86, 171), TMC(87, 33), TMC(88, 153), TMC(89, 154), TMC(90, 172),
   TMC(90, 173), TMC(91, 91), TMC(92, 171), TMC(93, 174), TMC(94, 175),
   TMC(95, 176), TMC(96, 157), TMC(97, 91), TMC(98, 93), TMC(99, 178),
   TMC(100, 31), TMC(101, 158), TMC(102, 9), TMC(103, 9), TMC(104, 75)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op inputOK_primitive_def x = x
    val op inputOK_primitive_def =
    ThmBind.DT(((("ssmPBIntegrated",8),[]),[]),
               [ThmBind.read"%185%253@%233%191%7%232$0@|@2%11%8%208$0@%209%206@2%209%206@2%89%209%206@|@%90%209%206@|@%91%92%209%206@||@%93%94%209%206@||@%95%97%209%206@||@%98%99%209%206@||@%100%101%208$0@%209%206@2%209%206@2%162%226$2@%63%209%229@|@%64%65%209%206@||@%67%68%209%206@||@|@%25%209%206@|@%26%27%209%206@||@%28%29%209%206@||@%30%31%209%206@||@%32%33%209%206@||@%34%35%209%206@||@%36%37%209%206@||@%38%39%209%206@||@%40%41%42%209%206@|||@%43%44%209%206@||@%46%47%209%206@||@%48%49%209%206@||@%50%51%209%206@||@%52%53%209%206@||@%54%55%209%206@||@%57%58%209%206@||@||@%102%103%209%206@||@%104%105%209%206@||@%106%108%109%209%206@|||@%110%111%209%206@||@%112%113%209%206@||@%114%115%209%206@||@%116%117%209%206@||@%120%121%209%206@||@%122%123%209%206@||@%124%125%209%206@||@||@2"])
  fun op PBNS_ind x = x
    val op PBNS_ind =
    ThmBind.DT(((("ssmPBIntegrated",2),
                [("PBTypeIntegrated",[117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%171%6%190%183%174%163$1%223@%248$0@2|@2%183%174%163$1%210@%248$0@2|@2%183%174%163$1%197@%248$0@2|@2%183%174%163$1%211@%248$0@2|@2%183%174%163$1%198@%248$0@2|@2%183%179%16%174%20$2$1@%272$0@2|@|@2%183%179%16%174%22$2$1@%241$0@2|@|@2%174%119$1%194@%248$0@2|@9%179%19%180%23$2$1@$0@|@|@2|@"])
  fun op PBNS_def x = x
    val op PBNS_def =
    ThmBind.DT(((("ssmPBIntegrated",3),
                [("PBTypeIntegrated",[113]),("bool",[15,57]),
                 ("combin",[19]),("pair",[49]),("relation",[113,132]),
                 ("ssm",[8]),("ssmPBIntegrated",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%183%189%220%223@%248%163@3%196%187%249%163@2%240@2%210@%223@3%183%189%220%210@%248%163@3%196%187%249%163@2%237@2%197@%210@3%183%189%220%197@%248%163@3%196%187%249%163@2%257@2%211@%197@3%183%189%220%211@%248%163@3%196%187%249%163@2%238@2%198@%211@3%183%189%220%198@%248%163@3%196%187%249%163@2%236@2%194@%198@3%183%189%220%16@%272%20@3%16@2%189%220%16@%241%22@3%16@7"])
  fun op PBOut_ind x = x
    val op PBOut_ind =
    ThmBind.DT(((("ssmPBIntegrated",6),
                [("PBTypeIntegrated",[117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%171%6%190%183%174%163$1%223@%248$0@2|@2%183%174%163$1%210@%248$0@2|@2%183%174%163$1%197@%248$0@2|@2%183%174%163$1%211@%248$0@2|@2%183%174%163$1%198@%248$0@2|@2%183%179%16%174%20$2$1@%272$0@2|@|@2%183%179%16%174%22$2$1@%241$0@2|@|@2%174%119$1%194@%248$0@2|@9%179%19%180%23$2$1@$0@|@|@2|@"])
  fun op PBOut_def x = x
    val op PBOut_def =
    ThmBind.DT(((("ssmPBIntegrated",7),
                [("PBTypeIntegrated",[113]),("bool",[15,57]),
                 ("combin",[19]),("pair",[49]),("relation",[113,132]),
                 ("ssm",[8]),("ssmPBIntegrated",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%183%188%221%223@%248%163@3%195%187%249%163@2%240@2%212@%224@3%183%188%221%210@%248%163@3%195%187%249%163@2%237@2%204@%212@3%183%188%221%197@%248%163@3%195%187%249%163@2%257@2%212@%204@3%183%188%221%211@%248%163@3%195%187%249%163@2%238@2%205@%213@3%183%188%221%198@%248%163@3%195%187%249%163@2%236@2%203@%205@3%183%188%221%16@%272%20@3%274@2%188%221%16@%241%22@3%273@7"])
  fun op inputOK_ind x = x
    val op inputOK_ind =
    ThmBind.DT(((("ssmPBIntegrated",9),
                [("PBTypeIntegrated",[90]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%170%5%190%183%176%10$1%267%217%225@2%261$0@3|@2%183%176%10$1%267%217%219@2%261$0@3|@2%183$0%231@2%183$0%207@2%183%176%18$1%261$0@2|@2%183%164%21$1%258$0@2|@2%183%164%74%164%85$2%234$1@$0@2|@|@2%183%164%96%164%107$2%259$1@$0@2|@|@2%183%164%118%164%130$2%250$1@$0@2|@|@2%183%164%141%164%152$2%244$1@$0@2|@|@2%183%167%24$1%267$0@%231@2|@2%183%167%24$1%267$0@%207@2|@2%183%167%59%167%60%176%126$3%267%256$2@$1@2%261$0@3|@|@|@2%183%167%61%167%62%176%126$3%267%263$2@$1@2%261$0@3|@|@|@2%183%167%24%164%127$2%267$1@%258$0@3|@|@2%183%167%24%164%128%164%129$3%267$2@%234$1@$0@3|@|@|@2%183%167%24%164%131%164%132$3%267$2@%259$1@$0@3|@|@|@2%183%167%24%164%133%164%134$3%267$2@%250$1@$0@3|@|@|@2%183%167%24%164%135%164%136$3%267$2@%244$1@$0@3|@|@|@2%183%167%24%167%137%164%138$3%267$2@%267$1@$0@3|@|@|@2%183%167%24%167%139%167%140$3%267$2@%270$1@$0@3|@|@|@2%183%167%24%167%142%164%143$3%267$2@%239$1@$0@3|@|@|@2%183%167%24%167%144%167%145%164%146$4%267$3@%264$2@$1@$0@3|@|@|@|@2%183%167%24%165%147%165%148$3%267$2@%242$1@$0@3|@|@|@2%183%167%24%165%149%165%150$3%267$2@%245$1@$0@3|@|@|@2%183%167%24%168%151%168%153$3%267$2@%243$1@$0@3|@|@|@2%183%167%24%168%154%168%155$3%267$2@%247$1@$0@3|@|@|@2%183%167%24%175%156%175%157$3%267$2@%246$1@$0@3|@|@|@2%183%167%24%175%158%175%159$3%267$2@%255$1@$0@3|@|@|@2%183%167%24%175%160%175%161$3%267$2@%254$1@$0@3|@|@|@2%183%167%45%167%56$2%270$1@$0@2|@|@2%183%167%66%164%69$2%239$1@$0@2|@|@2%183%167%70%167%71%164%72$3%264$2@$1@$0@2|@|@|@2%183%165%73%165%75$2%242$1@$0@2|@|@2%183%165%76%165%77$2%245$1@$0@2|@|@2%183%168%78%168%79$2%243$1@$0@2|@|@2%183%168%80%168%81$2%247$1@$0@2|@|@2%183%175%82%175%83$2%246$1@$0@2|@|@2%183%175%84%175%86$2%255$1@$0@2|@|@2%175%87%175%88$2%254$1@$0@2|@|@41%164%17$1$0@|@2|@"])
  fun op inputOK_def x = x
    val op inputOK_def =
    ThmBind.DT(((("ssmPBIntegrated",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),
                 ("ssmPBIntegrated",[8])]),["DISK_THM"]),
               [ThmBind.read"%183%184%253%267%217%225@2%261%10@4%229@2%183%184%253%267%217%219@2%261%10@4%229@2%183%184%253%231@2%206@2%183%184%253%207@2%206@2%183%184%253%261%18@3%206@2%183%184%253%258%21@3%206@2%183%184%253%234%74@%85@3%206@2%183%184%253%259%96@%107@3%206@2%183%184%253%250%118@%130@3%206@2%183%184%253%244%141@%152@3%206@2%183%184%253%267%24@%231@3%206@2%183%184%253%267%24@%207@3%206@2%183%184%253%267%256%59@%60@2%261%126@4%206@2%183%184%253%267%263%61@%62@2%261%126@4%206@2%183%184%253%267%24@%258%127@4%206@2%183%184%253%267%24@%234%128@%129@4%206@2%183%184%253%267%24@%259%131@%132@4%206@2%183%184%253%267%24@%250%133@%134@4%206@2%183%184%253%267%24@%244%135@%136@4%206@2%183%184%253%267%24@%267%137@%138@4%206@2%183%184%253%267%24@%270%139@%140@4%206@2%183%184%253%267%24@%239%142@%143@4%206@2%183%184%253%267%24@%264%144@%145@%146@4%206@2%183%184%253%267%24@%242%147@%148@4%206@2%183%184%253%267%24@%245%149@%150@4%206@2%183%184%253%267%24@%243%151@%153@4%206@2%183%184%253%267%24@%247%154@%155@4%206@2%183%184%253%267%24@%246%156@%157@4%206@2%183%184%253%267%24@%255%158@%159@4%206@2%183%184%253%267%24@%254%160@%161@4%206@2%183%184%253%270%45@%56@3%206@2%183%184%253%239%66@%69@3%206@2%183%184%253%264%70@%71@%72@3%206@2%183%184%253%242%73@%75@3%206@2%183%184%253%245%76@%77@3%206@2%183%184%253%243%78@%79@3%206@2%183%184%253%247%80@%81@3%206@2%183%184%253%246%82@%83@3%206@2%183%184%253%255%84@%86@3%206@2%184%253%254%87@%88@3%206@40"])
  fun op inputOK_cmd_reject_lemma x = x
    val op inputOK_cmd_reject_lemma =
    ThmBind.DT(((("ssmPBIntegrated",11),
                [("aclfoundation",[33,110]),
                 ("bool",[15,25,26,46,47,52,53,62,70,72]),("combin",[19]),
                 ("relation",[113,132]),("sat",[1,3,5,6,7,11,14,15]),
                 ("ssmPBIntegrated",[8])]),["DISK_THM"]),
               [ThmBind.read"%169%9%275%252%260%228$0@4|@"])
  fun op PlatoonLeader_PLAN_PB_exec_lemma x = x
    val op PlatoonLeader_PLAN_PB_exec_lemma =
    ThmBind.DT(((("ssmPBIntegrated",12),
                [("PBIntegratedDef",[3,6,7,8]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%166%0%177%2%178%3%190%193%181$2@%182$1@$0@3%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@3%266%181$2@%182$1@$0@3%262%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@5|@|@|@"])
  fun op PlatoonLeader_PLAN_PB_exec_justified_lemma x = x
    val op PlatoonLeader_PLAN_PB_exec_justified_lemma =
    ThmBind.DT(((("ssmPBIntegrated",13),
                [("PBIntegratedDef",[3,6,7,8]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%172%1%173%4%166%0%177%2%178%3%184%230%181$2@%182$1@$0@3%248%251%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@5%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@2%192%253@%269@%268@%12@$4%223@%248%251%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@6%202$3%223@%248%251%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@6%14@4%183%235%253@%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@4%183%193%181$2@%182$1@$0@3%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@3%266%181$2@%182$1@$0@3%262%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@7|@|@|@|@|@"])
  fun op PlatoonLeader_PLAN_PB_exec_justified_thm x = x
    val op PlatoonLeader_PLAN_PB_exec_justified_thm =
    ThmBind.DT(((("ssmPBIntegrated",14),
                [("PBIntegratedDef",[3,6,7,8]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%172%1%173%4%166%0%177%2%178%3%184%230%181$2@%182$1@$0@3%248%201%228%227%218%271@4%201%228%227%222%240@4%215@4%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@2%192%253@%269@%268@%12@$4%223@%248%201%228%227%218%271@4%201%228%227%222%240@4%215@5%202$3%223@%248%201%228%227%218%271@4%201%228%227%222%240@4%215@5%14@4%183%235%253@%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@4%183%193%181$2@%182$1@$0@3%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%271@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@3%266%181$2@%182$1@$0@3%199%261%228%227%218%271@5%199%261%228%227%222%240@5%214@6|@|@|@|@|@"])
  fun op PlatoonLeader_PLAN_PB_trap_lemma x = x
    val op PlatoonLeader_PLAN_PB_trap_lemma =
    ThmBind.DT(((("ssmPBIntegrated",15),
                [("PBIntegratedDef",[3,6,7,8]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,27,46,47,50,52,53,62,63,70]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35])]),["DISK_THM"]),
               [ThmBind.read"%190%275%186%13@%271@3%190%189%16@%223@2%166%0%177%2%178%3%190%193%181$2@%182$1@$0@3%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@3%265%181$2@%182$1@$0@3%261%216@3|@|@|@3"])
  fun op PlatoonLeader_PLAN_PB_trap_justified_lemma x = x
    val op PlatoonLeader_PLAN_PB_trap_justified_lemma =
    ThmBind.DT(((("ssmPBIntegrated",16),
                [("PBIntegratedDef",[3,6,7,8]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,59])]),["DISK_THM"]),
               [ThmBind.read"%190%275%186%13@%271@3%190%189%16@%223@2%172%1%173%4%166%0%177%2%178%3%184%230%181$2@%182$1@$0@3%272%251%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@5%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@2%192%253@%269@%268@%12@$4%223@%272%251%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@6%202$3%223@%272%251%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@6%14@4%183%235%253@%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@4%183%193%181$2@%182$1@$0@3%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@3%265%181$2@%182$1@$0@3%261%216@5|@|@|@|@|@3"])
  fun op PlatoonLeader_PLAN_PB_trap_justified_thm x = x
    val op PlatoonLeader_PLAN_PB_trap_justified_thm =
    ThmBind.DT(((("ssmPBIntegrated",17),
                [("PBIntegratedDef",[3,6,7,8]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,47,48,59])]),["DISK_THM"]),
               [ThmBind.read"%190%275%186%13@%271@3%190%189%16@%223@2%172%1%173%4%166%0%177%2%178%3%184%230%181$2@%182$1@$0@3%272%201%228%227%218%13@4%201%228%227%222%240@4%215@4%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@2%192%253@%269@%268@%12@$4%223@%272%201%228%227%218%13@4%201%228%227%222%240@4%215@5%202$3%223@%272%201%228%227%218%13@4%201%228%227%222%240@4%215@5%14@4%183%235%253@%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@4%183%193%181$2@%182$1@$0@3%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%218%13@6%199%267%217%225@2%261%228%227%222%240@6%214@3%12@2%223@%14@3%265%181$2@%182$1@$0@3%261%216@5|@|@|@|@|@3"])
  fun op PlatoonLeader_Omni_notDiscard_slCommand_thm x = x
    val op PlatoonLeader_Omni_notDiscard_slCommand_thm =
    ThmBind.DT(((("ssmPBIntegrated",18),
                [("aclfoundation",[33,110]),("bool",[15,50,53,62]),
                 ("combin",[19]),("list",[23,27]),("relation",[113,132]),
                 ("ssm",[36,47,48,57]),
                 ("ssmPBIntegrated",[8])]),["DISK_THM"]),
               [ThmBind.read"%172%1%173%4%166%0%177%2%178%3%275%230%181$2@%182$1@$0@3%241%201%228%227%222%15@4%201%228%227%218%13@4%215@4%192%253@%269@%268@%200%199%267%217%219@2%261%228%227%222%15@6%199%267%217%225@2%261%228%227%218%13@6%214@3%12@2%223@%14@2%192%253@%269@%268@%12@$4%223@%241%201%228%227%222%15@4%201%228%227%218%13@4%215@5%202$3%223@%241%201%228%227%222%15@4%201%228%227%218%13@4%215@5%14@4|@|@|@|@|@"])

  val _ = DB.bindl "ssmPBIntegrated"
  [("inputOK_primitive_def",inputOK_primitive_def,DB.Def),
   ("PBNS_ind",PBNS_ind,DB.Thm), ("PBNS_def",PBNS_def,DB.Thm),
   ("PBOut_ind",PBOut_ind,DB.Thm), ("PBOut_def",PBOut_def,DB.Thm),
   ("inputOK_ind",inputOK_ind,DB.Thm), ("inputOK_def",inputOK_def,DB.Thm),
   ("inputOK_cmd_reject_lemma",inputOK_cmd_reject_lemma,DB.Thm),
   ("PlatoonLeader_PLAN_PB_exec_lemma",
    PlatoonLeader_PLAN_PB_exec_lemma,
    DB.Thm),
   ("PlatoonLeader_PLAN_PB_exec_justified_lemma",
    PlatoonLeader_PLAN_PB_exec_justified_lemma,
    DB.Thm),
   ("PlatoonLeader_PLAN_PB_exec_justified_thm",
    PlatoonLeader_PLAN_PB_exec_justified_thm,
    DB.Thm),
   ("PlatoonLeader_PLAN_PB_trap_lemma",
    PlatoonLeader_PLAN_PB_trap_lemma,
    DB.Thm),
   ("PlatoonLeader_PLAN_PB_trap_justified_lemma",
    PlatoonLeader_PLAN_PB_trap_justified_lemma,
    DB.Thm),
   ("PlatoonLeader_PLAN_PB_trap_justified_thm",
    PlatoonLeader_PLAN_PB_trap_justified_thm,
    DB.Thm),
   ("PlatoonLeader_Omni_notDiscard_slCommand_thm",
    PlatoonLeader_Omni_notDiscard_slCommand_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPBIntegrated",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ssmPBIntegrated.PBNS_def ssmPBIntegrated.PBOut_def ssmPBIntegrated.inputOK_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPBIntegrated",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO4.PBNS4.%220OO5.PBOut4.%221OO7.inputOK4.%253"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ssmPBIntegrated_grammars = merge_grammars ["PBIntegratedDef", "ssm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ssmPBIntegrated"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ssmPBIntegrated_grammars = 
    Portable.## (addtyUDs,addtmUDs) ssmPBIntegrated_grammars
  val _ = Parse.grammarDB_insert("ssmPBIntegrated",ssmPBIntegrated_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ssmPBIntegrated"
end
