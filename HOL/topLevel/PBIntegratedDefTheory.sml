structure PBIntegratedDefTheory :> PBIntegratedDefTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading PBIntegratedDefTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open PBTypeIntegratedTheory aclfoundationTheory
  in end;
  val _ = Theory.link_parents
          ("PBIntegratedDef",
          Arbnum.fromString "1526502776",
          Arbnum.fromString "853199")
          [("PBTypeIntegrated",
           Arbnum.fromString "1526502772",
           Arbnum.fromString "930871"),
           ("aclfoundation",
           Arbnum.fromString "1526502736",
           Arbnum.fromString "334353")];
  val _ = Theory.incorporate_types "PBIntegratedDef" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("aclfoundation", "Form"),
   ID("PBTypeIntegrated", "stateRole"), ID("option", "option"),
   ID("OMNIType", "command"), ID("PBTypeIntegrated", "slCommand"),
   ID("PBTypeIntegrated", "omniCommand"),
   ID("PBTypeIntegrated", "slState"), ID("min", "bool"), ID("num", "num"),
   ID("aclfoundation", "Princ"), ID("aclfoundation", "IntLevel"),
   ID("aclfoundation", "SecLevel"), ID("OMNIType", "escCommand"),
   ID("PBTypeIntegrated", "plCommand"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("PBTypeIntegrated", "COMPLETE_PB"),
   ID("PBTypeIntegrated", "CONDUCT_ORP"),
   ID("PBTypeIntegrated", "CONDUCT_PB"), ID("list", "CONS"),
   ID("OMNIType", "ESCc"), ID("aclfoundation", "FF"),
   ID("aclfoundation", "Form_CASE"), ID("combin", "I"),
   ID("PBTypeIntegrated", "MOVE_TO_ORP"),
   ID("PBTypeIntegrated", "MOVE_TO_PB"), ID("list", "NIL"),
   ID("option", "NONE"), ID("aclfoundation", "Name"),
   ID("PBTypeIntegrated", "OMNI"), ID("PBTypeIntegrated", "Omni"),
   ID("PBTypeIntegrated", "PL"), ID("PBTypeIntegrated", "PLAN_PB"),
   ID("PBTypeIntegrated", "PlatoonLeader"),
   ID("aclfoundation", "Princ_CASE"), ID("OMNIType", "SLc"),
   ID("option", "SOME"), ID("aclfoundation", "TT"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("aclfoundation", "andf"),
   ID("OMNIType", "command_CASE"), ID("PBTypeIntegrated", "completePB"),
   ID("PBTypeIntegrated", "conductORP"),
   ID("PBTypeIntegrated", "conductPB"), ID("aclfoundation", "controls"),
   ID("PBTypeIntegrated", "crossLD"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"), ID("PBIntegratedDef", "getOmniCommand"),
   ID("aclfoundation", "impf"),
   ID("PBTypeIntegrated", "invalidOmniCommand"), ID("list", "list_CASE"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("PBTypeIntegrated", "moveToPB"),
   ID("aclfoundation", "notf"), ID("option", "option_CASE"),
   ID("aclfoundation", "orf"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("aclfoundation", "says"), ID("PBIntegratedDef", "secAuthorization"),
   ID("PBIntegratedDef", "secContext"), ID("PBIntegratedDef", "secHelper"),
   ID("PBTypeIntegrated", "slCommand_CASE"),
   ID("aclfoundation", "speaks_for"),
   ID("PBTypeIntegrated", "ssmConductORPComplete"),
   ID("PBTypeIntegrated", "ssmConductPBComplete"),
   ID("PBTypeIntegrated", "ssmMoveToORPComplete"),
   ID("PBTypeIntegrated", "ssmMoveToPBComplete"),
   ID("PBTypeIntegrated", "ssmPlanPBComplete"),
   ID("PBTypeIntegrated", "stateRole_CASE")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYV "'a", TYOP [3], TYOP [6], TYOP [5, 3], TYOP [4, 4],
   TYOP [2, 5, 2, 1, 0], TYOP [1, 6], TYOP [7], TYOP [0, 8, 7], TYV "'e",
   TYV "'d", TYOP [2, 5, 2, 11, 10], TYOP [1, 12], TYOP [0, 13, 13],
   TYOP [8], TYOP [0, 15, 14], TYOP [0, 13, 7], TYOP [0, 13, 8], TYOP [9],
   TYOP [0, 13, 19], TYOP [0, 15, 20], TYOP [0, 13, 20], TYOP [10],
   TYOP [11, 2], TYOP [12, 2, 11], TYOP [13, 2, 10], TYOP [14], TYOP [15],
   TYOP [0, 12, 19], TYOP [0, 29, 19], TYOP [0, 25, 19], TYOP [0, 31, 19],
   TYOP [0, 24, 19], TYOP [0, 33, 19], TYOP [0, 26, 19], TYOP [0, 35, 19],
   TYOP [0, 4, 19], TYOP [0, 37, 19], TYOP [0, 27, 19], TYOP [0, 39, 19],
   TYOP [0, 20, 19], TYOP [0, 41, 19], TYOP [0, 21, 19], TYOP [0, 43, 19],
   TYOP [0, 23, 19], TYOP [0, 45, 19], TYOP [0, 8, 19], TYOP [0, 47, 19],
   TYOP [0, 5, 19], TYOP [0, 49, 19], TYOP [0, 28, 19], TYOP [0, 51, 19],
   TYOP [0, 15, 19], TYOP [0, 53, 19], TYOP [0, 2, 19], TYOP [0, 55, 19],
   TYOP [0, 19, 19], TYOP [0, 19, 57], TYOP [0, 18, 19], TYOP [0, 18, 59],
   TYOP [0, 7, 19], TYOP [0, 7, 61], TYOP [0, 8, 47], TYOP [0, 22, 19],
   TYOP [0, 64, 22], TYOP [0, 7, 7], TYOP [0, 6, 66], TYOP [0, 12, 14],
   TYOP [0, 27, 4], TYOP [0, 23, 8], TYOP [0, 23, 70], TYOP [0, 71, 8],
   TYOP [0, 71, 72], TYOP [0, 71, 73], TYOP [0, 26, 8], TYOP [0, 26, 75],
   TYOP [0, 76, 74], TYOP [0, 76, 77], TYOP [0, 25, 8], TYOP [0, 25, 79],
   TYOP [0, 80, 78], TYOP [0, 80, 81], TYOP [0, 12, 8], TYOP [0, 24, 83],
   TYOP [0, 24, 84], TYOP [0, 85, 82], TYOP [0, 84, 86], TYOP [0, 24, 8],
   TYOP [0, 24, 88], TYOP [0, 89, 87], TYOP [0, 84, 90], TYOP [0, 12, 83],
   TYOP [0, 92, 91], TYOP [0, 92, 93], TYOP [0, 92, 94], TYOP [0, 92, 95],
   TYOP [0, 83, 96], TYOP [0, 5, 8], TYOP [0, 98, 97], TYOP [0, 8, 99],
   TYOP [0, 8, 100], TYOP [0, 12, 101], TYOP [0, 8, 8], TYOP [0, 2, 24],
   TYOP [0, 8, 3], TYOP [0, 28, 3], TYOP [0, 89, 8], TYOP [0, 89, 107],
   TYOP [0, 2, 8], TYOP [0, 109, 108], TYOP [0, 24, 110], TYOP [0, 3, 4],
   TYOP [0, 4, 5], TYOP [0, 18, 18], TYOP [0, 114, 18], TYOP [0, 22, 115],
   TYOP [0, 12, 12], TYOP [0, 12, 117], TYOP [0, 3, 8], TYOP [0, 119, 8],
   TYOP [0, 27, 8], TYOP [0, 121, 120], TYOP [0, 4, 122], TYOP [0, 6, 6],
   TYOP [0, 24, 124], TYOP [0, 24, 117], TYOP [0, 25, 12],
   TYOP [0, 25, 127], TYOP [0, 26, 12], TYOP [0, 26, 129],
   TYOP [0, 23, 12], TYOP [0, 23, 131], TYOP [0, 12, 18], TYOP [0, 133, 8],
   TYOP [0, 8, 134], TYOP [0, 13, 135], TYOP [0, 24, 24],
   TYOP [0, 24, 137], TYOP [0, 4, 8], TYOP [0, 139, 8], TYOP [0, 8, 140],
   TYOP [0, 5, 141], TYOP [0, 5, 6], TYOP [0, 5, 12], TYOP [0, 24, 126],
   TYOP [0, 103, 8], TYOP [0, 28, 8], TYOP [0, 147, 146], TYOP [0, 3, 148],
   TYOP [0, 24, 12], TYOP [0, 24, 150], TYOP [0, 8, 103], TYOP [0, 2, 152]]
  end
  val _ = Theory.incorporate_consts "PBIntegratedDef" tyvector
     [("secHelper", 9), ("secContext", 16), ("secAuthorization", 17),
      ("getOmniCommand", 18)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 20), TMV("P", 21), TMV("R", 22), TMV("a", 13), TMV("cmd", 8),
   TMV("getOmniCommand", 18), TMV("v", 12), TMV("v", 13), TMV("v", 15),
   TMV("v1", 13), TMV("v10", 12), TMV("v100", 23), TMV("v101", 5),
   TMV("v102", 12), TMV("v103", 12), TMV("v104", 12), TMV("v105", 12),
   TMV("v106", 12), TMV("v107", 12), TMV("v108", 12), TMV("v109", 12),
   TMV("v11", 12), TMV("v110", 12), TMV("v111", 24), TMV("v112", 12),
   TMV("v113", 24), TMV("v114", 24), TMV("v115", 24), TMV("v116", 12),
   TMV("v117", 24), TMV("v118", 24), TMV("v119", 12), TMV("v12", 24),
   TMV("v120", 25), TMV("v121", 25), TMV("v122", 25), TMV("v123", 25),
   TMV("v124", 26), TMV("v125", 26), TMV("v126", 26), TMV("v127", 26),
   TMV("v128", 23), TMV("v129", 23), TMV("v13", 12), TMV("v130", 23),
   TMV("v131", 23), TMV("v132", 23), TMV("v133", 23), TMV("v134", 2),
   TMV("v135", 24), TMV("v136", 24), TMV("v137", 24), TMV("v138", 24),
   TMV("v139", 2), TMV("v14", 24), TMV("v140", 24), TMV("v141", 24),
   TMV("v142", 24), TMV("v143", 24), TMV("v144", 4), TMV("v145", 4),
   TMV("v146", 27), TMV("v148", 27), TMV("v149", 3), TMV("v15", 24),
   TMV("v150", 28), TMV("v152", 28), TMV("v16", 24), TMV("v18", 24),
   TMV("v19", 24), TMV("v2", 5), TMV("v20", 12), TMV("v21", 25),
   TMV("v22", 25), TMV("v23", 25), TMV("v24", 25), TMV("v25", 26),
   TMV("v26", 26), TMV("v27", 26), TMV("v28", 26), TMV("v29", 23),
   TMV("v3", 12), TMV("v30", 23), TMV("v31", 23), TMV("v32", 23),
   TMV("v33", 23), TMV("v34", 23), TMV("v35", 5), TMV("v36", 12),
   TMV("v37", 12), TMV("v38", 12), TMV("v39", 12), TMV("v4", 12),
   TMV("v4", 15), TMV("v40", 12), TMV("v41", 12), TMV("v42", 12),
   TMV("v43", 12), TMV("v44", 12), TMV("v45", 24), TMV("v46", 12),
   TMV("v47", 24), TMV("v48", 24), TMV("v49", 24), TMV("v5", 12),
   TMV("v50", 12), TMV("v51", 24), TMV("v52", 24), TMV("v53", 12),
   TMV("v54", 25), TMV("v55", 25), TMV("v56", 25), TMV("v57", 25),
   TMV("v58", 26), TMV("v59", 26), TMV("v6", 12), TMV("v6", 13),
   TMV("v60", 26), TMV("v61", 26), TMV("v62", 23), TMV("v63", 23),
   TMV("v64", 23), TMV("v65", 23), TMV("v66", 23), TMV("v67", 23),
   TMV("v68", 5), TMV("v69", 12), TMV("v7", 12), TMV("v70", 12),
   TMV("v71", 12), TMV("v72", 12), TMV("v73", 12), TMV("v74", 12),
   TMV("v75", 12), TMV("v76", 12), TMV("v77", 12), TMV("v78", 24),
   TMV("v79", 12), TMV("v8", 12), TMV("v80", 24), TMV("v81", 24),
   TMV("v82", 24), TMV("v83", 12), TMV("v84", 24), TMV("v85", 24),
   TMV("v86", 12), TMV("v87", 25), TMV("v88", 25), TMV("v89", 25),
   TMV("v9", 12), TMV("v90", 25), TMV("v91", 26), TMV("v92", 26),
   TMV("v93", 26), TMV("v94", 26), TMV("v95", 23), TMV("v96", 23),
   TMV("v97", 23), TMV("v98", 23), TMV("v99", 23), TMV("x", 12),
   TMV("xs", 13), TMC(16, 30), TMC(16, 32), TMC(16, 34), TMC(16, 36),
   TMC(16, 38), TMC(16, 40), TMC(16, 42), TMC(16, 44), TMC(16, 41),
   TMC(16, 46), TMC(16, 48), TMC(16, 50), TMC(16, 52), TMC(16, 54),
   TMC(16, 56), TMC(17, 58), TMC(18, 60), TMC(18, 62), TMC(18, 22),
   TMC(18, 63), TMC(19, 58), TMC(20, 65), TMC(21, 15), TMC(22, 15),
   TMC(23, 15), TMC(24, 67), TMC(24, 68), TMC(25, 69), TMC(26, 12),
   TMC(27, 102), TMC(28, 103), TMC(29, 15), TMC(30, 15), TMC(31, 7),
   TMC(31, 13), TMC(32, 5), TMC(33, 104), TMC(34, 105), TMC(35, 2),
   TMC(36, 106), TMC(37, 15), TMC(38, 2), TMC(39, 111), TMC(40, 112),
   TMC(41, 113), TMC(42, 12), TMC(43, 64), TMC(44, 116), TMC(45, 118),
   TMC(46, 123), TMC(47, 28), TMC(48, 28), TMC(49, 28), TMC(50, 125),
   TMC(50, 126), TMC(51, 28), TMC(52, 128), TMC(53, 130), TMC(54, 118),
   TMC(55, 128), TMC(56, 132), TMC(57, 130), TMC(58, 18), TMC(59, 118),
   TMC(60, 8), TMC(61, 136), TMC(62, 132), TMC(63, 132), TMC(64, 138),
   TMC(65, 28), TMC(66, 117), TMC(67, 142), TMC(68, 118), TMC(69, 143),
   TMC(69, 144), TMC(70, 138), TMC(71, 145), TMC(72, 126), TMC(73, 17),
   TMC(74, 16), TMC(75, 9), TMC(76, 149), TMC(77, 151), TMC(78, 8),
   TMC(79, 8), TMC(80, 8), TMC(81, 8), TMC(82, 8), TMC(83, 153)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op secAuthorization_def x = x
    val op secAuthorization_def =
    ThmBind.DT(((("PBIntegratedDef",5),[]),[]),
               [ThmBind.read"%170%161%179%240$0@2%242%224$0@3|@"])
  fun op getOmniCommand_primitive_def x = x
    val op getOmniCommand_primitive_def =
    ThmBind.DT(((("PBIntegratedDef",2),[]),[]),
               [ThmBind.read"%178%224@%209%183%2%177%208$0@2%177%170%161$1$0@%188%207@$0@2|@2%177%170%161$1$0@%188%190@$0@2|@2%177%173%70%170%161$2$0@%188%236$1@2$0@2|@|@2%177%162%81%170%161$2$0@%188%232$1@2$0@2|@|@2%177%162%104%162%92%170%161$3$0@%188%210$1@$2@2$0@2|@|@|@2%177%162%127%162%115%170%161$3$0@%188%234$1@$2@2$0@2|@|@|@2%177%162%149%162%138%170%161$3$0@%188%225$1@$2@2$0@2|@|@|@2%177%162%21%162%10%170%161$3$0@%188%220$1@$2@2$0@2|@|@|@2%177%162%43%164%32%170%161$3$0@%188%239$1@$2@2$0@2|@|@|@2%177%164%64%164%54%170%161$3$0@%188%244$1@$2@2$0@2|@|@|@2%177%164%67%170%161$2$0@%188%216$1@%207@2$0@2|@|@2%177%164%67%170%161$2$0@%188%216$1@%190@2$0@2|@|@2%177%176%48%170%161$2$0@%188%216%198$1@2%236%197@3$0@2|@|@2%177%166%59%170%161$2$0@%188%216%198%203@2%236%206$1@4$0@2|@|@2%177%167%61%170%161$2$0@%188%216%198%200@2%236%206%189$1@5$0@2|@|@2%177%174%65%170%161$2$0@%188%216%198%200@2%236%206%205%201$1@6$0@2|@|@2%177%173%125%164%50%164%49%170%161$4$0@%188%216%230$1@$2@2%236$3@3$0@2|@|@|@|@2%177%173%125%164%52%164%51%170%161$4$0@%188%216%237$1@$2@2%236$3@3$0@2|@|@|@|@2%177%162%126%164%67%170%161$3$0@%188%216$1@%232$2@3$0@2|@|@|@2%177%162%129%162%128%164%67%170%161$4$0@%188%216$1@%210$2@$3@3$0@2|@|@|@|@2%177%162%131%162%130%164%67%170%161$4$0@%188%216$1@%234$2@$3@3$0@2|@|@|@|@2%177%162%133%162%132%164%67%170%161$4$0@%188%216$1@%225$2@$3@3$0@2|@|@|@|@2%177%162%135%162%134%164%67%170%161$4$0@%188%216$1@%220$2@$3@3$0@2|@|@|@|@2%177%162%137%164%136%164%67%170%161$4$0@%188%216$1@%239$2@$3@3$0@2|@|@|@|@2%177%164%140%164%139%164%67%170%161$4$0@%188%216$1@%244$2@$3@3$0@2|@|@|@|@2%177%162%142%164%141%164%67%170%161$4$0@%188%216$1@%216$2@$3@3$0@2|@|@|@|@2%177%162%145%164%144%164%143%164%67%170%161$5$0@%188%216$1@%238$2@$3@$4@3$0@2|@|@|@|@|@2%177%163%147%163%146%164%67%170%161$4$0@%188%216$1@%218$2@$3@3$0@2|@|@|@|@2%177%163%150%163%148%164%67%170%161$4$0@%188%216$1@%221$2@$3@3$0@2|@|@|@|@2%177%165%152%165%151%164%67%170%161$4$0@%188%216$1@%219$2@$3@3$0@2|@|@|@|@2%177%165%154%165%153%164%67%170%161$4$0@%188%216$1@%223$2@$3@3$0@2|@|@|@|@2%177%171%156%171%155%164%67%170%161$4$0@%188%216$1@%222$2@$3@3$0@2|@|@|@|@2%177%171%158%171%157%164%67%170%161$4$0@%188%216$1@%229$2@$3@3$0@2|@|@|@|@2%177%171%11%171%159%164%67%170%161$4$0@%188%216$1@%228$2@$3@3$0@2|@|@|@|@2%177%162%71%164%69%164%68%170%161$4$0@%188%238$1@$2@$3@2$0@2|@|@|@|@2%177%163%73%163%72%170%161$3$0@%188%218$1@$2@2$0@2|@|@|@2%177%163%75%163%74%170%161$3$0@%188%221$1@$2@2$0@2|@|@|@2%177%165%77%165%76%170%161$3$0@%188%219$1@$2@2$0@2|@|@|@2%177%165%79%165%78%170%161$3$0@%188%223$1@$2@2$0@2|@|@|@2%177%171%82%171%80%170%161$3$0@%188%222$1@$2@2$0@2|@|@|@2%177%171%84%171%83%170%161$3$0@%188%229$1@$2@2$0@2|@|@|@2%171%86%171%85%170%161$3$0@%188%228$1@$2@2$0@2|@|@|@43|@2%5%3%227$0@%192%226@2%6%161%191$1@%192$3$0@3%192$3$0@3%87%192$4$1@2|@%88%192$4$1@2|@%89%90%192$5$2@2||@%91%94%192$5$2@2||@%95%96%192$5$2@2||@%97%98%192$5$2@2||@%99%100%192$5$2@2||@%101%102%192$5$2@2||@%103%105%191$0@%192$5$2@3%192$5$2@3%12%204$2@%53%233$1@%192$7$4@3%60%250$1@%192$8$5@3%211$0@%62%192$9$6@2|@%63%243$0@%66%192$10$7@2|@%4%192$0@|@|@2|@|@%55%56%192$8$5@2||@%57%58%192$8$5@2||@|@%13%192$6$3@2|@%14%15%192$7$4@2||@%16%17%192$7$4@2||@%18%19%192$7$4@2||@%20%22%192$7$4@2||@%23%24%192$7$4@2||@%25%26%192$7$4@2||@%27%28%192$7$4@2||@%29%30%31%192$8$5@2|||@%33%34%192$7$4@2||@%35%36%192$7$4@2||@%37%38%192$7$4@2||@%39%40%192$7$4@2||@%41%42%192$7$4@2||@%44%45%192$7$4@2||@%46%47%192$7$4@2||@||@%106%107%108%192$6$3@2|||@%109%110%192$5$2@2||@%111%112%192$5$2@2||@%113%114%192$5$2@2||@%117%118%192$5$2@2||@%119%120%192$5$2@2||@%121%122%192$5$2@2||@%123%124%192$5$2@2||@||@||@2"])
  fun op secHelper_def x = x
    val op secHelper_def =
    ThmBind.DT(((("PBIntegratedDef",1),[]),[]),
               [ThmBind.read"%172%4%179%242$0@2%187%215%198%200@2%235%206%205%199$0@6%195@2|@"])
  fun op secContext_ind x = x
    val op secContext_ind =
    ThmBind.DT(((("PBIntegratedDef",8),
                [("PBTypeIntegrated",[117]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%169%1%182%177%162%160%170%161$2%202@%188$1@$0@2|@|@2%177%162%160%170%161$2%193@%188$1@$0@2|@|@2%177%162%160%170%161$2%185@%188$1@$0@2|@|@2%177%162%160%170%161$2%194@%188$1@$0@2|@|@2%177%162%160%170%161$2%186@%188$1@$0@2|@|@2%177%175%93$1$0@%196@|@2%162%104%170%116$2%184@%188$1@$0@2|@|@8%175%8%170%9$2$1@$0@|@|@2|@"])
  fun op getOmniCommand_def x = x
    val op getOmniCommand_def =
    ThmBind.DT(((("PBIntegratedDef",4),
                [("OMNIType",[15,31,32]),("PBIntegratedDef",[2]),
                 ("PBTypeIntegrated",[17,60,61,84,86]),
                 ("aclfoundation",[33,34,110,111]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",[15,25,35,50,51,53,57,62,92,95,103,104,106]),
                 ("combin",[19]),("list",[6,7]),("numeral",[0,3,5,7,8]),
                 ("option",[7]),("prim_rec",[42]),
                 ("relation",[119,121,127,132]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%177%181%224%196@2%226@2%177%170%161%172%4%181%224%188%216%198%200@2%236%206%205%199$0@6$1@3$0@|@|@2%177%170%161%181%224%188%207@$0@3%224$0@2|@2%177%170%161%181%224%188%190@$0@3%224$0@2|@2%177%170%161%173%70%181%224%188%236$0@2$1@3%224$1@2|@|@2%177%170%161%162%81%181%224%188%232$0@2$1@3%224$1@2|@|@2%177%170%161%162%104%162%92%181%224%188%210$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%162%127%162%115%181%224%188%234$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%162%149%162%138%181%224%188%225$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%162%21%162%10%181%224%188%220$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%162%43%164%32%181%224%188%239$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%164%64%164%54%181%224%188%244$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%164%67%181%224%188%216$0@%207@2$1@3%224$1@2|@|@2%177%170%161%164%67%181%224%188%216$0@%190@2$1@3%224$1@2|@|@2%177%170%161%176%48%181%224%188%216%198$0@2%236%197@3$1@3%224$1@2|@|@2%177%170%161%166%59%181%224%188%216%198%203@2%236%206$0@4$1@3%224$1@2|@|@2%177%170%161%167%61%181%224%188%216%198%200@2%236%206%189$0@5$1@3%224$1@2|@|@2%177%170%161%174%65%181%224%188%216%198%200@2%236%206%205%201$0@6$1@3%224$1@2|@|@2%177%170%161%173%125%164%50%164%49%181%224%188%216%230$0@$1@2%236$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%173%125%164%52%164%51%181%224%188%216%237$0@$1@2%236$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%126%164%67%181%224%188%216$0@%232$1@3$2@3%224$2@2|@|@|@2%177%170%161%162%129%162%128%164%67%181%224%188%216$0@%210$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%131%162%130%164%67%181%224%188%216$0@%234$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%133%162%132%164%67%181%224%188%216$0@%225$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%135%162%134%164%67%181%224%188%216$0@%220$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%137%164%136%164%67%181%224%188%216$0@%239$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%164%140%164%139%164%67%181%224%188%216$0@%244$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%142%164%141%164%67%181%224%188%216$0@%216$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%145%164%144%164%143%164%67%181%224%188%216$0@%238$1@$2@$3@3$4@3%224$4@2|@|@|@|@|@2%177%170%161%163%147%163%146%164%67%181%224%188%216$0@%218$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%163%150%163%148%164%67%181%224%188%216$0@%221$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%165%152%165%151%164%67%181%224%188%216$0@%219$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%165%154%165%153%164%67%181%224%188%216$0@%223$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%171%156%171%155%164%67%181%224%188%216$0@%222$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%171%158%171%157%164%67%181%224%188%216$0@%229$1@$2@3$3@3%224$3@2|@|@|@|@2%177%170%161%171%159%164%67%171%11%181%224%188%216$1@%228$2@$0@3$3@3%224$3@2|@|@|@|@2%177%170%161%162%71%164%69%164%68%181%224%188%238$0@$1@$2@2$3@3%224$3@2|@|@|@|@2%177%170%161%163%73%163%72%181%224%188%218$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%163%75%163%74%181%224%188%221$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%165%77%165%76%181%224%188%219$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%165%79%165%78%181%224%188%223$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%171%82%171%80%181%224%188%222$0@$1@2$2@3%224$2@2|@|@|@2%177%170%161%171%84%171%83%181%224%188%229$0@$1@2$2@3%224$2@2|@|@|@2%170%161%171%86%171%85%181%224%188%228$0@$1@2$2@3%224$2@2|@|@|@44"])
  fun op getOmniCommand_ind x = x
    val op getOmniCommand_ind =
    ThmBind.DT(((("PBIntegratedDef",3),
                [("OMNIType",[15,32,37]),
                 ("PBTypeIntegrated",[17,61,66,84,90]),
                 ("aclfoundation",[34,55,111,116]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",
                 [25,26,35,46,47,50,51,52,53,57,62,71,75,76,77,79,92,95,
                  103,104,106]),("list",[7,46]),("numeral",[0,3,5,7,8]),
                 ("option",[6]),("prim_rec",[42]),
                 ("relation",[107,119,121]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%168%0%182%177$0%196@2%177%172%4%170%161$2%188%216%198%200@2%236%206%205%199$1@6$0@2|@|@2%177%170%161%182$1$0@2$1%188%207@$0@3|@2%177%170%161%182$1$0@2$1%188%190@$0@3|@2%177%173%70%170%161%182$2$0@2$2%188%236$1@2$0@3|@|@2%177%162%81%170%161%182$2$0@2$2%188%232$1@2$0@3|@|@2%177%162%92%162%104%170%161%182$3$0@2$3%188%210$2@$1@2$0@3|@|@|@2%177%162%115%162%127%170%161%182$3$0@2$3%188%234$2@$1@2$0@3|@|@|@2%177%162%138%162%149%170%161%182$3$0@2$3%188%225$2@$1@2$0@3|@|@|@2%177%162%10%162%21%170%161%182$3$0@2$3%188%220$2@$1@2$0@3|@|@|@2%177%164%32%162%43%170%161%182$3$0@2$3%188%239$2@$1@2$0@3|@|@|@2%177%164%54%164%64%170%161%182$3$0@2$3%188%244$2@$1@2$0@3|@|@|@2%177%164%67%170%161%182$2$0@2$2%188%216$1@%207@2$0@3|@|@2%177%164%67%170%161%182$2$0@2$2%188%216$1@%190@2$0@3|@|@2%177%176%48%170%161%182$2$0@2$2%188%216%198$1@2%236%197@3$0@3|@|@2%177%166%59%170%161%182$2$0@2$2%188%216%198%203@2%236%206$1@4$0@3|@|@2%177%167%61%170%161%182$2$0@2$2%188%216%198%200@2%236%206%189$1@5$0@3|@|@2%177%174%65%170%161%182$2$0@2$2%188%216%198%200@2%236%206%205%201$1@6$0@3|@|@2%177%164%49%164%50%173%125%170%161%182$4$0@2$4%188%216%230$3@$2@2%236$1@3$0@3|@|@|@|@2%177%164%51%164%52%173%125%170%161%182$4$0@2$4%188%216%237$3@$2@2%236$1@3$0@3|@|@|@|@2%177%164%67%162%126%170%161%182$3$0@2$3%188%216$2@%232$1@3$0@3|@|@|@2%177%164%67%162%128%162%129%170%161%182$4$0@2$4%188%216$3@%210$2@$1@3$0@3|@|@|@|@2%177%164%67%162%130%162%131%170%161%182$4$0@2$4%188%216$3@%234$2@$1@3$0@3|@|@|@|@2%177%164%67%162%132%162%133%170%161%182$4$0@2$4%188%216$3@%225$2@$1@3$0@3|@|@|@|@2%177%164%67%162%134%162%135%170%161%182$4$0@2$4%188%216$3@%220$2@$1@3$0@3|@|@|@|@2%177%164%67%164%136%162%137%170%161%182$4$0@2$4%188%216$3@%239$2@$1@3$0@3|@|@|@|@2%177%164%67%164%139%164%140%170%161%182$4$0@2$4%188%216$3@%244$2@$1@3$0@3|@|@|@|@2%177%164%67%164%141%162%142%170%161%182$4$0@2$4%188%216$3@%216$2@$1@3$0@3|@|@|@|@2%177%164%67%164%143%164%144%162%145%170%161%182$5$0@2$5%188%216$4@%238$3@$2@$1@3$0@3|@|@|@|@|@2%177%164%67%163%146%163%147%170%161%182$4$0@2$4%188%216$3@%218$2@$1@3$0@3|@|@|@|@2%177%164%67%163%148%163%150%170%161%182$4$0@2$4%188%216$3@%221$2@$1@3$0@3|@|@|@|@2%177%164%67%165%151%165%152%170%161%182$4$0@2$4%188%216$3@%219$2@$1@3$0@3|@|@|@|@2%177%164%67%165%153%165%154%170%161%182$4$0@2$4%188%216$3@%223$2@$1@3$0@3|@|@|@|@2%177%164%67%171%155%171%156%170%161%182$4$0@2$4%188%216$3@%222$2@$1@3$0@3|@|@|@|@2%177%164%67%171%157%171%158%170%161%182$4$0@2$4%188%216$3@%229$2@$1@3$0@3|@|@|@|@2%177%164%67%171%159%171%11%170%161%182$4$0@2$4%188%216$3@%228$2@$1@3$0@3|@|@|@|@2%177%164%68%164%69%162%71%170%161%182$4$0@2$4%188%238$3@$2@$1@2$0@3|@|@|@|@2%177%163%72%163%73%170%161%182$3$0@2$3%188%218$2@$1@2$0@3|@|@|@2%177%163%74%163%75%170%161%182$3$0@2$3%188%221$2@$1@2$0@3|@|@|@2%177%165%76%165%77%170%161%182$3$0@2$3%188%219$2@$1@2$0@3|@|@|@2%177%165%78%165%79%170%161%182$3$0@2$3%188%223$2@$1@2$0@3|@|@|@2%177%171%80%171%82%170%161%182$3$0@2$3%188%222$2@$1@2$0@3|@|@|@2%177%171%83%171%84%170%161%182$3$0@2$3%188%229$2@$1@2$0@3|@|@|@2%171%85%171%86%170%161%182$3$0@2$3%188%228$2@$1@2$0@3|@|@|@45%170%7$1$0@|@2|@"])
  fun op secContext_def x = x
    val op secContext_def =
    ThmBind.DT(((("PBIntegratedDef",9),
                [("PBIntegratedDef",[6,7]),("PBTypeIntegrated",[113]),
                 ("bool",[15,57]),("combin",[19]),("list",[6]),
                 ("pair",[49]),("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%177%180%241%202@%188%160@%161@3%188%225%236%206%205%199%249@5%216%198%203@2%236%206%205%201%217@7%196@3%177%180%241%193@%188%160@%161@3%188%225%236%206%205%199%247@5%216%198%203@2%236%206%205%201%213@7%196@3%177%180%241%185@%188%160@%161@3%188%225%236%206%205%199%245@5%216%198%203@2%236%206%205%201%231@7%196@3%177%180%241%194@%188%160@%161@3%188%225%236%206%205%199%248@5%216%198%203@2%236%206%205%201%214@7%196@3%180%241%186@%188%160@%161@3%188%225%236%206%205%199%246@5%216%198%203@2%236%206%205%201%212@7%196@6"])

  val _ = DB.bindl "PBIntegratedDef"
  [("secAuthorization_def",secAuthorization_def,DB.Def),
   ("getOmniCommand_primitive_def",getOmniCommand_primitive_def,DB.Def),
   ("secHelper_def",secHelper_def,DB.Def),
   ("secContext_ind",secContext_ind,DB.Thm),
   ("getOmniCommand_def",getOmniCommand_def,DB.Thm),
   ("getOmniCommand_ind",getOmniCommand_ind,DB.Thm),
   ("secContext_def",secContext_def,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "PBIntegratedDef",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "PBIntegratedDef.getOmniCommand_def PBIntegratedDef.secAuthorization_def PBIntegratedDef.secContext_def PBIntegratedDef.secHelper_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "PBIntegratedDef",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO9.secHelper4.%242OO14.getOmniCommand4.%224OO16.secAuthorization4.%240OO10.secContext4.%241"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val PBIntegratedDef_grammars = merge_grammars ["PBTypeIntegrated",
                                                 "aclfoundation"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="PBIntegratedDef"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val PBIntegratedDef_grammars = 
    Portable.## (addtyUDs,addtmUDs) PBIntegratedDef_grammars
  val _ = Parse.grammarDB_insert("PBIntegratedDef",PBIntegratedDef_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "PBIntegratedDef"
end