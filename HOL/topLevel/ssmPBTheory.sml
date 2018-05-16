structure ssmPBTheory :> ssmPBTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ssmPBTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open OMNITypeTheory PBTypeTheory ssm11Theory
  in end;
  val _ = Theory.link_parents
          ("ssmPB",
          Arbnum.fromString "1526502777",
          Arbnum.fromString "534785")
          [("PBType",
           Arbnum.fromString "1526502772",
           Arbnum.fromString "339915"),
           ("ssm11",
           Arbnum.fromString "1526502756",
           Arbnum.fromString "497196"),
           ("OMNIType",
           Arbnum.fromString "1526502768",
           Arbnum.fromString "51917")];
  val _ = Theory.incorporate_types "ssmPB" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("aclfoundation", "Form"),
   ID("PBType", "stateRole"), ID("ssm11", "order"),
   ID("OMNIType", "command"), ID("PBType", "slCommand"),
   ID("OMNIType", "state"), ID("PBType", "slState"), ID("list", "list"),
   ID("min", "bool"), ID("PBType", "slOutput"), ID("ssm11", "trType"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("OMNIType", "output"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "IntLevel"), ID("OMNIType", "escCommand"),
   ID("aclfoundation", "SecLevel"), ID("num", "num"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("min", "@"), ID("ssm11", "CFG"),
   ID("ssm11", "configuration"), ID("ssm11", "CFGInterpret"),
   ID("PBType", "COMPLETE_PB"), ID("PBType", "CONDUCT_ORP"),
   ID("PBType", "CONDUCT_PB"), ID("list", "CONS"),
   ID("PBType", "CompletePB"), ID("PBType", "ConductORP"),
   ID("PBType", "ConductPB"), ID("OMNIType", "ESCc"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("PBType", "MOVE_TO_ORP"),
   ID("PBType", "MOVE_TO_PB"), ID("PBType", "MoveToORP"),
   ID("PBType", "MoveToPB"), ID("list", "NIL"),
   ID("aclfoundation", "Name"), ID("ssmPB", "PBNS"), ID("ssmPB", "PBOut"),
   ID("PBType", "PLAN_PB"), ID("PBType", "PlanPB"),
   ID("PBType", "PlatoonLeader"), ID("aclfoundation", "Princ_CASE"),
   ID("OMNIType", "SLc"), ID("ssm11", "SOME"), ID("bool", "T"),
   ID("ssm11", "TR"), ID("aclfoundation", "TT"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("aclfoundation", "andf"),
   ID("ssmPB", "authenticationTest"), ID("PBType", "completePB"),
   ID("PBType", "conductORP"), ID("PBType", "conductPB"),
   ID("aclfoundation", "controls"), ID("PBType", "crossLD"),
   ID("ssm11", "discard"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"), ID("ssm11", "exec"),
   ID("aclfoundation", "impf"), ID("PBType", "incomplete"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("PBType", "moveToPB"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("aclfoundation", "prop"), ID("aclfoundation", "quoting"),
   ID("aclfoundation", "reps"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("ssmPB", "secContext"),
   ID("aclfoundation", "speaks_for"), ID("ssmPB", "ssmPBStateInterp"),
   ID("ssm11", "trap"), ID("PBType", "unAuthenticated"),
   ID("PBType", "unAuthorized"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [2], TYOP [5], TYOP [4, 3], TYOP [3, 4],
   TYOP [1, 5, 2, 1, 0], TYOP [7], TYOP [6, 7], TYOP [0, 8, 6],
   TYOP [8, 6], TYOP [0, 3, 10], TYOP [9], TYOP [0, 6, 12], TYOP [10],
   TYOP [11, 4], TYOP [0, 15, 14], TYOP [0, 7, 16], TYOP [0, 15, 7],
   TYOP [0, 7, 18], TYV "'b", TYOP [12, 5, 20, 2, 1, 0], TYOP [0, 15, 8],
   TYOP [0, 8, 22], TYOP [13, 1], TYOP [13, 0], TYOP [14, 14],
   TYOP [0, 15, 26], TYOP [0, 8, 27], TYOP [0, 15, 12], TYOP [0, 7, 29],
   TYOP [0, 6, 13], TYOP [8, 26], TYOP [15, 2], TYOP [16, 2, 1], TYOP [17],
   TYOP [18, 2, 0], TYOP [19], TYOP [0, 13, 12], TYOP [0, 34, 12],
   TYOP [0, 39, 12], TYOP [0, 21, 12], TYOP [0, 41, 12], TYOP [0, 33, 12],
   TYOP [0, 43, 12], TYOP [0, 36, 12], TYOP [0, 45, 12], TYOP [0, 4, 12],
   TYOP [0, 47, 12], TYOP [0, 35, 12], TYOP [0, 49, 12], TYOP [0, 38, 12],
   TYOP [0, 30, 12], TYOP [0, 52, 12], TYOP [0, 28, 12], TYOP [0, 54, 12],
   TYOP [0, 23, 12], TYOP [0, 56, 12], TYOP [0, 37, 12], TYOP [0, 58, 12],
   TYOP [0, 5, 12], TYOP [0, 60, 12], TYOP [0, 24, 12], TYOP [0, 62, 12],
   TYOP [0, 25, 12], TYOP [0, 64, 12], TYOP [0, 3, 12], TYOP [0, 66, 12],
   TYOP [0, 7, 12], TYOP [0, 68, 12], TYOP [0, 8, 12], TYOP [0, 70, 12],
   TYOP [0, 29, 12], TYOP [22, 24, 25], TYOP [22, 21, 73],
   TYOP [0, 73, 74], TYOP [0, 21, 75], TYOP [0, 25, 73], TYOP [0, 24, 77],
   TYOP [0, 12, 12], TYOP [0, 12, 79], TYOP [0, 13, 38], TYOP [0, 10, 12],
   TYOP [0, 10, 82], TYOP [0, 14, 12], TYOP [0, 14, 84], TYOP [0, 7, 68],
   TYOP [0, 31, 12], TYOP [0, 87, 31], TYOP [28, 4, 1, 0, 26, 2, 8],
   TYOP [0, 32, 89], TYOP [0, 8, 90], TYOP [0, 10, 91], TYOP [0, 10, 92],
   TYOP [0, 9, 93], TYOP [0, 13, 94], TYOP [0, 89, 12], TYOP [0, 74, 96],
   TYOP [0, 10, 10], TYOP [0, 6, 98], TYOP [0, 32, 32], TYOP [0, 26, 100],
   TYOP [0, 35, 4], TYOP [0, 37, 58], TYOP [0, 103, 12],
   TYOP [0, 103, 104], TYOP [0, 103, 105], TYOP [0, 36, 45],
   TYOP [0, 107, 106], TYOP [0, 107, 108], TYOP [0, 34, 39],
   TYOP [0, 110, 109], TYOP [0, 110, 111], TYOP [0, 33, 13],
   TYOP [0, 33, 113], TYOP [0, 114, 112], TYOP [0, 113, 115],
   TYOP [0, 33, 43], TYOP [0, 117, 116], TYOP [0, 113, 118],
   TYOP [0, 31, 119], TYOP [0, 31, 120], TYOP [0, 31, 121],
   TYOP [0, 31, 122], TYOP [0, 13, 123], TYOP [0, 60, 124],
   TYOP [0, 12, 125], TYOP [0, 12, 126], TYOP [0, 6, 127], TYOP [0, 2, 33],
   TYOP [0, 117, 12], TYOP [0, 117, 130], TYOP [0, 2, 12],
   TYOP [0, 132, 131], TYOP [0, 33, 133], TYOP [0, 3, 4], TYOP [0, 4, 5],
   TYOP [0, 89, 96], TYOP [0, 15, 137], TYOP [0, 74, 138],
   TYOP [0, 13, 13], TYOP [0, 140, 13], TYOP [0, 31, 141], TYOP [0, 6, 6],
   TYOP [0, 6, 143], TYOP [0, 33, 143], TYOP [0, 4, 15], TYOP [0, 34, 6],
   TYOP [0, 34, 147], TYOP [0, 36, 6], TYOP [0, 36, 149], TYOP [0, 37, 6],
   TYOP [0, 37, 151], TYOP [0, 33, 33], TYOP [0, 33, 153], TYOP [0, 5, 6],
   TYOP [0, 33, 145], TYOP [0, 74, 13], TYOP [0, 33, 6], TYOP [0, 33, 158]]
  end
  val _ = Theory.incorporate_consts "ssmPB" tyvector
     [("ssmPBStateInterp", 9), ("secContext", 11),
      ("authenticationTest", 13), ("PBOut", 17), ("PBNS", 19)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 21), TMV("NS", 23), TMV("Oi", 24), TMV("Os", 25),
   TMV("Out", 28), TMV("P", 13), TMV("P", 30), TMV("R", 31), TMV("a", 6),
   TMV("authenticationTest", 13), TMV("cmd", 4), TMV("cmd", 5),
   TMV("cmd", 3), TMV("ins", 10), TMV("outs", 32), TMV("s", 7),
   TMV("s", 8), TMV("slCommand", 3), TMV("state", 8), TMV("v", 6),
   TMV("v", 5), TMV("v", 7), TMV("v1", 6), TMV("v1", 15), TMV("v10", 33),
   TMV("v100", 6), TMV("v101", 6), TMV("v102", 6), TMV("v103", 6),
   TMV("v104", 6), TMV("v105", 6), TMV("v106", 6), TMV("v107", 6),
   TMV("v108", 6), TMV("v109", 33), TMV("v110", 6), TMV("v111", 33),
   TMV("v112", 33), TMV("v113", 33), TMV("v114", 6), TMV("v115", 33),
   TMV("v116", 33), TMV("v117", 6), TMV("v118", 34), TMV("v119", 34),
   TMV("v12", 33), TMV("v12", 35), TMV("v120", 34), TMV("v121", 34),
   TMV("v122", 36), TMV("v123", 36), TMV("v124", 36), TMV("v125", 36),
   TMV("v126", 37), TMV("v127", 37), TMV("v128", 37), TMV("v129", 37),
   TMV("v13", 33), TMV("v130", 37), TMV("v131", 37), TMV("v133", 33),
   TMV("v134", 33), TMV("v135", 33), TMV("v136", 33), TMV("v137", 2),
   TMV("v138", 33), TMV("v139", 33), TMV("v14", 33), TMV("v140", 33),
   TMV("v141", 33), TMV("v15", 6), TMV("v15", 35), TMV("v16", 33),
   TMV("v17", 33), TMV("v18", 6), TMV("v18", 35), TMV("v19", 34),
   TMV("v2", 6), TMV("v20", 34), TMV("v21", 34), TMV("v21", 35),
   TMV("v22", 34), TMV("v23", 36), TMV("v24", 36), TMV("v24", 35),
   TMV("v25", 36), TMV("v26", 36), TMV("v26", 4), TMV("v27", 37),
   TMV("v28", 37), TMV("v29", 37), TMV("v3", 6), TMV("v30", 37),
   TMV("v31", 37), TMV("v32", 37), TMV("v33", 5), TMV("v34", 6),
   TMV("v35", 6), TMV("v36", 6), TMV("v37", 6), TMV("v38", 6),
   TMV("v39", 6), TMV("v4", 6), TMV("v40", 6), TMV("v41", 6),
   TMV("v42", 6), TMV("v43", 33), TMV("v44", 6), TMV("v45", 33),
   TMV("v46", 33), TMV("v47", 33), TMV("v48", 6), TMV("v49", 33),
   TMV("v5", 6), TMV("v50", 33), TMV("v51", 6), TMV("v52", 34),
   TMV("v53", 34), TMV("v54", 34), TMV("v55", 34), TMV("v56", 36),
   TMV("v57", 36), TMV("v58", 36), TMV("v59", 36), TMV("v6", 6),
   TMV("v6", 35), TMV("v60", 37), TMV("v61", 37), TMV("v62", 37),
   TMV("v63", 37), TMV("v64", 37), TMV("v65", 37), TMV("v66", 5),
   TMV("v67", 6), TMV("v68", 6), TMV("v69", 6), TMV("v7", 6),
   TMV("v70", 6), TMV("v71", 6), TMV("v72", 6), TMV("v73", 6),
   TMV("v74", 6), TMV("v75", 6), TMV("v76", 33), TMV("v77", 6),
   TMV("v78", 33), TMV("v79", 33), TMV("v8", 6), TMV("v80", 33),
   TMV("v81", 6), TMV("v82", 33), TMV("v83", 33), TMV("v84", 6),
   TMV("v85", 34), TMV("v86", 34), TMV("v87", 34), TMV("v88", 34),
   TMV("v89", 36), TMV("v9", 6), TMV("v9", 35), TMV("v90", 36),
   TMV("v91", 36), TMV("v92", 36), TMV("v93", 37), TMV("v94", 37),
   TMV("v95", 37), TMV("v96", 37), TMV("v97", 37), TMV("v98", 37),
   TMV("v99", 5), TMC(20, 38), TMC(20, 40), TMC(20, 42), TMC(20, 44),
   TMC(20, 46), TMC(20, 48), TMC(20, 50), TMC(20, 51), TMC(20, 53),
   TMC(20, 55), TMC(20, 57), TMC(20, 59), TMC(20, 61), TMC(20, 63),
   TMC(20, 65), TMC(20, 67), TMC(20, 69), TMC(20, 71), TMC(20, 72),
   TMC(21, 76), TMC(21, 78), TMC(23, 80), TMC(24, 31), TMC(24, 80),
   TMC(24, 81), TMC(24, 83), TMC(24, 85), TMC(24, 86), TMC(25, 80),
   TMC(26, 88), TMC(27, 95), TMC(29, 97), TMC(30, 7), TMC(31, 7),
   TMC(32, 7), TMC(33, 99), TMC(33, 101), TMC(34, 14), TMC(35, 14),
   TMC(36, 14), TMC(37, 102), TMC(38, 12), TMC(39, 6), TMC(40, 128),
   TMC(41, 79), TMC(42, 7), TMC(43, 7), TMC(44, 14), TMC(45, 14),
   TMC(46, 10), TMC(47, 129), TMC(48, 19), TMC(49, 17), TMC(50, 7),
   TMC(51, 14), TMC(52, 2), TMC(53, 134), TMC(54, 135), TMC(55, 136),
   TMC(56, 12), TMC(57, 139), TMC(58, 6), TMC(59, 87), TMC(60, 142),
   TMC(61, 144), TMC(62, 13), TMC(63, 3), TMC(64, 3), TMC(65, 3),
   TMC(66, 145), TMC(67, 3), TMC(68, 146), TMC(69, 148), TMC(70, 150),
   TMC(71, 144), TMC(72, 148), TMC(73, 152), TMC(74, 150), TMC(75, 146),
   TMC(76, 144), TMC(77, 3), TMC(78, 152), TMC(79, 152), TMC(80, 154),
   TMC(81, 3), TMC(82, 143), TMC(83, 144), TMC(84, 155), TMC(85, 154),
   TMC(86, 156), TMC(87, 157), TMC(88, 145), TMC(89, 11), TMC(90, 159),
   TMC(91, 9), TMC(92, 146), TMC(93, 14), TMC(94, 14), TMC(95, 79)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op authenticationTest_primitive_def x = x
    val op authenticationTest_primitive_def =
    ThmBind.DT(((("ssmPB",8),[]),[]),
               [ThmBind.read"%194%235@%233%199%7%232$0@|@2%9%8%213$0@%214%211@2%214%211@2%95%214%211@|@%96%214%211@|@%97%98%214%211@||@%99%100%214%211@||@%101%103%214%211@||@%104%105%214%211@||@%106%107%213$0@%214%211@2%214%211@2%169%226$2@%64%214%229@|@%65%66%214%211@||@%68%69%214%211@||@|@%25%214%211@|@%26%27%214%211@||@%28%29%214%211@||@%30%31%214%211@||@%32%33%214%211@||@%34%35%214%211@||@%36%37%214%211@||@%38%39%214%211@||@%40%41%42%214%211@|||@%43%44%214%211@||@%47%48%214%211@||@%49%50%214%211@||@%51%52%214%211@||@%53%54%214%211@||@%55%56%214%211@||@%58%59%214%211@||@||@%108%109%214%211@||@%110%111%214%211@||@%112%114%115%214%211@|||@%116%117%214%211@||@%118%119%214%211@||@%120%121%214%211@||@%122%123%214%211@||@%126%127%214%211@||@%128%129%214%211@||@%130%131%214%211@||@||@2"])
  fun op ssmPBStateInterp_def x = x
    val op ssmPBStateInterp_def =
    ThmBind.DT(((("ssmPB",11),[]),[]),
               [ThmBind.read"%187%18%192%264$0@2%231@|@"])
  fun op secContext_def x = x
    val op secContext_def =
    ThmBind.DT(((("ssmPB",13),[]),[]),
               [ThmBind.read"%185%12%195%262$0@2%205%239%220%225@2%257%228%227$0@5%219@2|@"])
  fun op PBNS_ind x = x
    val op PBNS_ind =
    ThmBind.DT(((("ssmPB",2),
                [("OMNIType",[37]),("PBType",[23,50]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm11",[31])]),["DISK_THM"]),
               [ThmBind.read"%178%6%198%191$0%223@%248%227%240@4%191$0%223@%248%227%250@4%191$0%215@%248%227%237@4%191$0%215@%248%227%250@4%191$0%203@%248%227%254@4%191$0%203@%248%227%250@4%191$0%216@%248%227%238@4%191$0%216@%248%227%250@4%191$0%204@%248%227%236@4%191$0%204@%248%227%250@4%191%186%15%185%12$2$1@%265%227$0@3|@|@2%191%186%15%185%12$2$1@%241%227$0@3|@|@2%191%186%15%176%125$2$1@%241%210$0@3|@|@2%191%186%15%176%159$2$1@%265%210$0@3|@|@2%191%176%46$1%223@%248%210$0@3|@2%191$0%223@%248%227%237@4%191$0%223@%248%227%254@4%191$0%223@%248%227%238@4%191$0%223@%248%227%236@4%191%176%71$1%215@%248%210$0@3|@2%191$0%215@%248%227%240@4%191$0%215@%248%227%254@4%191$0%215@%248%227%238@4%191$0%215@%248%227%236@4%191%176%75$1%203@%248%210$0@3|@2%191$0%203@%248%227%240@4%191$0%203@%248%227%237@4%191$0%203@%248%227%238@4%191$0%203@%248%227%236@4%191%176%80$1%216@%248%210$0@3|@2%191$0%216@%248%227%240@4%191$0%216@%248%227%237@4%191$0%216@%248%227%254@4%191$0%216@%248%227%236@4%191%176%84$1%204@%248%210$0@3|@2%191$0%204@%248%227%240@4%191$0%204@%248%227%237@4%191$0%204@%248%227%254@4%191$0%204@%248%227%238@4%175%87$1%202@%248$0@2|@41%186%21%188%23$2$1@$0@|@|@2|@"])
  fun op PBNS_def x = x
    val op PBNS_def =
    ThmBind.DT(((("ssmPB",3),
                [("OMNIType",[31]),("PBType",[19,46]),("bool",[15,57]),
                 ("combin",[19]),("pair",[49]),("relation",[113,132]),
                 ("ssm11",[25]),("ssmPB",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%191%197%221%223@%248%227%240@4%215@2%191%197%221%223@%248%227%250@4%223@2%191%197%221%215@%248%227%237@4%203@2%191%197%221%215@%248%227%250@4%215@2%191%197%221%203@%248%227%254@4%216@2%191%197%221%203@%248%227%250@4%203@2%191%197%221%216@%248%227%238@4%204@2%191%197%221%216@%248%227%250@4%216@2%191%197%221%204@%248%227%236@4%202@2%191%197%221%204@%248%227%250@4%204@2%191%197%221%15@%265%227%12@4%15@2%197%221%15@%241%227%12@4%15@12"])
  fun op PBOut_ind x = x
    val op PBOut_ind =
    ThmBind.DT(((("ssmPB",6),
                [("OMNIType",[37]),("PBType",[23,50]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm11",[31])]),["DISK_THM"]),
               [ThmBind.read"%178%6%198%191$0%223@%248%227%240@4%191$0%223@%248%227%250@4%191$0%215@%248%227%237@4%191$0%215@%248%227%250@4%191$0%203@%248%227%254@4%191$0%203@%248%227%250@4%191$0%216@%248%227%238@4%191$0%216@%248%227%250@4%191$0%204@%248%227%236@4%191$0%204@%248%227%250@4%191%186%15%185%12$2$1@%265%227$0@3|@|@2%191%186%15%185%12$2$1@%241%227$0@3|@|@2%191%186%15%176%125$2$1@%241%210$0@3|@|@2%191%186%15%176%159$2$1@%265%210$0@3|@|@2%191%176%46$1%223@%248%210$0@3|@2%191$0%223@%248%227%237@4%191$0%223@%248%227%254@4%191$0%223@%248%227%238@4%191$0%223@%248%227%236@4%191%176%71$1%215@%248%210$0@3|@2%191$0%215@%248%227%240@4%191$0%215@%248%227%254@4%191$0%215@%248%227%238@4%191$0%215@%248%227%236@4%191%176%75$1%203@%248%210$0@3|@2%191$0%203@%248%227%240@4%191$0%203@%248%227%237@4%191$0%203@%248%227%238@4%191$0%203@%248%227%236@4%191%176%80$1%216@%248%210$0@3|@2%191$0%216@%248%227%240@4%191$0%216@%248%227%237@4%191$0%216@%248%227%254@4%191$0%216@%248%227%236@4%191%176%84$1%204@%248%210$0@3|@2%191$0%204@%248%227%240@4%191$0%204@%248%227%237@4%191$0%204@%248%227%254@4%191$0%204@%248%227%238@4%175%87$1%202@%248$0@2|@41%186%21%188%23$2$1@$0@|@|@2|@"])
  fun op PBOut_def x = x
    val op PBOut_def =
    ThmBind.DT(((("ssmPB",7),
                [("OMNIType",[31]),("PBType",[19,46]),("bool",[15,57]),
                 ("combin",[19]),("pair",[49]),("relation",[113,132]),
                 ("ssm11",[25]),("ssmPB",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%191%196%222%223@%248%227%240@4%217@2%191%196%222%223@%248%227%250@4%224@2%191%196%222%215@%248%227%237@4%208@2%191%196%222%215@%248%227%250@4%217@2%191%196%222%203@%248%227%254@4%218@2%191%196%222%203@%248%227%250@4%208@2%191%196%222%216@%248%227%238@4%209@2%191%196%222%216@%248%227%250@4%218@2%191%196%222%204@%248%227%236@4%207@2%191%196%222%204@%248%227%250@4%209@2%191%196%222%15@%265%227%12@4%267@2%196%222%15@%241%227%12@4%266@12"])
  fun op authenticationTest_ind x = x
    val op authenticationTest_ind =
    ThmBind.DT(((("ssmPB",9),
                [("PBType",[100]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%177%5%198%191%182%11$1%261%220%225@2%257$0@3|@2%191$0%231@2%191$0%212@2%191%182%20$1%257$0@2|@2%191%170%22$1%255$0@2|@2%191%170%77%170%91$2%234$1@$0@2|@|@2%191%170%102%170%113$2%256$1@$0@2|@|@2%191%170%124%170%136$2%249$1@$0@2|@|@2%191%170%147%170%158$2%244$1@$0@2|@|@2%191%173%24$1%261$0@%231@2|@2%191%173%24$1%261$0@%212@2|@2%191%173%60%173%61%182%132$3%261%253$2@$1@2%257$0@3|@|@|@2%191%173%62%173%63%182%132$3%261%258$2@$1@2%257$0@3|@|@|@2%191%173%24%170%133$2%261$1@%255$0@3|@|@2%191%173%24%170%134%170%135$3%261$2@%234$1@$0@3|@|@|@2%191%173%24%170%137%170%138$3%261$2@%256$1@$0@3|@|@|@2%191%173%24%170%139%170%140$3%261$2@%249$1@$0@3|@|@|@2%191%173%24%170%141%170%142$3%261$2@%244$1@$0@3|@|@|@2%191%173%24%173%143%170%144$3%261$2@%261$1@$0@3|@|@|@2%191%173%24%173%145%173%146$3%261$2@%263$1@$0@3|@|@|@2%191%173%24%173%148%170%149$3%261$2@%239$1@$0@3|@|@|@2%191%173%24%173%150%173%151%170%152$4%261$3@%259$2@$1@$0@3|@|@|@|@2%191%173%24%171%153%171%154$3%261$2@%242$1@$0@3|@|@|@2%191%173%24%171%155%171%156$3%261$2@%245$1@$0@3|@|@|@2%191%173%24%174%157%174%160$3%261$2@%243$1@$0@3|@|@|@2%191%173%24%174%161%174%162$3%261$2@%247$1@$0@3|@|@|@2%191%173%24%181%163%181%164$3%261$2@%246$1@$0@3|@|@|@2%191%173%24%181%165%181%166$3%261$2@%252$1@$0@3|@|@|@2%191%173%24%181%167%181%168$3%261$2@%251$1@$0@3|@|@|@2%191%173%45%173%57$2%263$1@$0@2|@|@2%191%173%67%170%70$2%239$1@$0@2|@|@2%191%173%72%173%73%170%74$3%259$2@$1@$0@2|@|@|@2%191%171%76%171%78$2%242$1@$0@2|@|@2%191%171%79%171%81$2%245$1@$0@2|@|@2%191%174%82%174%83$2%243$1@$0@2|@|@2%191%174%85%174%86$2%247$1@$0@2|@|@2%191%181%88%181%89$2%246$1@$0@2|@|@2%191%181%90%181%92$2%252$1@$0@2|@|@2%181%93%181%94$2%251$1@$0@2|@|@40%170%19$1$0@|@2|@"])
  fun op authenticationTest_def x = x
    val op authenticationTest_def =
    ThmBind.DT(((("ssmPB",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),("ssmPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%191%193%235%261%220%225@2%257%11@4%229@2%191%193%235%231@2%211@2%191%193%235%212@2%211@2%191%193%235%257%20@3%211@2%191%193%235%255%22@3%211@2%191%193%235%234%77@%91@3%211@2%191%193%235%256%102@%113@3%211@2%191%193%235%249%124@%136@3%211@2%191%193%235%244%147@%158@3%211@2%191%193%235%261%24@%231@3%211@2%191%193%235%261%24@%212@3%211@2%191%193%235%261%253%60@%61@2%257%132@4%211@2%191%193%235%261%258%62@%63@2%257%132@4%211@2%191%193%235%261%24@%255%133@4%211@2%191%193%235%261%24@%234%134@%135@4%211@2%191%193%235%261%24@%256%137@%138@4%211@2%191%193%235%261%24@%249%139@%140@4%211@2%191%193%235%261%24@%244%141@%142@4%211@2%191%193%235%261%24@%261%143@%144@4%211@2%191%193%235%261%24@%263%145@%146@4%211@2%191%193%235%261%24@%239%148@%149@4%211@2%191%193%235%261%24@%259%150@%151@%152@4%211@2%191%193%235%261%24@%242%153@%154@4%211@2%191%193%235%261%24@%245%155@%156@4%211@2%191%193%235%261%24@%243%157@%160@4%211@2%191%193%235%261%24@%247%161@%162@4%211@2%191%193%235%261%24@%246%163@%164@4%211@2%191%193%235%261%24@%252%165@%166@4%211@2%191%193%235%261%24@%251%167@%168@4%211@2%191%193%235%263%45@%57@3%211@2%191%193%235%239%67@%70@3%211@2%191%193%235%259%72@%73@%74@3%211@2%191%193%235%242%76@%78@3%211@2%191%193%235%245%79@%81@3%211@2%191%193%235%243%82@%83@3%211@2%191%193%235%247%85@%86@3%211@2%191%193%235%246%88@%89@3%211@2%191%193%235%252%90@%92@3%211@2%193%235%251%93@%94@3%211@39"])
  fun op authenticationTest_cmd_reject_lemma x = x
    val op authenticationTest_cmd_reject_lemma =
    ThmBind.DT(((("ssmPB",12),
                [("aclfoundation",[33,110]),
                 ("bool",[15,25,26,46,47,52,53,62,70,72]),("combin",[19]),
                 ("relation",[113,132]),("sat",[1,3,5,6,7,11,14,15]),
                 ("ssmPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%175%10%268%235%257%228$0@4|@"])
  fun op PlatoonLeader_slCommand_lemma x = x
    val op PlatoonLeader_slCommand_lemma =
    ThmBind.DT(((("ssmPB",14),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm11",[52]),("ssmPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%198%201%189%0@%190%2@%3@3%200%235@%264@%262%17@2%205%261%220%225@2%257%228%227%17@5%13@2%16@%14@3%260%189%0@%190%2@%3@3%257%228%227%17@5"])
  fun op PlatoonLeader_exec_slCommand_justified_thm x = x
    val op PlatoonLeader_exec_slCommand_justified_thm =
    ThmBind.DT(((("ssmPB",15),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm11",[52,62]),
                 ("ssmPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%180%1%179%4%172%0%183%2%184%3%193%230%189$2@%190$1@$0@3%248%227%17@3%200%235@%264@%262%17@2%205%261%220%225@2%257%228%227%17@5%13@2%16@%14@2%200%235@%264@%262%17@2%13@$4%16@%248%227%17@4%206$3%16@%248%227%17@4%14@4%191%235%261%220%225@2%257%228%227%17@6%191%201%189$2@%190$1@$0@3%200%235@%264@%262%17@2%205%261%220%225@2%257%228%227%17@5%13@2%16@%14@3%260%189$2@%190$1@$0@3%257%228%227%17@7|@|@|@|@|@"])

  val _ = DB.bindl "ssmPB"
  [("authenticationTest_primitive_def",
    authenticationTest_primitive_def,
    DB.Def), ("ssmPBStateInterp_def",ssmPBStateInterp_def,DB.Def),
   ("secContext_def",secContext_def,DB.Def), ("PBNS_ind",PBNS_ind,DB.Thm),
   ("PBNS_def",PBNS_def,DB.Thm), ("PBOut_ind",PBOut_ind,DB.Thm),
   ("PBOut_def",PBOut_def,DB.Thm),
   ("authenticationTest_ind",authenticationTest_ind,DB.Thm),
   ("authenticationTest_def",authenticationTest_def,DB.Thm),
   ("authenticationTest_cmd_reject_lemma",
    authenticationTest_cmd_reject_lemma,
    DB.Thm),
   ("PlatoonLeader_slCommand_lemma",PlatoonLeader_slCommand_lemma,DB.Thm),
   ("PlatoonLeader_exec_slCommand_justified_thm",
    PlatoonLeader_exec_slCommand_justified_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPB",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ssmPB.PBNS_def ssmPB.secContext_def ssmPB.ssmPBStateInterp_def ssmPB.PBOut_def ssmPB.authenticationTest_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPB",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO4.PBNS4.%221OO5.PBOut4.%222OO18.authenticationTest4.%235OO16.ssmPBStateInterp4.%264OO10.secContext4.%262"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ssmPB_grammars = merge_grammars ["PBType", "ssm11", "OMNIType"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ssmPB"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ssmPB_grammars = 
    Portable.## (addtyUDs,addtmUDs) ssmPB_grammars
  val _ = Parse.grammarDB_insert("ssmPB",ssmPB_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ssmPB"
end
