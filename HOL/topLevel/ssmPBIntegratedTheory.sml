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
          Arbnum.fromString "1528688721",
          Arbnum.fromString "55047")
          [("PBIntegratedDef",
           Arbnum.fromString "1528688714",
           Arbnum.fromString "901268"),
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
   ID("num", "num"), ID("OMNIType", "escCommand"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("min", "@"), ID("ssm", "CFG"),
   ID("ssm", "configuration"), ID("ssm", "CFGInterpret"),
   ID("PBTypeIntegrated", "COMPLETE_PB"),
   ID("PBTypeIntegrated", "CONDUCT_ORP"),
   ID("PBTypeIntegrated", "CONDUCT_PB"), ID("list", "CONS"),
   ID("PBTypeIntegrated", "CompletePB"),
   ID("PBTypeIntegrated", "ConductORP"),
   ID("PBTypeIntegrated", "ConductPB"), ID("OMNIType", "ESCc"),
   ID("bool", "F"), ID("aclfoundation", "FF"),
   ID("aclfoundation", "Form_CASE"), ID("combin", "I"),
   ID("PBTypeIntegrated", "MOVE_TO_ORP"),
   ID("PBTypeIntegrated", "MOVE_TO_PB"),
   ID("PBTypeIntegrated", "MoveToORP"), ID("PBTypeIntegrated", "MoveToPB"),
   ID("list", "NIL"), ID("option", "NONE"), ID("aclfoundation", "Name"),
   ID("PBTypeIntegrated", "OMNI"), ID("PBTypeIntegrated", "Omni"),
   ID("ssmPBIntegrated", "PBNS"), ID("ssmPBIntegrated", "PBOut"),
   ID("PBTypeIntegrated", "PL"), ID("PBTypeIntegrated", "PLAN_PB"),
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
   ID("ssm", "exec"), ID("aclfoundation", "impf"),
   ID("PBTypeIntegrated", "incomplete"), ID("ssm", "inputList"),
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
   TYOP [20], TYOP [0, 8, 0], TYOP [0, 35, 0], TYOP [0, 40, 0],
   TYOP [0, 18, 0], TYOP [0, 42, 0], TYOP [0, 34, 0], TYOP [0, 44, 0],
   TYOP [0, 36, 0], TYOP [0, 46, 0], TYOP [0, 38, 0], TYOP [0, 48, 0],
   TYOP [0, 39, 0], TYOP [0, 27, 0], TYOP [0, 51, 0], TYOP [0, 16, 0],
   TYOP [0, 53, 0], TYOP [0, 25, 0], TYOP [0, 55, 0], TYOP [0, 10, 0],
   TYOP [0, 57, 0], TYOP [0, 37, 0], TYOP [0, 59, 0], TYOP [0, 31, 0],
   TYOP [0, 61, 0], TYOP [0, 6, 0], TYOP [0, 63, 0], TYOP [0, 33, 0],
   TYOP [0, 65, 0], TYOP [0, 19, 0], TYOP [0, 67, 0], TYOP [0, 20, 0],
   TYOP [0, 69, 0], TYOP [0, 13, 0], TYOP [0, 71, 0], TYOP [0, 26, 0],
   TYOP [23, 19, 20], TYOP [23, 18, 74], TYOP [0, 74, 75],
   TYOP [0, 18, 76], TYOP [0, 20, 74], TYOP [0, 19, 78], TYOP [0, 0, 0],
   TYOP [0, 0, 80], TYOP [0, 8, 39], TYOP [0, 31, 61], TYOP [0, 9, 0],
   TYOP [0, 9, 84], TYOP [0, 13, 71], TYOP [0, 28, 0], TYOP [0, 87, 28],
   TYOP [29, 5, 2, 1, 23, 3, 13], TYOP [0, 32, 89], TYOP [0, 13, 90],
   TYOP [0, 30, 91], TYOP [0, 29, 29], TYOP [0, 93, 92], TYOP [0, 13, 93],
   TYOP [0, 95, 94], TYOP [0, 8, 96], TYOP [0, 89, 0], TYOP [0, 75, 98],
   TYOP [0, 7, 93], TYOP [0, 30, 30], TYOP [0, 29, 101], TYOP [0, 10, 10],
   TYOP [0, 6, 103], TYOP [0, 32, 32], TYOP [0, 23, 105], TYOP [0, 38, 5],
   TYOP [0, 37, 59], TYOP [0, 108, 0], TYOP [0, 108, 109],
   TYOP [0, 108, 110], TYOP [0, 36, 46], TYOP [0, 112, 111],
   TYOP [0, 112, 113], TYOP [0, 35, 40], TYOP [0, 115, 114],
   TYOP [0, 115, 116], TYOP [0, 34, 8], TYOP [0, 34, 118],
   TYOP [0, 119, 117], TYOP [0, 118, 120], TYOP [0, 34, 44],
   TYOP [0, 122, 121], TYOP [0, 118, 123], TYOP [0, 28, 124],
   TYOP [0, 28, 125], TYOP [0, 28, 126], TYOP [0, 28, 127],
   TYOP [0, 8, 128], TYOP [0, 63, 129], TYOP [0, 0, 130], TYOP [0, 0, 131],
   TYOP [0, 7, 132], TYOP [0, 3, 34], TYOP [0, 31, 4], TYOP [0, 33, 4],
   TYOP [0, 122, 0], TYOP [0, 122, 137], TYOP [0, 3, 0],
   TYOP [0, 139, 138], TYOP [0, 34, 140], TYOP [0, 4, 5], TYOP [0, 5, 6],
   TYOP [0, 89, 98], TYOP [0, 11, 144], TYOP [0, 75, 145], TYOP [0, 8, 8],
   TYOP [0, 147, 8], TYOP [0, 28, 148], TYOP [0, 7, 7], TYOP [0, 7, 150],
   TYOP [0, 29, 0], TYOP [0, 8, 152], TYOP [0, 34, 150], TYOP [0, 10, 11],
   TYOP [0, 35, 7], TYOP [0, 35, 156], TYOP [0, 36, 7], TYOP [0, 36, 158],
   TYOP [0, 37, 7], TYOP [0, 37, 160], TYOP [0, 29, 10], TYOP [0, 34, 34],
   TYOP [0, 34, 163], TYOP [0, 6, 7], TYOP [0, 34, 154], TYOP [0, 75, 8],
   TYOP [0, 75, 152], TYOP [0, 34, 7], TYOP [0, 34, 169]]
  end
  val _ = Theory.incorporate_consts "ssmPBIntegrated" tyvector
     [("inputOK", 8), ("PBOut", 14), ("PBNS", 16)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 18), TMV("NS", 16), TMV("Oi", 19), TMV("Os", 20),
   TMV("Out", 25), TMV("P", 8), TMV("P", 27), TMV("R", 28), TMV("a", 7),
   TMV("cmd", 6), TMV("inputOK", 8), TMV("ins", 30),
   TMV("omniCommand", 31), TMV("outs", 32), TMV("plCommand", 33),
   TMV("s", 13), TMV("v", 7), TMV("v", 6), TMV("v", 13), TMV("v0", 10),
   TMV("v1", 7), TMV("v1", 10), TMV("v1", 11), TMV("v10", 34),
   TMV("v10", 10), TMV("v100", 7), TMV("v101", 7), TMV("v102", 7),
   TMV("v103", 7), TMV("v104", 7), TMV("v105", 7), TMV("v106", 7),
   TMV("v107", 7), TMV("v108", 7), TMV("v109", 34), TMV("v11", 13),
   TMV("v110", 7), TMV("v111", 34), TMV("v112", 34), TMV("v113", 34),
   TMV("v114", 7), TMV("v115", 34), TMV("v116", 34), TMV("v117", 7),
   TMV("v118", 35), TMV("v119", 35), TMV("v12", 34), TMV("v120", 35),
   TMV("v121", 35), TMV("v122", 36), TMV("v123", 36), TMV("v124", 36),
   TMV("v125", 36), TMV("v126", 37), TMV("v127", 37), TMV("v128", 37),
   TMV("v129", 37), TMV("v13", 34), TMV("v13", 38), TMV("v130", 37),
   TMV("v131", 37), TMV("v133", 34), TMV("v134", 34), TMV("v135", 34),
   TMV("v136", 34), TMV("v137", 3), TMV("v138", 34), TMV("v139", 34),
   TMV("v14", 34), TMV("v140", 34), TMV("v141", 34), TMV("v15", 7),
   TMV("v15", 10), TMV("v16", 34), TMV("v16", 13), TMV("v17", 34),
   TMV("v18", 7), TMV("v19", 35), TMV("v19", 31), TMV("v2", 7),
   TMV("v20", 35), TMV("v21", 35), TMV("v22", 35), TMV("v22", 6),
   TMV("v23", 36), TMV("v23", 10), TMV("v24", 36), TMV("v24", 13),
   TMV("v25", 36), TMV("v25", 33), TMV("v26", 36), TMV("v26", 13),
   TMV("v27", 10), TMV("v27", 37), TMV("v28", 37), TMV("v28", 13),
   TMV("v29", 37), TMV("v3", 7), TMV("v30", 37), TMV("v31", 37),
   TMV("v32", 37), TMV("v33", 6), TMV("v34", 7), TMV("v35", 7),
   TMV("v36", 7), TMV("v37", 7), TMV("v38", 7), TMV("v39", 7),
   TMV("v4", 7), TMV("v40", 7), TMV("v41", 7), TMV("v42", 7),
   TMV("v43", 34), TMV("v44", 7), TMV("v45", 34), TMV("v46", 34),
   TMV("v47", 34), TMV("v48", 7), TMV("v49", 34), TMV("v5", 7),
   TMV("v50", 34), TMV("v51", 7), TMV("v52", 35), TMV("v53", 35),
   TMV("v54", 35), TMV("v55", 35), TMV("v56", 36), TMV("v57", 36),
   TMV("v58", 36), TMV("v59", 36), TMV("v6", 7), TMV("v60", 37),
   TMV("v61", 37), TMV("v62", 37), TMV("v63", 37), TMV("v64", 37),
   TMV("v65", 37), TMV("v66", 6), TMV("v67", 7), TMV("v68", 7),
   TMV("v69", 7), TMV("v7", 7), TMV("v70", 7), TMV("v71", 7),
   TMV("v72", 7), TMV("v73", 7), TMV("v74", 7), TMV("v75", 7),
   TMV("v76", 34), TMV("v77", 7), TMV("v78", 34), TMV("v79", 34),
   TMV("v8", 7), TMV("v8", 13), TMV("v80", 34), TMV("v81", 7),
   TMV("v82", 34), TMV("v83", 34), TMV("v84", 7), TMV("v85", 35),
   TMV("v86", 35), TMV("v87", 35), TMV("v88", 35), TMV("v89", 36),
   TMV("v9", 7), TMV("v90", 36), TMV("v91", 36), TMV("v92", 36),
   TMV("v93", 37), TMV("v94", 37), TMV("v95", 37), TMV("v96", 37),
   TMV("v97", 37), TMV("v98", 37), TMV("v99", 6), TMC(21, 39), TMC(21, 41),
   TMC(21, 43), TMC(21, 45), TMC(21, 47), TMC(21, 49), TMC(21, 50),
   TMC(21, 52), TMC(21, 54), TMC(21, 56), TMC(21, 58), TMC(21, 60),
   TMC(21, 62), TMC(21, 64), TMC(21, 66), TMC(21, 68), TMC(21, 70),
   TMC(21, 72), TMC(21, 73), TMC(22, 77), TMC(22, 79), TMC(24, 81),
   TMC(25, 81), TMC(25, 82), TMC(25, 83), TMC(25, 85), TMC(25, 86),
   TMC(26, 81), TMC(27, 88), TMC(28, 97), TMC(30, 99), TMC(31, 13),
   TMC(32, 13), TMC(33, 13), TMC(34, 100), TMC(34, 102), TMC(34, 104),
   TMC(34, 106), TMC(35, 9), TMC(36, 9), TMC(37, 9), TMC(38, 107),
   TMC(39, 0), TMC(40, 7), TMC(41, 133), TMC(42, 80), TMC(43, 13),
   TMC(44, 13), TMC(45, 9), TMC(46, 9), TMC(47, 29), TMC(47, 10),
   TMC(48, 6), TMC(49, 134), TMC(50, 135), TMC(51, 3), TMC(52, 16),
   TMC(53, 14), TMC(54, 136), TMC(55, 13), TMC(56, 3), TMC(57, 141),
   TMC(58, 142), TMC(59, 143), TMC(60, 0), TMC(61, 146), TMC(62, 7),
   TMC(63, 87), TMC(64, 149), TMC(65, 151), TMC(66, 153), TMC(67, 33),
   TMC(68, 33), TMC(69, 33), TMC(70, 154), TMC(71, 33), TMC(72, 155),
   TMC(73, 157), TMC(74, 159), TMC(75, 151), TMC(76, 157), TMC(77, 161),
   TMC(78, 159), TMC(79, 155), TMC(80, 151), TMC(81, 33), TMC(82, 162),
   TMC(83, 8), TMC(84, 161), TMC(85, 161), TMC(86, 164), TMC(87, 33),
   TMC(88, 150), TMC(89, 151), TMC(90, 165), TMC(91, 93), TMC(92, 164),
   TMC(93, 166), TMC(94, 167), TMC(95, 168), TMC(96, 154), TMC(97, 93),
   TMC(98, 95), TMC(99, 170), TMC(100, 31), TMC(101, 155), TMC(102, 9),
   TMC(103, 9), TMC(104, 80)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op inputOK_primitive_def x = x
    val op inputOK_primitive_def =
    ThmBind.DT(((("ssmPBIntegrated",8),[]),[]),
               [ThmBind.read"%198%262@%243%203%7%242$0@|@2%10%8%219$0@%220%217@2%220%217@2%101%220%217@|@%102%220%217@|@%103%104%220%217@||@%105%106%220%217@||@%107%109%220%217@||@%110%111%220%217@||@%112%113%219$0@%220%217@2%220%217@2%174%236$2@%65%220%239@|@%66%67%220%217@||@%69%70%220%217@||@|@%25%220%217@|@%26%27%220%217@||@%28%29%220%217@||@%30%31%220%217@||@%32%33%220%217@||@%34%36%220%217@||@%37%38%220%217@||@%39%40%220%217@||@%41%42%43%220%217@|||@%44%45%220%217@||@%47%48%220%217@||@%49%50%220%217@||@%51%52%220%217@||@%53%54%220%217@||@%55%56%220%217@||@%59%60%220%217@||@||@%114%115%220%217@||@%116%117%220%217@||@%118%120%121%220%217@|||@%122%123%220%217@||@%124%125%220%217@||@%126%127%220%217@||@%128%129%220%217@||@%131%132%220%217@||@%133%134%220%217@||@%135%136%220%217@||@||@2"])
  fun op PBNS_ind x = x
    val op PBNS_ind =
    ThmBind.DT(((("ssmPBIntegrated",2),
                [("OMNIType",[37]),("PBTypeIntegrated",[23,66,117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("option",[6]),("pair",[5,16]),
                 ("relation",[107,113]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%182%6%202%196$0%234@%258%211%238%237%233%250@4%226@4%196$0%221@%258%211%238%237%233%247@4%226@4%196$0%207@%258%211%238%237%233%266@4%226@4%196$0%222@%258%211%238%237%233%248@4%226@4%196$0%208@%258%211%238%237%233%246@4%226@4%196%192%15%185%19$2$1@%280$0@2|@|@2%196%192%15%185%21$2$1@%251$0@2|@|@2%196%192%153$1$0@%258%226@2|@2%196%192%35%185%24$2$1@%258%211%227@$0@3|@|@2%196%192%74%180%58%185%72$3$2@%258%211%238%216$1@3$0@3|@|@|@2%196$0%221@%258%211%238%237%233%250@4%226@4%196$0%207@%258%211%238%237%233%250@4%226@4%196$0%222@%258%211%238%237%233%250@4%226@4%196$0%208@%258%211%238%237%233%250@4%226@4%196$0%206@%258%211%238%237%233%250@4%226@4%196$0%234@%258%211%238%237%233%247@4%226@4%196$0%207@%258%211%238%237%233%247@4%226@4%196$0%222@%258%211%238%237%233%247@4%226@4%196$0%208@%258%211%238%237%233%247@4%226@4%196$0%206@%258%211%238%237%233%247@4%226@4%196$0%234@%258%211%238%237%233%266@4%226@4%196$0%221@%258%211%238%237%233%266@4%226@4%196$0%222@%258%211%238%237%233%266@4%226@4%196$0%208@%258%211%238%237%233%266@4%226@4%196$0%206@%258%211%238%237%233%266@4%226@4%196$0%234@%258%211%238%237%233%248@4%226@4%196$0%221@%258%211%238%237%233%248@4%226@4%196$0%207@%258%211%238%237%233%248@4%226@4%196$0%208@%258%211%238%237%233%248@4%226@4%196$0%206@%258%211%238%237%233%248@4%226@4%196$0%234@%258%211%238%237%233%246@4%226@4%196$0%221@%258%211%238%237%233%246@4%226@4%196$0%207@%258%211%238%237%233%246@4%226@4%196$0%222@%258%211%238%237%233%246@4%226@4%196$0%206@%258%211%238%237%233%246@4%226@4%196%192%87$1$0@%258%211%238%237%233%260@4%226@3|@2%196%192%91%189%89%188%83%185%85$4$3@%258%211%238%237%233$2@4%211$1@$0@4|@|@|@|@2%192%95%187%78%185%92$3$2@%258%211%238%237%229$1@4$0@3|@|@|@39%192%18%193%22$2$1@$0@|@|@2|@"])
  fun op PBNS_def x = x
    val op PBNS_def =
    ThmBind.DT(((("ssmPBIntegrated",3),
                [("OMNIType",[31]),("PBTypeIntegrated",[19,60,113]),
                 ("bool",[15,57]),("combin",[19]),("list",[6]),
                 ("option",[7]),("pair",[49]),("relation",[113,132]),
                 ("ssm",[8]),("ssmPBIntegrated",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%196%201%231%234@%258%211%238%237%233%250@4%226@4%221@2%196%201%231%221@%258%211%238%237%233%247@4%226@4%207@2%196%201%231%207@%258%211%238%237%233%266@4%226@4%222@2%196%201%231%222@%258%211%238%237%233%248@4%226@4%208@2%196%201%231%208@%258%211%238%237%233%246@4%226@4%206@2%196%201%231%15@%280%19@3%15@2%201%231%15@%251%21@3%15@7"])
  fun op PBOut_ind x = x
    val op PBOut_ind =
    ThmBind.DT(((("ssmPBIntegrated",6),
                [("OMNIType",[37]),("PBTypeIntegrated",[23,66,117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("option",[6]),("pair",[5,16]),
                 ("relation",[107,113]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%182%6%202%196$0%234@%258%211%238%237%233%250@4%226@4%196$0%221@%258%211%238%237%233%247@4%226@4%196$0%207@%258%211%238%237%233%266@4%226@4%196$0%222@%258%211%238%237%233%248@4%226@4%196$0%208@%258%211%238%237%233%246@4%226@4%196%192%15%185%19$2$1@%280$0@2|@|@2%196%192%15%185%21$2$1@%251$0@2|@|@2%196%192%153$1$0@%258%226@2|@2%196%192%35%185%24$2$1@%258%211%227@$0@3|@|@2%196%192%74%180%58%185%72$3$2@%258%211%238%216$1@3$0@3|@|@|@2%196$0%221@%258%211%238%237%233%250@4%226@4%196$0%207@%258%211%238%237%233%250@4%226@4%196$0%222@%258%211%238%237%233%250@4%226@4%196$0%208@%258%211%238%237%233%250@4%226@4%196$0%206@%258%211%238%237%233%250@4%226@4%196$0%234@%258%211%238%237%233%247@4%226@4%196$0%207@%258%211%238%237%233%247@4%226@4%196$0%222@%258%211%238%237%233%247@4%226@4%196$0%208@%258%211%238%237%233%247@4%226@4%196$0%206@%258%211%238%237%233%247@4%226@4%196$0%234@%258%211%238%237%233%266@4%226@4%196$0%221@%258%211%238%237%233%266@4%226@4%196$0%222@%258%211%238%237%233%266@4%226@4%196$0%208@%258%211%238%237%233%266@4%226@4%196$0%206@%258%211%238%237%233%266@4%226@4%196$0%234@%258%211%238%237%233%248@4%226@4%196$0%221@%258%211%238%237%233%248@4%226@4%196$0%207@%258%211%238%237%233%248@4%226@4%196$0%208@%258%211%238%237%233%248@4%226@4%196$0%206@%258%211%238%237%233%248@4%226@4%196$0%234@%258%211%238%237%233%246@4%226@4%196$0%221@%258%211%238%237%233%246@4%226@4%196$0%207@%258%211%238%237%233%246@4%226@4%196$0%222@%258%211%238%237%233%246@4%226@4%196$0%206@%258%211%238%237%233%246@4%226@4%196%192%87$1$0@%258%211%238%237%233%260@4%226@3|@2%196%192%91%189%89%188%83%185%85$4$3@%258%211%238%237%233$2@4%211$1@$0@4|@|@|@|@2%192%95%187%78%185%92$3$2@%258%211%238%237%229$1@4$0@3|@|@|@39%192%18%193%22$2$1@$0@|@|@2|@"])
  fun op PBOut_def x = x
    val op PBOut_def =
    ThmBind.DT(((("ssmPBIntegrated",7),
                [("OMNIType",[31]),("PBTypeIntegrated",[19,60,113]),
                 ("bool",[15,57]),("combin",[19]),("list",[6]),
                 ("option",[7]),("pair",[49]),("relation",[113,132]),
                 ("ssm",[8]),("ssmPBIntegrated",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%196%200%232%234@%258%211%238%237%233%250@4%226@4%223@2%196%200%232%221@%258%211%238%237%233%247@4%226@4%214@2%196%200%232%207@%258%211%238%237%233%266@4%226@4%224@2%196%200%232%222@%258%211%238%237%233%248@4%226@4%215@2%196%200%232%208@%258%211%238%237%233%246@4%226@4%213@2%196%200%232%15@%280%19@3%282@2%200%232%15@%251%21@3%281@7"])
  fun op inputOK_ind x = x
    val op inputOK_ind =
    ThmBind.DT(((("ssmPBIntegrated",9),
                [("PBTypeIntegrated",[90]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%181%5%202%196%188%9$1%275%228%235@2%269$0@3|@2%196%188%9$1%275%228%230@2%269$0@3|@2%196$0%241@2%196$0%218@2%196%188%17$1%269$0@2|@2%196%175%20$1%267$0@2|@2%196%175%79%175%97$2%244$1@$0@2|@|@2%196%175%108%175%119$2%268$1@$0@2|@|@2%196%175%130%175%141$2%259$1@$0@2|@|@2%196%175%152%175%164$2%254$1@$0@2|@|@2%196%178%23$1%275$0@%241@2|@2%196%178%23$1%275$0@%218@2|@2%196%178%61%178%62%188%137$3%275%265$2@$1@2%269$0@3|@|@|@2%196%178%63%178%64%188%137$3%275%271$2@$1@2%269$0@3|@|@|@2%196%178%23%175%138$2%275$1@%267$0@3|@|@2%196%178%23%175%139%175%140$3%275$2@%244$1@$0@3|@|@|@2%196%178%23%175%142%175%143$3%275$2@%268$1@$0@3|@|@|@2%196%178%23%175%144%175%145$3%275$2@%259$1@$0@3|@|@|@2%196%178%23%175%146%175%147$3%275$2@%254$1@$0@3|@|@|@2%196%178%23%178%148%175%149$3%275$2@%275$1@$0@3|@|@|@2%196%178%23%178%150%178%151$3%275$2@%278$1@$0@3|@|@|@2%196%178%23%178%154%175%155$3%275$2@%249$1@$0@3|@|@|@2%196%178%23%178%156%178%157%175%158$4%275$3@%272$2@$1@$0@3|@|@|@|@2%196%178%23%176%159%176%160$3%275$2@%252$1@$0@3|@|@|@2%196%178%23%176%161%176%162$3%275$2@%255$1@$0@3|@|@|@2%196%178%23%179%163%179%165$3%275$2@%253$1@$0@3|@|@|@2%196%178%23%179%166%179%167$3%275$2@%257$1@$0@3|@|@|@2%196%178%23%186%168%186%169$3%275$2@%256$1@$0@3|@|@|@2%196%178%23%186%170%186%171$3%275$2@%264$1@$0@3|@|@|@2%196%178%23%186%172%186%173$3%275$2@%263$1@$0@3|@|@|@2%196%178%46%178%57$2%278$1@$0@2|@|@2%196%178%68%175%71$2%249$1@$0@2|@|@2%196%178%73%178%75%175%76$3%272$2@$1@$0@2|@|@|@2%196%176%77%176%80$2%252$1@$0@2|@|@2%196%176%81%176%82$2%255$1@$0@2|@|@2%196%179%84%179%86$2%253$1@$0@2|@|@2%196%179%88%179%90$2%257$1@$0@2|@|@2%196%186%93%186%94$2%256$1@$0@2|@|@2%196%186%96%186%98$2%264$1@$0@2|@|@2%186%99%186%100$2%263$1@$0@2|@|@41%175%16$1$0@|@2|@"])
  fun op inputOK_def x = x
    val op inputOK_def =
    ThmBind.DT(((("ssmPBIntegrated",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),
                 ("ssmPBIntegrated",[8])]),["DISK_THM"]),
               [ThmBind.read"%196%197%262%275%228%235@2%269%9@4%239@2%196%197%262%275%228%230@2%269%9@4%239@2%196%197%262%241@2%217@2%196%197%262%218@2%217@2%196%197%262%269%17@3%217@2%196%197%262%267%20@3%217@2%196%197%262%244%79@%97@3%217@2%196%197%262%268%108@%119@3%217@2%196%197%262%259%130@%141@3%217@2%196%197%262%254%152@%164@3%217@2%196%197%262%275%23@%241@3%217@2%196%197%262%275%23@%218@3%217@2%196%197%262%275%265%61@%62@2%269%137@4%217@2%196%197%262%275%271%63@%64@2%269%137@4%217@2%196%197%262%275%23@%267%138@4%217@2%196%197%262%275%23@%244%139@%140@4%217@2%196%197%262%275%23@%268%142@%143@4%217@2%196%197%262%275%23@%259%144@%145@4%217@2%196%197%262%275%23@%254%146@%147@4%217@2%196%197%262%275%23@%275%148@%149@4%217@2%196%197%262%275%23@%278%150@%151@4%217@2%196%197%262%275%23@%249%154@%155@4%217@2%196%197%262%275%23@%272%156@%157@%158@4%217@2%196%197%262%275%23@%252%159@%160@4%217@2%196%197%262%275%23@%255%161@%162@4%217@2%196%197%262%275%23@%253%163@%165@4%217@2%196%197%262%275%23@%257%166@%167@4%217@2%196%197%262%275%23@%256%168@%169@4%217@2%196%197%262%275%23@%264%170@%171@4%217@2%196%197%262%275%23@%263%172@%173@4%217@2%196%197%262%278%46@%57@3%217@2%196%197%262%249%68@%71@3%217@2%196%197%262%272%73@%75@%76@3%217@2%196%197%262%252%77@%80@3%217@2%196%197%262%255%81@%82@3%217@2%196%197%262%253%84@%86@3%217@2%196%197%262%257%88@%90@3%217@2%196%197%262%256%93@%94@3%217@2%196%197%262%264%96@%98@3%217@2%197%262%263%99@%100@3%217@40"])
  fun op PlatoonLeader_PLAN_PB_exec_lemma x = x
    val op PlatoonLeader_PLAN_PB_exec_lemma =
    ThmBind.DT(((("ssmPBIntegrated",11),
                [("PBIntegratedDef",[0,3,4,5]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%177%0%190%2%191%3%202%205%194$2@%195$1@$0@3%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%229%279@6%209%275%228%235@2%269%238%237%233%250@6%225@3%11@2%234@%13@3%274%194$2@%195$1@$0@3%270%209%275%228%230@2%269%238%237%229%279@6%209%275%228%235@2%269%238%237%233%250@6%225@5|@|@|@"])
  fun op PlatoonLeader_PLAN_PB_trap_lemma x = x
    val op PlatoonLeader_PLAN_PB_trap_lemma =
    ThmBind.DT(((("ssmPBIntegrated",12),
                [("PBIntegratedDef",[0,3,4,5]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,27,46,47,50,52,53,62,63,70]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35])]),["DISK_THM"]),
               [ThmBind.read"%202%283%199%12@%279@3%202%201%15@%234@2%177%0%190%2%191%3%202%205%194$2@%195$1@$0@3%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@3%11@2%234@%13@3%273%194$2@%195$1@$0@3%269%227@3|@|@|@3"])
  fun op PlatoonLeader_PLAN_PB_trap_justified_lemma x = x
    val op PlatoonLeader_PLAN_PB_trap_justified_lemma =
    ThmBind.DT(((("ssmPBIntegrated",13),
                [("PBIntegratedDef",[0,3,4,5]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,59])]),["DISK_THM"]),
               [ThmBind.read"%202%283%199%12@%279@3%202%201%15@%234@2%183%1%184%4%177%0%190%2%191%3%197%240%194$2@%195$1@$0@3%280%261%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@5%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@3%11@2%234@%13@2%204%262@%277@%276@%11@$4%234@%280%261%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@6%212$3%234@%280%261%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@6%13@4%196%245%262@%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@4%196%205%194$2@%195$1@$0@3%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@3%11@2%234@%13@3%273%194$2@%195$1@$0@3%269%227@5|@|@|@|@|@3"])
  fun op PlatoonLeader_PLAN_PB_trap_justified_thm x = x
    val op PlatoonLeader_PLAN_PB_trap_justified_thm =
    ThmBind.DT(((("ssmPBIntegrated",14),
                [("PBIntegratedDef",[0,3,4,5]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,47,48,59])]),["DISK_THM"]),
               [ThmBind.read"%202%283%199%12@%279@3%202%201%15@%234@2%183%1%184%4%177%0%190%2%191%3%197%240%194$2@%195$1@$0@3%280%211%238%237%229%12@4%211%238%237%233%250@4%226@4%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@3%11@2%234@%13@2%204%262@%277@%276@%11@$4%234@%280%211%238%237%229%12@4%211%238%237%233%250@4%226@5%212$3%234@%280%211%238%237%229%12@4%211%238%237%233%250@4%226@5%13@4%196%245%262@%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@4%196%205%194$2@%195$1@$0@3%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%229%12@6%209%275%228%235@2%269%238%237%233%250@6%225@3%11@2%234@%13@3%273%194$2@%195$1@$0@3%269%227@5|@|@|@|@|@3"])
  fun op PlatoonLeader_Omni_notDiscard_slCommand_thm x = x
    val op PlatoonLeader_Omni_notDiscard_slCommand_thm =
    ThmBind.DT(((("ssmPBIntegrated",15),
                [("aclfoundation",[33,110]),("bool",[15,50,53,62]),
                 ("combin",[19]),("list",[23,27]),("relation",[113,132]),
                 ("ssm",[36,47,48,57]),
                 ("ssmPBIntegrated",[8])]),["DISK_THM"]),
               [ThmBind.read"%183%1%184%4%177%0%190%2%191%3%283%240%194$2@%195$1@$0@3%251%211%238%237%233%14@4%211%238%237%229%12@4%226@4%204%262@%277@%276@%210%209%275%228%230@2%269%238%237%233%14@6%209%275%228%235@2%269%238%237%229%12@6%225@3%11@2%234@%13@2%204%262@%277@%276@%11@$4%234@%251%211%238%237%233%14@4%211%238%237%229%12@4%226@5%212$3%234@%251%211%238%237%233%14@4%211%238%237%229%12@4%226@5%13@4|@|@|@|@|@"])

  val _ = DB.bindl "ssmPBIntegrated"
  [("inputOK_primitive_def",inputOK_primitive_def,DB.Def),
   ("PBNS_ind",PBNS_ind,DB.Thm), ("PBNS_def",PBNS_def,DB.Thm),
   ("PBOut_ind",PBOut_ind,DB.Thm), ("PBOut_def",PBOut_def,DB.Thm),
   ("inputOK_ind",inputOK_ind,DB.Thm), ("inputOK_def",inputOK_def,DB.Thm),
   ("PlatoonLeader_PLAN_PB_exec_lemma",
    PlatoonLeader_PLAN_PB_exec_lemma,
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
    data = "OO4.PBNS4.%231OO5.PBOut4.%232OO7.inputOK4.%262"
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
