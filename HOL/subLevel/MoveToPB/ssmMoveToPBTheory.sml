structure ssmMoveToPBTheory :> ssmMoveToPBTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ssmMoveToPBTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open MoveToPBTypeTheory OMNITypeTheory ssm11Theory
  in end;
  val _ = Theory.link_parents
          ("ssmMoveToPB",
          Arbnum.fromString "1526502825",
          Arbnum.fromString "540356")
          [("MoveToPBType",
           Arbnum.fromString "1526502822",
           Arbnum.fromString "972979"),
           ("ssm11",
           Arbnum.fromString "1526502756",
           Arbnum.fromString "497196"),
           ("OMNIType",
           Arbnum.fromString "1526502768",
           Arbnum.fromString "51917")];
  val _ = Theory.incorporate_types "ssmMoveToPB" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("aclfoundation", "Form"),
   ID("MoveToPBType", "stateRole"), ID("ssm11", "order"),
   ID("OMNIType", "command"), ID("MoveToPBType", "slCommand"),
   ID("OMNIType", "state"), ID("MoveToPBType", "slState"),
   ID("list", "list"), ID("MoveToPBType", "slOutput"),
   ID("ssm11", "trType"), ID("min", "bool"), ID("aclfoundation", "Kripke"),
   ID("aclfoundation", "po"), ID("OMNIType", "output"),
   ID("aclfoundation", "Princ"), ID("aclfoundation", "IntLevel"),
   ID("OMNIType", "escCommand"), ID("aclfoundation", "SecLevel"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("pair", "prod"),
   ID("bool", "/\\"), ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("ssm11", "CFG"), ID("ssm11", "configuration"),
   ID("ssm11", "CFGInterpret"), ID("MoveToPBType", "COMPLETE"),
   ID("list", "CONS"), ID("MoveToPBType", "Complete"),
   ID("OMNIType", "ESCc"), ID("bool", "F"), ID("aclfoundation", "FF"),
   ID("aclfoundation", "Form_CASE"), ID("combin", "I"),
   ID("MoveToPBType", "MOVE_TO_PB"), ID("MoveToPBType", "MoveToPB"),
   ID("list", "NIL"), ID("aclfoundation", "Name"),
   ID("MoveToPBType", "PLTForm"), ID("MoveToPBType", "PLTHalt"),
   ID("MoveToPBType", "PLTMove"), ID("MoveToPBType", "PLT_FORM"),
   ID("MoveToPBType", "PLT_HALT"), ID("MoveToPBType", "PLT_MOVE"),
   ID("MoveToPBType", "PlatoonLeader"), ID("aclfoundation", "Princ_CASE"),
   ID("OMNIType", "SLc"), ID("ssm11", "SOME"), ID("bool", "T"),
   ID("ssm11", "TR"), ID("aclfoundation", "TT"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("aclfoundation", "andf"),
   ID("ssmMoveToPB", "authTestMoveToPB"), ID("MoveToPBType", "complete"),
   ID("aclfoundation", "controls"), ID("ssm11", "discard"),
   ID("aclfoundation", "domi"), ID("aclfoundation", "doms"),
   ID("aclfoundation", "eqf"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("ssm11", "exec"), ID("aclfoundation", "impf"),
   ID("MoveToPBType", "incomplete"), ID("aclfoundation", "lt"),
   ID("aclfoundation", "lte"), ID("aclfoundation", "meet"),
   ID("ssmMoveToPB", "moveToPBNS"), ID("ssmMoveToPB", "moveToPBOut"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("MoveToPBType", "pltForm"), ID("MoveToPBType", "pltHalt"),
   ID("MoveToPBType", "pltMove"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("ssmMoveToPB", "secContextMoveToPB"),
   ID("aclfoundation", "speaks_for"),
   ID("ssmMoveToPB", "ssmMoveToPBStateInterp"), ID("ssm11", "trap"),
   ID("MoveToPBType", "unAuthenticated"),
   ID("MoveToPBType", "unAuthorized"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [2], TYOP [5], TYOP [4, 3], TYOP [3, 4],
   TYOP [1, 5, 2, 1, 0], TYOP [7], TYOP [6, 7], TYOP [0, 8, 6],
   TYOP [8, 6], TYOP [0, 3, 10], TYOP [9], TYOP [10, 4], TYOP [0, 13, 12],
   TYOP [0, 7, 14], TYOP [0, 13, 7], TYOP [0, 7, 16], TYOP [11],
   TYOP [0, 6, 18], TYV "'b", TYOP [12, 5, 20, 2, 1, 0], TYOP [0, 13, 8],
   TYOP [0, 8, 22], TYOP [13, 1], TYOP [13, 0], TYOP [14, 12],
   TYOP [0, 13, 26], TYOP [0, 8, 27], TYOP [0, 13, 18], TYOP [0, 7, 29],
   TYOP [0, 6, 19], TYOP [8, 26], TYOP [15, 2], TYOP [16, 2, 1], TYOP [17],
   TYOP [18, 2, 0], TYOP [19], TYOP [0, 19, 18], TYOP [0, 34, 18],
   TYOP [0, 39, 18], TYOP [0, 21, 18], TYOP [0, 41, 18], TYOP [0, 33, 18],
   TYOP [0, 43, 18], TYOP [0, 36, 18], TYOP [0, 45, 18], TYOP [0, 4, 18],
   TYOP [0, 47, 18], TYOP [0, 35, 18], TYOP [0, 49, 18], TYOP [0, 38, 18],
   TYOP [0, 30, 18], TYOP [0, 52, 18], TYOP [0, 28, 18], TYOP [0, 54, 18],
   TYOP [0, 23, 18], TYOP [0, 56, 18], TYOP [0, 37, 18], TYOP [0, 58, 18],
   TYOP [0, 5, 18], TYOP [0, 60, 18], TYOP [0, 24, 18], TYOP [0, 62, 18],
   TYOP [0, 25, 18], TYOP [0, 64, 18], TYOP [0, 3, 18], TYOP [0, 66, 18],
   TYOP [0, 7, 18], TYOP [0, 68, 18], TYOP [0, 8, 18], TYOP [0, 70, 18],
   TYOP [0, 29, 18], TYOP [22, 24, 25], TYOP [22, 21, 73],
   TYOP [0, 73, 74], TYOP [0, 21, 75], TYOP [0, 25, 73], TYOP [0, 24, 77],
   TYOP [0, 18, 18], TYOP [0, 18, 79], TYOP [0, 19, 38], TYOP [0, 10, 18],
   TYOP [0, 10, 82], TYOP [0, 12, 18], TYOP [0, 12, 84], TYOP [0, 7, 68],
   TYOP [0, 31, 18], TYOP [0, 87, 31], TYOP [28, 4, 1, 0, 26, 2, 8],
   TYOP [0, 32, 89], TYOP [0, 8, 90], TYOP [0, 10, 91], TYOP [0, 10, 92],
   TYOP [0, 9, 93], TYOP [0, 19, 94], TYOP [0, 89, 18], TYOP [0, 74, 96],
   TYOP [0, 10, 10], TYOP [0, 6, 98], TYOP [0, 32, 32], TYOP [0, 26, 100],
   TYOP [0, 35, 4], TYOP [0, 37, 58], TYOP [0, 103, 18],
   TYOP [0, 103, 104], TYOP [0, 103, 105], TYOP [0, 36, 45],
   TYOP [0, 107, 106], TYOP [0, 107, 108], TYOP [0, 34, 39],
   TYOP [0, 110, 109], TYOP [0, 110, 111], TYOP [0, 33, 19],
   TYOP [0, 33, 113], TYOP [0, 114, 112], TYOP [0, 113, 115],
   TYOP [0, 33, 43], TYOP [0, 117, 116], TYOP [0, 113, 118],
   TYOP [0, 31, 119], TYOP [0, 31, 120], TYOP [0, 31, 121],
   TYOP [0, 31, 122], TYOP [0, 19, 123], TYOP [0, 60, 124],
   TYOP [0, 18, 125], TYOP [0, 18, 126], TYOP [0, 6, 127], TYOP [0, 2, 33],
   TYOP [0, 117, 18], TYOP [0, 117, 130], TYOP [0, 2, 18],
   TYOP [0, 132, 131], TYOP [0, 33, 133], TYOP [0, 3, 4], TYOP [0, 4, 5],
   TYOP [0, 89, 96], TYOP [0, 13, 137], TYOP [0, 74, 138],
   TYOP [0, 19, 19], TYOP [0, 140, 19], TYOP [0, 31, 141], TYOP [0, 6, 6],
   TYOP [0, 6, 143], TYOP [0, 33, 143], TYOP [0, 4, 13], TYOP [0, 34, 6],
   TYOP [0, 34, 147], TYOP [0, 36, 6], TYOP [0, 36, 149], TYOP [0, 37, 6],
   TYOP [0, 37, 151], TYOP [0, 33, 33], TYOP [0, 33, 153], TYOP [0, 5, 6],
   TYOP [0, 33, 145], TYOP [0, 74, 19], TYOP [0, 33, 6], TYOP [0, 33, 158]]
  end
  val _ = Theory.incorporate_consts "ssmMoveToPB" tyvector
     [("ssmMoveToPBStateInterp", 9), ("secContextMoveToPB", 11),
      ("moveToPBOut", 15), ("moveToPBNS", 17), ("authTestMoveToPB", 19)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 21), TMV("NS", 23), TMV("Oi", 24), TMV("Os", 25),
   TMV("Out", 28), TMV("P", 19), TMV("P", 30), TMV("R", 31), TMV("a", 6),
   TMV("authTestMoveToPB", 19), TMV("cmd", 4), TMV("cmd", 5),
   TMV("cmd", 3), TMV("ins", 10), TMV("outs", 32), TMV("s", 7),
   TMV("s", 8), TMV("slCommand", 3), TMV("state", 8), TMV("v", 6),
   TMV("v", 5), TMV("v", 7), TMV("v1", 6), TMV("v1", 13), TMV("v10", 33),
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
   TMV("v22", 34), TMV("v23", 36), TMV("v23", 4), TMV("v24", 36),
   TMV("v25", 36), TMV("v26", 36), TMV("v27", 37), TMV("v28", 37),
   TMV("v29", 37), TMV("v3", 6), TMV("v30", 37), TMV("v31", 37),
   TMV("v32", 37), TMV("v33", 5), TMV("v34", 6), TMV("v35", 6),
   TMV("v36", 6), TMV("v37", 6), TMV("v38", 6), TMV("v39", 6),
   TMV("v4", 6), TMV("v40", 6), TMV("v41", 6), TMV("v42", 6),
   TMV("v43", 33), TMV("v44", 6), TMV("v45", 33), TMV("v46", 33),
   TMV("v47", 33), TMV("v48", 6), TMV("v49", 33), TMV("v5", 6),
   TMV("v50", 33), TMV("v51", 6), TMV("v52", 34), TMV("v53", 34),
   TMV("v54", 34), TMV("v55", 34), TMV("v56", 36), TMV("v57", 36),
   TMV("v58", 36), TMV("v59", 36), TMV("v6", 6), TMV("v6", 35),
   TMV("v60", 37), TMV("v61", 37), TMV("v62", 37), TMV("v63", 37),
   TMV("v64", 37), TMV("v65", 37), TMV("v66", 5), TMV("v67", 6),
   TMV("v68", 6), TMV("v69", 6), TMV("v7", 6), TMV("v70", 6),
   TMV("v71", 6), TMV("v72", 6), TMV("v73", 6), TMV("v74", 6),
   TMV("v75", 6), TMV("v76", 33), TMV("v77", 6), TMV("v78", 33),
   TMV("v79", 33), TMV("v8", 6), TMV("v80", 33), TMV("v81", 6),
   TMV("v82", 33), TMV("v83", 33), TMV("v84", 6), TMV("v85", 34),
   TMV("v86", 34), TMV("v87", 34), TMV("v88", 34), TMV("v89", 36),
   TMV("v9", 6), TMV("v9", 35), TMV("v90", 36), TMV("v91", 36),
   TMV("v92", 36), TMV("v93", 37), TMV("v94", 37), TMV("v95", 37),
   TMV("v96", 37), TMV("v97", 37), TMV("v98", 37), TMV("v99", 5),
   TMC(20, 38), TMC(20, 40), TMC(20, 42), TMC(20, 44), TMC(20, 46),
   TMC(20, 48), TMC(20, 50), TMC(20, 51), TMC(20, 53), TMC(20, 55),
   TMC(20, 57), TMC(20, 59), TMC(20, 61), TMC(20, 63), TMC(20, 65),
   TMC(20, 67), TMC(20, 69), TMC(20, 71), TMC(20, 72), TMC(21, 76),
   TMC(21, 78), TMC(23, 80), TMC(24, 31), TMC(24, 80), TMC(24, 81),
   TMC(24, 83), TMC(24, 85), TMC(24, 86), TMC(25, 80), TMC(26, 88),
   TMC(27, 95), TMC(29, 97), TMC(30, 7), TMC(31, 99), TMC(31, 101),
   TMC(32, 12), TMC(33, 102), TMC(34, 18), TMC(35, 6), TMC(36, 128),
   TMC(37, 79), TMC(38, 7), TMC(39, 12), TMC(40, 10), TMC(41, 129),
   TMC(42, 12), TMC(43, 12), TMC(44, 12), TMC(45, 7), TMC(46, 7),
   TMC(47, 7), TMC(48, 2), TMC(49, 134), TMC(50, 135), TMC(51, 136),
   TMC(52, 18), TMC(53, 139), TMC(54, 6), TMC(55, 87), TMC(56, 142),
   TMC(57, 144), TMC(58, 19), TMC(59, 3), TMC(60, 145), TMC(61, 146),
   TMC(62, 148), TMC(63, 150), TMC(64, 144), TMC(65, 148), TMC(66, 152),
   TMC(67, 150), TMC(68, 146), TMC(69, 144), TMC(70, 3), TMC(71, 152),
   TMC(72, 152), TMC(73, 154), TMC(74, 17), TMC(75, 15), TMC(76, 143),
   TMC(77, 144), TMC(78, 3), TMC(79, 3), TMC(80, 3), TMC(81, 155),
   TMC(82, 154), TMC(83, 156), TMC(84, 157), TMC(85, 145), TMC(86, 11),
   TMC(87, 159), TMC(88, 9), TMC(89, 146), TMC(90, 12), TMC(91, 12),
   TMC(92, 79)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op authTestMoveToPB_primitive_def x = x
    val op authTestMoveToPB_primitive_def =
    ThmBind.DT(((("ssmMoveToPB",8),[]),[]),
               [ThmBind.read"%193%230@%228%198%7%227$0@|@2%9%8%208$0@%209%206@2%209%206@2%94%209%206@|@%95%209%206@|@%96%97%209%206@||@%98%99%209%206@||@%100%102%209%206@||@%103%104%209%206@||@%105%106%208$0@%209%206@2%209%206@2%168%221$2@%64%209%224@|@%65%66%209%206@||@%68%69%209%206@||@|@%25%209%206@|@%26%27%209%206@||@%28%29%209%206@||@%30%31%209%206@||@%32%33%209%206@||@%34%35%209%206@||@%36%37%209%206@||@%38%39%209%206@||@%40%41%42%209%206@|||@%43%44%209%206@||@%47%48%209%206@||@%49%50%209%206@||@%51%52%209%206@||@%53%54%209%206@||@%55%56%209%206@||@%58%59%209%206@||@||@%107%108%209%206@||@%109%110%209%206@||@%111%113%114%209%206@|||@%115%116%209%206@||@%117%118%209%206@||@%119%120%209%206@||@%121%122%209%206@||@%125%126%209%206@||@%127%128%209%206@||@%129%130%209%206@||@||@2"])
  fun op ssmMoveToPBStateInterp_def x = x
    val op ssmMoveToPBStateInterp_def =
    ThmBind.DT(((("ssmMoveToPB",11),[]),[]),
               [ThmBind.read"%186%18%191%260$0@2%226@|@"])
  fun op secContextMoveToPB_def x = x
    val op secContextMoveToPB_def =
    ThmBind.DT(((("ssmMoveToPB",13),[]),[]),
               [ThmBind.read"%184%12%194%258$0@2%202%232%213%220@2%253%223%222$0@5%212@2|@"])
  fun op moveToPBNS_ind x = x
    val op moveToPBNS_ind =
    ThmBind.DT(((("ssmMoveToPB",2),
                [("MoveToPBType",[22,48]),("OMNIType",[37]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm11",[31])]),["DISK_THM"]),
               [ThmBind.read"%177%6%197%190$0%210@%240%222%250@4%190$0%210@%240%222%242@4%190$0%217@%240%222%252@4%190$0%217@%240%222%242@4%190$0%219@%240%222%251@4%190$0%219@%240%222%242@4%190$0%218@%240%222%231@4%190$0%218@%240%222%242@4%190%185%15%184%12$2$1@%261%222$0@3|@|@2%190%185%15%184%12$2$1@%233%222$0@3|@|@2%190%185%15%175%124$2$1@%233%205$0@3|@|@2%190%185%15%175%158$2$1@%261%205$0@3|@|@2%190%175%46$1%210@%240%205$0@3|@2%190$0%210@%240%222%252@4%190$0%210@%240%222%251@4%190$0%210@%240%222%231@4%190%175%71$1%217@%240%205$0@3|@2%190$0%217@%240%222%250@4%190$0%217@%240%222%251@4%190$0%217@%240%222%231@4%190%175%75$1%219@%240%205$0@3|@2%190$0%219@%240%222%250@4%190$0%219@%240%222%252@4%190$0%219@%240%222%231@4%190%175%80$1%218@%240%205$0@3|@2%190$0%218@%240%222%250@4%190$0%218@%240%222%252@4%190$0%218@%240%222%251@4%174%83$1%201@%240$0@2|@30%185%21%187%23$2$1@$0@|@|@2|@"])
  fun op moveToPBNS_def x = x
    val op moveToPBNS_def =
    ThmBind.DT(((("ssmMoveToPB",3),
                [("MoveToPBType",[18,44]),("OMNIType",[31]),
                 ("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("relation",[113,132]),("ssm11",[25]),
                 ("ssmMoveToPB",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%190%196%246%210@%240%222%250@4%217@2%190%196%246%210@%240%222%242@4%210@2%190%196%246%217@%240%222%252@4%219@2%190%196%246%217@%240%222%242@4%217@2%190%196%246%219@%240%222%251@4%218@2%190%196%246%219@%240%222%242@4%219@2%190%196%246%218@%240%222%231@4%201@2%190%196%246%218@%240%222%242@4%218@2%190%196%246%15@%261%222%12@4%15@2%196%246%15@%233%222%12@4%15@10"])
  fun op moveToPBOut_ind x = x
    val op moveToPBOut_ind =
    ThmBind.DT(((("ssmMoveToPB",6),
                [("MoveToPBType",[22,48]),("OMNIType",[37]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm11",[31])]),["DISK_THM"]),
               [ThmBind.read"%177%6%197%190$0%210@%240%222%250@4%190$0%210@%240%222%242@4%190$0%217@%240%222%252@4%190$0%217@%240%222%242@4%190$0%219@%240%222%251@4%190$0%219@%240%222%242@4%190$0%218@%240%222%231@4%190$0%218@%240%222%242@4%190%185%15%184%12$2$1@%261%222$0@3|@|@2%190%185%15%184%12$2$1@%233%222$0@3|@|@2%190%185%15%175%124$2$1@%233%205$0@3|@|@2%190%185%15%175%158$2$1@%261%205$0@3|@|@2%190%175%46$1%210@%240%205$0@3|@2%190$0%210@%240%222%252@4%190$0%210@%240%222%251@4%190$0%210@%240%222%231@4%190%175%71$1%217@%240%205$0@3|@2%190$0%217@%240%222%250@4%190$0%217@%240%222%251@4%190$0%217@%240%222%231@4%190%175%75$1%219@%240%205$0@3|@2%190$0%219@%240%222%250@4%190$0%219@%240%222%252@4%190$0%219@%240%222%231@4%190%175%80$1%218@%240%205$0@3|@2%190$0%218@%240%222%250@4%190$0%218@%240%222%252@4%190$0%218@%240%222%251@4%174%83$1%201@%240$0@2|@30%185%21%187%23$2$1@$0@|@|@2|@"])
  fun op moveToPBOut_def x = x
    val op moveToPBOut_def =
    ThmBind.DT(((("ssmMoveToPB",7),
                [("MoveToPBType",[18,44]),("OMNIType",[31]),
                 ("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("relation",[113,132]),("ssm11",[25]),
                 ("ssmMoveToPB",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%190%195%247%210@%240%222%250@4%214@2%190%195%247%210@%240%222%242@4%211@2%190%195%247%217@%240%222%252@4%216@2%190%195%247%217@%240%222%242@4%214@2%190%195%247%219@%240%222%251@4%215@2%190%195%247%219@%240%222%242@4%216@2%190%195%247%218@%240%222%231@4%204@2%190%195%247%218@%240%222%242@4%215@2%190%195%247%15@%261%222%12@4%263@2%195%247%15@%233%222%12@4%262@10"])
  fun op authTestMoveToPB_ind x = x
    val op authTestMoveToPB_ind =
    ThmBind.DT(((("ssmMoveToPB",9),
                [("MoveToPBType",[97]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%176%5%197%190%181%11$1%257%213%220@2%253$0@3|@2%190$0%226@2%190$0%207@2%190%181%20$1%253$0@2|@2%190%169%22$1%248$0@2|@2%190%169%77%169%90$2%229$1@$0@2|@|@2%190%169%101%169%112$2%249$1@$0@2|@|@2%190%169%123%169%135$2%241$1@$0@2|@|@2%190%169%146%169%157$2%236$1@$0@2|@|@2%190%172%24$1%257$0@%226@2|@2%190%172%24$1%257$0@%207@2|@2%190%172%60%172%61%181%131$3%257%245$2@$1@2%253$0@3|@|@|@2%190%172%62%172%63%181%131$3%257%254$2@$1@2%253$0@3|@|@|@2%190%172%24%169%132$2%257$1@%248$0@3|@|@2%190%172%24%169%133%169%134$3%257$2@%229$1@$0@3|@|@|@2%190%172%24%169%136%169%137$3%257$2@%249$1@$0@3|@|@|@2%190%172%24%169%138%169%139$3%257$2@%241$1@$0@3|@|@|@2%190%172%24%169%140%169%141$3%257$2@%236$1@$0@3|@|@|@2%190%172%24%172%142%169%143$3%257$2@%257$1@$0@3|@|@|@2%190%172%24%172%144%172%145$3%257$2@%259$1@$0@3|@|@|@2%190%172%24%172%147%169%148$3%257$2@%232$1@$0@3|@|@|@2%190%172%24%172%149%172%150%169%151$4%257$3@%255$2@$1@$0@3|@|@|@|@2%190%172%24%170%152%170%153$3%257$2@%234$1@$0@3|@|@|@2%190%172%24%170%154%170%155$3%257$2@%237$1@$0@3|@|@|@2%190%172%24%173%156%173%159$3%257$2@%235$1@$0@3|@|@|@2%190%172%24%173%160%173%161$3%257$2@%239$1@$0@3|@|@|@2%190%172%24%180%162%180%163$3%257$2@%238$1@$0@3|@|@|@2%190%172%24%180%164%180%165$3%257$2@%244$1@$0@3|@|@|@2%190%172%24%180%166%180%167$3%257$2@%243$1@$0@3|@|@|@2%190%172%45%172%57$2%259$1@$0@2|@|@2%190%172%67%169%70$2%232$1@$0@2|@|@2%190%172%72%172%73%169%74$3%255$2@$1@$0@2|@|@|@2%190%170%76%170%78$2%234$1@$0@2|@|@2%190%170%79%170%81$2%237$1@$0@2|@|@2%190%173%82%173%84$2%235$1@$0@2|@|@2%190%173%85%173%86$2%239$1@$0@2|@|@2%190%180%87%180%88$2%238$1@$0@2|@|@2%190%180%89%180%91$2%244$1@$0@2|@|@2%180%92%180%93$2%243$1@$0@2|@|@40%169%19$1$0@|@2|@"])
  fun op authTestMoveToPB_def x = x
    val op authTestMoveToPB_def =
    ThmBind.DT(((("ssmMoveToPB",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),
                 ("ssmMoveToPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%190%192%230%257%213%220@2%253%11@4%224@2%190%192%230%226@2%206@2%190%192%230%207@2%206@2%190%192%230%253%20@3%206@2%190%192%230%248%22@3%206@2%190%192%230%229%77@%90@3%206@2%190%192%230%249%101@%112@3%206@2%190%192%230%241%123@%135@3%206@2%190%192%230%236%146@%157@3%206@2%190%192%230%257%24@%226@3%206@2%190%192%230%257%24@%207@3%206@2%190%192%230%257%245%60@%61@2%253%131@4%206@2%190%192%230%257%254%62@%63@2%253%131@4%206@2%190%192%230%257%24@%248%132@4%206@2%190%192%230%257%24@%229%133@%134@4%206@2%190%192%230%257%24@%249%136@%137@4%206@2%190%192%230%257%24@%241%138@%139@4%206@2%190%192%230%257%24@%236%140@%141@4%206@2%190%192%230%257%24@%257%142@%143@4%206@2%190%192%230%257%24@%259%144@%145@4%206@2%190%192%230%257%24@%232%147@%148@4%206@2%190%192%230%257%24@%255%149@%150@%151@4%206@2%190%192%230%257%24@%234%152@%153@4%206@2%190%192%230%257%24@%237%154@%155@4%206@2%190%192%230%257%24@%235%156@%159@4%206@2%190%192%230%257%24@%239%160@%161@4%206@2%190%192%230%257%24@%238%162@%163@4%206@2%190%192%230%257%24@%244%164@%165@4%206@2%190%192%230%257%24@%243%166@%167@4%206@2%190%192%230%259%45@%57@3%206@2%190%192%230%232%67@%70@3%206@2%190%192%230%255%72@%73@%74@3%206@2%190%192%230%234%76@%78@3%206@2%190%192%230%237%79@%81@3%206@2%190%192%230%235%82@%84@3%206@2%190%192%230%239%85@%86@3%206@2%190%192%230%238%87@%88@3%206@2%190%192%230%244%89@%91@3%206@2%192%230%243%92@%93@3%206@39"])
  fun op authTestMoveToPB_cmd_reject_lemma x = x
    val op authTestMoveToPB_cmd_reject_lemma =
    ThmBind.DT(((("ssmMoveToPB",12),
                [("aclfoundation",[33,110]),
                 ("bool",[15,25,26,46,47,52,53,62,70,72]),("combin",[19]),
                 ("relation",[113,132]),("sat",[1,3,5,6,7,11,14,15]),
                 ("ssmMoveToPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%174%10%264%230%253%223$0@4|@"])
  fun op PlatoonLeader_slCommand_lemma x = x
    val op PlatoonLeader_slCommand_lemma =
    ThmBind.DT(((("ssmMoveToPB",14),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm11",[52]),("ssmMoveToPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%197%200%188%0@%189%2@%3@3%199%230@%260@%258%17@2%202%257%213%220@2%253%223%222%17@5%13@2%16@%14@3%256%188%0@%189%2@%3@3%253%223%222%17@5"])
  fun op PlatoonLeader_exec_slCommand_justified_thm x = x
    val op PlatoonLeader_exec_slCommand_justified_thm =
    ThmBind.DT(((("ssmMoveToPB",15),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm11",[52,62]),
                 ("ssmMoveToPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%179%1%178%4%171%0%182%2%183%3%192%225%188$2@%189$1@$0@3%240%222%17@3%199%230@%260@%258%17@2%202%257%213%220@2%253%223%222%17@5%13@2%16@%14@2%199%230@%260@%258%17@2%13@$4%16@%240%222%17@4%203$3%16@%240%222%17@4%14@4%190%230%257%213%220@2%253%223%222%17@6%190%200%188$2@%189$1@$0@3%199%230@%260@%258%17@2%202%257%213%220@2%253%223%222%17@5%13@2%16@%14@3%256%188$2@%189$1@$0@3%253%223%222%17@7|@|@|@|@|@"])

  val _ = DB.bindl "ssmMoveToPB"
  [("authTestMoveToPB_primitive_def",
    authTestMoveToPB_primitive_def,
    DB.Def),
   ("ssmMoveToPBStateInterp_def",ssmMoveToPBStateInterp_def,DB.Def),
   ("secContextMoveToPB_def",secContextMoveToPB_def,DB.Def),
   ("moveToPBNS_ind",moveToPBNS_ind,DB.Thm),
   ("moveToPBNS_def",moveToPBNS_def,DB.Thm),
   ("moveToPBOut_ind",moveToPBOut_ind,DB.Thm),
   ("moveToPBOut_def",moveToPBOut_def,DB.Thm),
   ("authTestMoveToPB_ind",authTestMoveToPB_ind,DB.Thm),
   ("authTestMoveToPB_def",authTestMoveToPB_def,DB.Thm),
   ("authTestMoveToPB_cmd_reject_lemma",
    authTestMoveToPB_cmd_reject_lemma,
    DB.Thm),
   ("PlatoonLeader_slCommand_lemma",PlatoonLeader_slCommand_lemma,DB.Thm),
   ("PlatoonLeader_exec_slCommand_justified_thm",
    PlatoonLeader_exec_slCommand_justified_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmMoveToPB",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ssmMoveToPB.moveToPBNS_def ssmMoveToPB.moveToPBOut_def ssmMoveToPB.secContextMoveToPB_def ssmMoveToPB.ssmMoveToPBStateInterp_def ssmMoveToPB.authTestMoveToPB_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmMoveToPB",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO10.moveToPBNS4.%246OO11.moveToPBOut4.%247OO16.authTestMoveToPB4.%230OO22.ssmMoveToPBStateInterp4.%260OO18.secContextMoveToPB4.%258"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ssmMoveToPB_grammars = merge_grammars ["MoveToPBType", "ssm11",
                                             "OMNIType"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ssmMoveToPB"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ssmMoveToPB_grammars = 
    Portable.## (addtyUDs,addtmUDs) ssmMoveToPB_grammars
  val _ = Parse.grammarDB_insert("ssmMoveToPB",ssmMoveToPB_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ssmMoveToPB"
end
