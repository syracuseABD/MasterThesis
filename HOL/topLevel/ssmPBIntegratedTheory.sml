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
          Arbnum.fromString "1526502785",
          Arbnum.fromString "454940")
          [("PBIntegratedDef",
           Arbnum.fromString "1526502776",
           Arbnum.fromString "853199"),
           ("ssm",
           Arbnum.fromString "1526502756",
           Arbnum.fromString "780457")];
  val _ = Theory.incorporate_types "ssmPBIntegrated" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("aclfoundation", "Form"),
   ID("PBTypeIntegrated", "stateRole"), ID("option", "option"),
   ID("OMNIType", "command"), ID("PBTypeIntegrated", "slCommand"),
   ID("PBTypeIntegrated", "slOutput"), ID("ssm", "trType"),
   ID("list", "list"), ID("PBTypeIntegrated", "slState"),
   ID("aclfoundation", "Princ"), ID("aclfoundation", "IntLevel"),
   ID("aclfoundation", "SecLevel"), ID("num", "num"),
   ID("OMNIType", "escCommand"), ID("PBTypeIntegrated", "omniCommand"),
   ID("PBTypeIntegrated", "plCommand"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("min", "@"),
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
   ID("option", "SOME"), ID("bool", "T"), ID("aclfoundation", "TT"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("aclfoundation", "andf"), ID("PBTypeIntegrated", "completePB"),
   ID("PBTypeIntegrated", "conductORP"),
   ID("PBTypeIntegrated", "conductPB"), ID("aclfoundation", "controls"),
   ID("PBTypeIntegrated", "crossLD"), ID("ssm", "discard"),
   ID("aclfoundation", "domi"), ID("aclfoundation", "doms"),
   ID("aclfoundation", "eqf"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("ssm", "exec"), ID("aclfoundation", "impf"),
   ID("PBTypeIntegrated", "incomplete"), ID("ssmPBIntegrated", "inputOK"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("PBTypeIntegrated", "moveToPB"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("aclfoundation", "prop"), ID("aclfoundation", "quoting"),
   ID("aclfoundation", "reps"), ID("aclfoundation", "says"),
   ID("aclfoundation", "speaks_for"), ID("ssm", "trap"),
   ID("PBTypeIntegrated", "unAuthenticated"),
   ID("PBTypeIntegrated", "unAuthorized")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'e", TYV "'d", TYOP [3], TYOP [6], TYOP [5, 4],
   TYOP [4, 5], TYOP [2, 6, 3, 2, 1], TYOP [0, 7, 0], TYOP [7],
   TYOP [9, 6], TYOP [8, 10], TYOP [0, 11, 9], TYOP [10], TYOP [0, 13, 12],
   TYOP [0, 11, 13], TYOP [0, 13, 15], TYOP [0, 11, 0], TYOP [0, 13, 17],
   TYOP [0, 7, 8], TYOP [11, 3], TYOP [12, 3, 2], TYOP [13, 3, 1],
   TYOP [14], TYOP [15], TYOP [16], TYOP [17], TYOP [0, 8, 0],
   TYOP [0, 21, 0], TYOP [0, 28, 0], TYOP [0, 20, 0], TYOP [0, 30, 0],
   TYOP [0, 22, 0], TYOP [0, 32, 0], TYOP [0, 24, 0], TYOP [0, 34, 0],
   TYOP [0, 27, 0], TYOP [0, 18, 0], TYOP [0, 37, 0], TYOP [0, 10, 0],
   TYOP [0, 39, 0], TYOP [0, 23, 0], TYOP [0, 41, 0], TYOP [0, 25, 0],
   TYOP [0, 43, 0], TYOP [0, 6, 0], TYOP [0, 45, 0], TYOP [0, 26, 0],
   TYOP [0, 47, 0], TYOP [0, 13, 0], TYOP [0, 49, 0], TYOP [0, 17, 0],
   TYOP [0, 0, 0], TYOP [0, 0, 52], TYOP [0, 8, 27], TYOP [0, 9, 0],
   TYOP [0, 9, 55], TYOP [0, 13, 49], TYOP [0, 19, 0], TYOP [0, 58, 19],
   TYOP [0, 10, 10], TYOP [0, 6, 60], TYOP [0, 24, 5], TYOP [0, 23, 41],
   TYOP [0, 63, 0], TYOP [0, 63, 64], TYOP [0, 63, 65], TYOP [0, 22, 32],
   TYOP [0, 67, 66], TYOP [0, 67, 68], TYOP [0, 21, 28], TYOP [0, 70, 69],
   TYOP [0, 70, 71], TYOP [0, 20, 8], TYOP [0, 20, 73], TYOP [0, 74, 72],
   TYOP [0, 73, 75], TYOP [0, 20, 30], TYOP [0, 77, 76], TYOP [0, 73, 78],
   TYOP [0, 19, 79], TYOP [0, 19, 80], TYOP [0, 19, 81], TYOP [0, 19, 82],
   TYOP [0, 8, 83], TYOP [0, 45, 84], TYOP [0, 0, 85], TYOP [0, 0, 86],
   TYOP [0, 7, 87], TYOP [0, 3, 20], TYOP [0, 25, 4], TYOP [0, 26, 4],
   TYOP [0, 77, 0], TYOP [0, 77, 92], TYOP [0, 3, 0], TYOP [0, 94, 93],
   TYOP [0, 20, 95], TYOP [0, 4, 5], TYOP [0, 5, 6], TYOP [0, 8, 8],
   TYOP [0, 99, 8], TYOP [0, 19, 100], TYOP [0, 7, 7], TYOP [0, 7, 102],
   TYOP [0, 20, 102], TYOP [0, 10, 11], TYOP [0, 21, 7], TYOP [0, 21, 106],
   TYOP [0, 22, 7], TYOP [0, 22, 108], TYOP [0, 23, 7], TYOP [0, 23, 110],
   TYOP [0, 20, 20], TYOP [0, 20, 112], TYOP [0, 6, 7], TYOP [0, 20, 104],
   TYOP [0, 20, 7], TYOP [0, 20, 116]]
  end
  val _ = Theory.incorporate_consts "ssmPBIntegrated" tyvector
     [("inputOK", 8), ("PBOut", 14), ("PBNS", 16)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 8), TMV("P", 18), TMV("R", 19), TMV("a", 7), TMV("cmd", 6),
   TMV("inputOK", 8), TMV("s", 13), TMV("v", 7), TMV("v", 6), TMV("v", 13),
   TMV("v0", 10), TMV("v1", 7), TMV("v1", 10), TMV("v1", 11),
   TMV("v10", 20), TMV("v10", 10), TMV("v100", 7), TMV("v101", 7),
   TMV("v102", 7), TMV("v103", 7), TMV("v104", 7), TMV("v105", 7),
   TMV("v106", 7), TMV("v107", 7), TMV("v108", 7), TMV("v109", 20),
   TMV("v11", 13), TMV("v110", 7), TMV("v111", 20), TMV("v112", 20),
   TMV("v113", 20), TMV("v114", 7), TMV("v115", 20), TMV("v116", 20),
   TMV("v117", 7), TMV("v118", 21), TMV("v119", 21), TMV("v12", 20),
   TMV("v120", 21), TMV("v121", 21), TMV("v122", 22), TMV("v123", 22),
   TMV("v124", 22), TMV("v125", 22), TMV("v126", 23), TMV("v127", 23),
   TMV("v128", 23), TMV("v129", 23), TMV("v13", 20), TMV("v13", 24),
   TMV("v130", 23), TMV("v131", 23), TMV("v133", 20), TMV("v134", 20),
   TMV("v135", 20), TMV("v136", 20), TMV("v137", 3), TMV("v138", 20),
   TMV("v139", 20), TMV("v14", 20), TMV("v140", 20), TMV("v141", 20),
   TMV("v15", 7), TMV("v15", 10), TMV("v16", 20), TMV("v16", 13),
   TMV("v17", 20), TMV("v18", 7), TMV("v19", 21), TMV("v19", 25),
   TMV("v2", 7), TMV("v20", 21), TMV("v21", 21), TMV("v22", 21),
   TMV("v22", 6), TMV("v23", 22), TMV("v23", 10), TMV("v24", 22),
   TMV("v24", 13), TMV("v25", 22), TMV("v25", 26), TMV("v26", 22),
   TMV("v26", 13), TMV("v27", 10), TMV("v27", 23), TMV("v28", 23),
   TMV("v28", 13), TMV("v29", 23), TMV("v3", 7), TMV("v30", 23),
   TMV("v31", 23), TMV("v32", 23), TMV("v33", 6), TMV("v34", 7),
   TMV("v35", 7), TMV("v36", 7), TMV("v37", 7), TMV("v38", 7),
   TMV("v39", 7), TMV("v4", 7), TMV("v40", 7), TMV("v41", 7),
   TMV("v42", 7), TMV("v43", 20), TMV("v44", 7), TMV("v45", 20),
   TMV("v46", 20), TMV("v47", 20), TMV("v48", 7), TMV("v49", 20),
   TMV("v5", 7), TMV("v50", 20), TMV("v51", 7), TMV("v52", 21),
   TMV("v53", 21), TMV("v54", 21), TMV("v55", 21), TMV("v56", 22),
   TMV("v57", 22), TMV("v58", 22), TMV("v59", 22), TMV("v6", 7),
   TMV("v60", 23), TMV("v61", 23), TMV("v62", 23), TMV("v63", 23),
   TMV("v64", 23), TMV("v65", 23), TMV("v66", 6), TMV("v67", 7),
   TMV("v68", 7), TMV("v69", 7), TMV("v7", 7), TMV("v70", 7),
   TMV("v71", 7), TMV("v72", 7), TMV("v73", 7), TMV("v74", 7),
   TMV("v75", 7), TMV("v76", 20), TMV("v77", 7), TMV("v78", 20),
   TMV("v79", 20), TMV("v8", 7), TMV("v8", 13), TMV("v80", 20),
   TMV("v81", 7), TMV("v82", 20), TMV("v83", 20), TMV("v84", 7),
   TMV("v85", 21), TMV("v86", 21), TMV("v87", 21), TMV("v88", 21),
   TMV("v89", 22), TMV("v9", 7), TMV("v90", 22), TMV("v91", 22),
   TMV("v92", 22), TMV("v93", 23), TMV("v94", 23), TMV("v95", 23),
   TMV("v96", 23), TMV("v97", 23), TMV("v98", 23), TMV("v99", 6),
   TMC(18, 27), TMC(18, 29), TMC(18, 31), TMC(18, 33), TMC(18, 35),
   TMC(18, 36), TMC(18, 38), TMC(18, 40), TMC(18, 42), TMC(18, 44),
   TMC(18, 46), TMC(18, 48), TMC(18, 50), TMC(18, 51), TMC(19, 53),
   TMC(20, 53), TMC(20, 54), TMC(20, 56), TMC(20, 57), TMC(21, 53),
   TMC(22, 59), TMC(23, 13), TMC(24, 13), TMC(25, 13), TMC(26, 61),
   TMC(27, 9), TMC(28, 9), TMC(29, 9), TMC(30, 62), TMC(31, 0), TMC(32, 7),
   TMC(33, 88), TMC(34, 52), TMC(35, 13), TMC(36, 13), TMC(37, 9),
   TMC(38, 9), TMC(39, 10), TMC(40, 6), TMC(41, 89), TMC(42, 90),
   TMC(43, 3), TMC(44, 16), TMC(45, 14), TMC(46, 91), TMC(47, 13),
   TMC(48, 3), TMC(49, 96), TMC(50, 97), TMC(51, 98), TMC(52, 0),
   TMC(53, 7), TMC(54, 58), TMC(55, 101), TMC(56, 103), TMC(57, 26),
   TMC(58, 26), TMC(59, 26), TMC(60, 104), TMC(61, 26), TMC(62, 105),
   TMC(63, 107), TMC(64, 109), TMC(65, 103), TMC(66, 107), TMC(67, 111),
   TMC(68, 109), TMC(69, 105), TMC(70, 103), TMC(71, 26), TMC(72, 8),
   TMC(73, 111), TMC(74, 111), TMC(75, 113), TMC(76, 26), TMC(77, 102),
   TMC(78, 103), TMC(79, 114), TMC(80, 113), TMC(81, 115), TMC(82, 104),
   TMC(83, 117), TMC(84, 105), TMC(85, 9), TMC(86, 9)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op inputOK_primitive_def x = x
    val op inputOK_primitive_def =
    ThmBind.DT(((("ssmPBIntegrated",8),[]),[]),
               [ThmBind.read"%182%236@%219%186%2%218$0@|@2%5%3%197$0@%198%195@2%198%195@2%92%198%195@|@%93%198%195@|@%94%95%198%195@||@%96%97%198%195@||@%98%100%198%195@||@%101%102%198%195@||@%103%104%197$0@%198%195@2%198%195@2%165%213$2@%56%198%216@|@%57%58%198%195@||@%60%61%198%195@||@|@%16%198%195@|@%17%18%198%195@||@%19%20%198%195@||@%21%22%198%195@||@%23%24%198%195@||@%25%27%198%195@||@%28%29%198%195@||@%30%31%198%195@||@%32%33%34%198%195@|||@%35%36%198%195@||@%38%39%198%195@||@%40%41%198%195@||@%42%43%198%195@||@%44%45%198%195@||@%46%47%198%195@||@%50%51%198%195@||@||@%105%106%198%195@||@%107%108%198%195@||@%109%111%112%198%195@|||@%113%114%198%195@||@%115%116%198%195@||@%117%118%198%195@||@%119%120%198%195@||@%122%123%198%195@||@%124%125%198%195@||@%126%127%198%195@||@||@2"])
  fun op PBNS_ind x = x
    val op PBNS_ind =
    ThmBind.DT(((("ssmPBIntegrated",2),
                [("OMNIType",[37]),("PBTypeIntegrated",[23,66,117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("option",[6]),("pair",[5,16]),
                 ("relation",[107,113]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%172%1%185%180$0%211@%233%190%215%214%210%225@4%203@4%180$0%199@%233%190%215%214%210%222@4%203@4%180$0%188@%233%190%215%214%210%240@4%203@4%180$0%200@%233%190%215%214%210%223@4%203@4%180$0%189@%233%190%215%214%210%221@4%203@4%180%178%6%173%10$2$1@%248$0@2|@|@2%180%178%6%173%12$2$1@%226$0@2|@|@2%180%178%144$1$0@%233%203@2|@2%180%178%26%173%15$2$1@%233%190%204@$0@3|@|@2%180%178%65%170%49%173%63$3$2@%233%190%215%194$1@3$0@3|@|@|@2%180$0%199@%233%190%215%214%210%225@4%203@4%180$0%188@%233%190%215%214%210%225@4%203@4%180$0%200@%233%190%215%214%210%225@4%203@4%180$0%189@%233%190%215%214%210%225@4%203@4%180$0%187@%233%190%215%214%210%225@4%203@4%180$0%211@%233%190%215%214%210%222@4%203@4%180$0%188@%233%190%215%214%210%222@4%203@4%180$0%200@%233%190%215%214%210%222@4%203@4%180$0%189@%233%190%215%214%210%222@4%203@4%180$0%187@%233%190%215%214%210%222@4%203@4%180$0%211@%233%190%215%214%210%240@4%203@4%180$0%199@%233%190%215%214%210%240@4%203@4%180$0%200@%233%190%215%214%210%240@4%203@4%180$0%189@%233%190%215%214%210%240@4%203@4%180$0%187@%233%190%215%214%210%240@4%203@4%180$0%211@%233%190%215%214%210%223@4%203@4%180$0%199@%233%190%215%214%210%223@4%203@4%180$0%188@%233%190%215%214%210%223@4%203@4%180$0%189@%233%190%215%214%210%223@4%203@4%180$0%187@%233%190%215%214%210%223@4%203@4%180$0%211@%233%190%215%214%210%221@4%203@4%180$0%199@%233%190%215%214%210%221@4%203@4%180$0%188@%233%190%215%214%210%221@4%203@4%180$0%200@%233%190%215%214%210%221@4%203@4%180$0%187@%233%190%215%214%210%221@4%203@4%180%178%78$1$0@%233%190%215%214%210%235@4%203@3|@2%180%178%82%177%80%176%74%173%76$4$3@%233%190%215%214%210$2@4%190$1@$0@4|@|@|@|@2%178%86%175%69%173%83$3$2@%233%190%215%214%206$1@4$0@3|@|@|@39%178%9%179%13$2$1@$0@|@|@2|@"])
  fun op PBNS_def x = x
    val op PBNS_def =
    ThmBind.DT(((("ssmPBIntegrated",3),
                [("OMNIType",[31]),("PBTypeIntegrated",[19,60,113]),
                 ("bool",[15,57]),("combin",[19]),("list",[6]),
                 ("option",[7]),("pair",[49]),("relation",[113,132]),
                 ("ssm",[8]),("ssmPBIntegrated",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%180%184%208%211@%233%190%215%214%210%225@4%203@4%199@2%180%184%208%199@%233%190%215%214%210%222@4%203@4%188@2%180%184%208%188@%233%190%215%214%210%240@4%203@4%200@2%180%184%208%200@%233%190%215%214%210%223@4%203@4%189@2%180%184%208%189@%233%190%215%214%210%221@4%203@4%187@2%180%184%208%6@%248%10@3%6@2%184%208%6@%226%12@3%6@7"])
  fun op PBOut_ind x = x
    val op PBOut_ind =
    ThmBind.DT(((("ssmPBIntegrated",6),
                [("OMNIType",[37]),("PBTypeIntegrated",[23,66,117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("option",[6]),("pair",[5,16]),
                 ("relation",[107,113]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%172%1%185%180$0%211@%233%190%215%214%210%225@4%203@4%180$0%199@%233%190%215%214%210%222@4%203@4%180$0%188@%233%190%215%214%210%240@4%203@4%180$0%200@%233%190%215%214%210%223@4%203@4%180$0%189@%233%190%215%214%210%221@4%203@4%180%178%6%173%10$2$1@%248$0@2|@|@2%180%178%6%173%12$2$1@%226$0@2|@|@2%180%178%144$1$0@%233%203@2|@2%180%178%26%173%15$2$1@%233%190%204@$0@3|@|@2%180%178%65%170%49%173%63$3$2@%233%190%215%194$1@3$0@3|@|@|@2%180$0%199@%233%190%215%214%210%225@4%203@4%180$0%188@%233%190%215%214%210%225@4%203@4%180$0%200@%233%190%215%214%210%225@4%203@4%180$0%189@%233%190%215%214%210%225@4%203@4%180$0%187@%233%190%215%214%210%225@4%203@4%180$0%211@%233%190%215%214%210%222@4%203@4%180$0%188@%233%190%215%214%210%222@4%203@4%180$0%200@%233%190%215%214%210%222@4%203@4%180$0%189@%233%190%215%214%210%222@4%203@4%180$0%187@%233%190%215%214%210%222@4%203@4%180$0%211@%233%190%215%214%210%240@4%203@4%180$0%199@%233%190%215%214%210%240@4%203@4%180$0%200@%233%190%215%214%210%240@4%203@4%180$0%189@%233%190%215%214%210%240@4%203@4%180$0%187@%233%190%215%214%210%240@4%203@4%180$0%211@%233%190%215%214%210%223@4%203@4%180$0%199@%233%190%215%214%210%223@4%203@4%180$0%188@%233%190%215%214%210%223@4%203@4%180$0%189@%233%190%215%214%210%223@4%203@4%180$0%187@%233%190%215%214%210%223@4%203@4%180$0%211@%233%190%215%214%210%221@4%203@4%180$0%199@%233%190%215%214%210%221@4%203@4%180$0%188@%233%190%215%214%210%221@4%203@4%180$0%200@%233%190%215%214%210%221@4%203@4%180$0%187@%233%190%215%214%210%221@4%203@4%180%178%78$1$0@%233%190%215%214%210%235@4%203@3|@2%180%178%82%177%80%176%74%173%76$4$3@%233%190%215%214%210$2@4%190$1@$0@4|@|@|@|@2%178%86%175%69%173%83$3$2@%233%190%215%214%206$1@4$0@3|@|@|@39%178%9%179%13$2$1@$0@|@|@2|@"])
  fun op PBOut_def x = x
    val op PBOut_def =
    ThmBind.DT(((("ssmPBIntegrated",7),
                [("OMNIType",[31]),("PBTypeIntegrated",[19,60,113]),
                 ("bool",[15,57]),("combin",[19]),("list",[6]),
                 ("option",[7]),("pair",[49]),("relation",[113,132]),
                 ("ssm",[8]),("ssmPBIntegrated",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%180%183%209%211@%233%190%215%214%210%225@4%203@4%201@2%180%183%209%199@%233%190%215%214%210%222@4%203@4%192@2%180%183%209%188@%233%190%215%214%210%240@4%203@4%202@2%180%183%209%200@%233%190%215%214%210%223@4%203@4%193@2%180%183%209%189@%233%190%215%214%210%221@4%203@4%191@2%180%183%209%6@%248%10@3%250@2%183%209%6@%226%12@3%249@7"])
  fun op inputOK_ind x = x
    val op inputOK_ind =
    ThmBind.DT(((("ssmPBIntegrated",9),
                [("PBTypeIntegrated",[90]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%171%0%185%180%176%4$1%246%205%212@2%243$0@3|@2%180%176%4$1%246%205%207@2%243$0@3|@2%180$0%217@2%180$0%196@2%180%176%8$1%243$0@2|@2%180%166%11$1%241$0@2|@2%180%166%70%166%88$2%220$1@$0@2|@|@2%180%166%99%166%110$2%242$1@$0@2|@|@2%180%166%121%166%132$2%234$1@$0@2|@|@2%180%166%143%166%155$2%229$1@$0@2|@|@2%180%168%14$1%246$0@%217@2|@2%180%168%14$1%246$0@%196@2|@2%180%168%52%168%53%176%128$3%246%239$2@$1@2%243$0@3|@|@|@2%180%168%54%168%55%176%128$3%246%244$2@$1@2%243$0@3|@|@|@2%180%168%14%166%129$2%246$1@%241$0@3|@|@2%180%168%14%166%130%166%131$3%246$2@%220$1@$0@3|@|@|@2%180%168%14%166%133%166%134$3%246$2@%242$1@$0@3|@|@|@2%180%168%14%166%135%166%136$3%246$2@%234$1@$0@3|@|@|@2%180%168%14%166%137%166%138$3%246$2@%229$1@$0@3|@|@|@2%180%168%14%168%139%166%140$3%246$2@%246$1@$0@3|@|@|@2%180%168%14%168%141%168%142$3%246$2@%247$1@$0@3|@|@|@2%180%168%14%168%145%166%146$3%246$2@%224$1@$0@3|@|@|@2%180%168%14%168%147%168%148%166%149$4%246$3@%245$2@$1@$0@3|@|@|@|@2%180%168%14%167%150%167%151$3%246$2@%227$1@$0@3|@|@|@2%180%168%14%167%152%167%153$3%246$2@%230$1@$0@3|@|@|@2%180%168%14%169%154%169%156$3%246$2@%228$1@$0@3|@|@|@2%180%168%14%169%157%169%158$3%246$2@%232$1@$0@3|@|@|@2%180%168%14%174%159%174%160$3%246$2@%231$1@$0@3|@|@|@2%180%168%14%174%161%174%162$3%246$2@%238$1@$0@3|@|@|@2%180%168%14%174%163%174%164$3%246$2@%237$1@$0@3|@|@|@2%180%168%37%168%48$2%247$1@$0@2|@|@2%180%168%59%166%62$2%224$1@$0@2|@|@2%180%168%64%168%66%166%67$3%245$2@$1@$0@2|@|@|@2%180%167%68%167%71$2%227$1@$0@2|@|@2%180%167%72%167%73$2%230$1@$0@2|@|@2%180%169%75%169%77$2%228$1@$0@2|@|@2%180%169%79%169%81$2%232$1@$0@2|@|@2%180%174%84%174%85$2%231$1@$0@2|@|@2%180%174%87%174%89$2%238$1@$0@2|@|@2%174%90%174%91$2%237$1@$0@2|@|@41%166%7$1$0@|@2|@"])
  fun op inputOK_def x = x
    val op inputOK_def =
    ThmBind.DT(((("ssmPBIntegrated",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),
                 ("ssmPBIntegrated",[8])]),["DISK_THM"]),
               [ThmBind.read"%180%181%236%246%205%212@2%243%4@4%216@2%180%181%236%246%205%207@2%243%4@4%216@2%180%181%236%217@2%195@2%180%181%236%196@2%195@2%180%181%236%243%8@3%195@2%180%181%236%241%11@3%195@2%180%181%236%220%70@%88@3%195@2%180%181%236%242%99@%110@3%195@2%180%181%236%234%121@%132@3%195@2%180%181%236%229%143@%155@3%195@2%180%181%236%246%14@%217@3%195@2%180%181%236%246%14@%196@3%195@2%180%181%236%246%239%52@%53@2%243%128@4%195@2%180%181%236%246%244%54@%55@2%243%128@4%195@2%180%181%236%246%14@%241%129@4%195@2%180%181%236%246%14@%220%130@%131@4%195@2%180%181%236%246%14@%242%133@%134@4%195@2%180%181%236%246%14@%234%135@%136@4%195@2%180%181%236%246%14@%229%137@%138@4%195@2%180%181%236%246%14@%246%139@%140@4%195@2%180%181%236%246%14@%247%141@%142@4%195@2%180%181%236%246%14@%224%145@%146@4%195@2%180%181%236%246%14@%245%147@%148@%149@4%195@2%180%181%236%246%14@%227%150@%151@4%195@2%180%181%236%246%14@%230%152@%153@4%195@2%180%181%236%246%14@%228%154@%156@4%195@2%180%181%236%246%14@%232%157@%158@4%195@2%180%181%236%246%14@%231%159@%160@4%195@2%180%181%236%246%14@%238%161@%162@4%195@2%180%181%236%246%14@%237%163@%164@4%195@2%180%181%236%247%37@%48@3%195@2%180%181%236%224%59@%62@3%195@2%180%181%236%245%64@%66@%67@3%195@2%180%181%236%227%68@%71@3%195@2%180%181%236%230%72@%73@3%195@2%180%181%236%228%75@%77@3%195@2%180%181%236%232%79@%81@3%195@2%180%181%236%231%84@%85@3%195@2%180%181%236%238%87@%89@3%195@2%181%236%237%90@%91@3%195@40"])

  val _ = DB.bindl "ssmPBIntegrated"
  [("inputOK_primitive_def",inputOK_primitive_def,DB.Def),
   ("PBNS_ind",PBNS_ind,DB.Thm), ("PBNS_def",PBNS_def,DB.Thm),
   ("PBOut_ind",PBOut_ind,DB.Thm), ("PBOut_def",PBOut_def,DB.Thm),
   ("inputOK_ind",inputOK_ind,DB.Thm), ("inputOK_def",inputOK_def,DB.Thm)]

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
    data = "OO4.PBNS4.%208OO5.PBOut4.%209OO7.inputOK4.%236"
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
