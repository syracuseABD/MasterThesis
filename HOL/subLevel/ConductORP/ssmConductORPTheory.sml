structure ssmConductORPTheory :> ssmConductORPTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ssmConductORPTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open ConductORPDefTheory
  in end;
  val _ = Theory.link_parents
          ("ssmConductORP",
          Arbnum.fromString "1528747906",
          Arbnum.fromString "174288")
          [("ConductORPDef",
           Arbnum.fromString "1528747896",
           Arbnum.fromString "842827")];
  val _ = Theory.incorporate_types "ssmConductORP" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("min", "bool"), ID("aclfoundation", "Form"),
   ID("ConductORPType", "stateRole"), ID("option", "option"),
   ID("OMNIType", "command"), ID("ConductORPType", "slCommand"),
   ID("ConductORPType", "slOutput"), ID("ssm", "trType"),
   ID("list", "list"), ID("ConductORPType", "slState"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("OMNIType", "output"), ID("ConductORPType", "omniCommand"),
   ID("aclfoundation", "Princ"), ID("aclfoundation", "IntLevel"),
   ID("aclfoundation", "SecLevel"), ID("num", "num"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="),
   ID("ConductORPType", "plCommand"), ID("ConductORPType", "psgCommand"),
   ID("min", "==>"), ID("min", "@"), ID("ConductORPType", "ACTIONS_IN"),
   ID("ConductORPType", "ActionsIn"), ID("ssm", "CFG"),
   ID("ssm", "configuration"), ID("ssm", "CFGInterpret"),
   ID("ConductORPType", "COMPLETE"), ID("bool", "COND"),
   ID("ConductORPType", "CONDUCT_ORP"), ID("list", "CONS"),
   ID("ConductORPType", "Complete"), ID("ConductORPType", "ConductORP"),
   ID("bool", "F"), ID("aclfoundation", "FF"),
   ID("aclfoundation", "Form_CASE"), ID("combin", "I"), ID("list", "NIL"),
   ID("option", "NONE"), ID("aclfoundation", "Name"),
   ID("ConductORPType", "OMNI"), ID("ConductORPType", "Omni"),
   ID("ConductORPType", "PL"), ID("ConductORPType", "PSG"),
   ID("ConductORPType", "PlatoonLeader"),
   ID("ConductORPType", "PlatoonSergeant"),
   ID("aclfoundation", "Princ_CASE"), ID("ConductORPType", "SECURE"),
   ID("OMNIType", "SLc"), ID("option", "SOME"),
   ID("ConductORPType", "Secure"), ID("bool", "T"), ID("ssm", "TR"),
   ID("aclfoundation", "TT"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("ConductORPType", "WITHDRAW"),
   ID("ConductORPType", "Withdraw"), ID("ConductORPType", "actionsIn"),
   ID("aclfoundation", "andf"), ID("ssm", "authenticationTest"),
   ID("ConductORPType", "complete"), ID("ssmConductORP", "conductORPNS"),
   ID("ssmConductORP", "conductORPOut"), ID("aclfoundation", "controls"),
   ID("ssm", "discard"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"), ID("ssm", "exec"),
   ID("ConductORPDef", "getPlCom"), ID("ConductORPDef", "getPsgCom"),
   ID("aclfoundation", "impf"), ID("ssm", "inputList"),
   ID("ssmConductORP", "inputOK"), ID("aclfoundation", "lt"),
   ID("aclfoundation", "lte"), ID("aclfoundation", "meet"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("aclfoundation", "prop"), ID("ssm", "propCommandList"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("aclrules", "sat"), ID("satList", "satList"),
   ID("aclfoundation", "says"), ID("ConductORPDef", "secAuthorization"),
   ID("ConductORPDef", "secContext"), ID("ConductORPType", "secure"),
   ID("aclfoundation", "speaks_for"),
   ID("ConductORPType", "ssmActionsInComplete"),
   ID("ConductORPType", "ssmSecureComplete"), ID("ssm", "trap"),
   ID("ConductORPType", "unAuthenticated"),
   ID("ConductORPType", "unAuthorized"), ID("ConductORPType", "withdraw"),
   ID("bool", "~")]
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
   TYOP [15, 3], TYOP [16, 3, 2], TYOP [17, 3, 1], TYOP [18],
   TYOP [0, 8, 0], TYOP [0, 34, 0], TYOP [0, 38, 0], TYOP [0, 18, 0],
   TYOP [0, 40, 0], TYOP [0, 33, 0], TYOP [0, 42, 0], TYOP [0, 35, 0],
   TYOP [0, 44, 0], TYOP [0, 5, 0], TYOP [0, 46, 0], TYOP [0, 37, 0],
   TYOP [0, 27, 0], TYOP [0, 49, 0], TYOP [0, 16, 0], TYOP [0, 51, 0],
   TYOP [0, 25, 0], TYOP [0, 53, 0], TYOP [0, 10, 0], TYOP [0, 55, 0],
   TYOP [0, 36, 0], TYOP [0, 57, 0], TYOP [0, 6, 0], TYOP [0, 59, 0],
   TYOP [0, 19, 0], TYOP [0, 61, 0], TYOP [0, 20, 0], TYOP [0, 63, 0],
   TYOP [0, 13, 0], TYOP [0, 65, 0], TYOP [0, 26, 0], TYOP [21, 19, 20],
   TYOP [21, 18, 68], TYOP [0, 68, 69], TYOP [0, 18, 70], TYOP [0, 20, 68],
   TYOP [0, 19, 72], TYOP [0, 0, 0], TYOP [0, 0, 74], TYOP [0, 8, 37],
   TYOP [0, 31, 0], TYOP [0, 31, 77], TYOP [24], TYOP [0, 79, 0],
   TYOP [0, 79, 80], TYOP [25], TYOP [0, 82, 0], TYOP [0, 82, 83],
   TYOP [0, 9, 0], TYOP [0, 9, 85], TYOP [0, 13, 65], TYOP [0, 28, 0],
   TYOP [0, 88, 28], TYOP [31, 5, 2, 1, 23, 3, 13], TYOP [0, 32, 90],
   TYOP [0, 13, 91], TYOP [0, 30, 92], TYOP [0, 29, 29], TYOP [0, 94, 93],
   TYOP [0, 13, 94], TYOP [0, 96, 95], TYOP [0, 8, 97], TYOP [0, 90, 0],
   TYOP [0, 69, 99], TYOP [0, 9, 9], TYOP [0, 9, 101], TYOP [0, 0, 102],
   TYOP [0, 13, 13], TYOP [0, 13, 104], TYOP [0, 0, 105], TYOP [0, 7, 94],
   TYOP [0, 30, 30], TYOP [0, 29, 108], TYOP [0, 10, 10], TYOP [0, 6, 110],
   TYOP [0, 32, 32], TYOP [0, 23, 112], TYOP [0, 36, 57], TYOP [0, 114, 0],
   TYOP [0, 114, 115], TYOP [0, 114, 116], TYOP [0, 35, 44],
   TYOP [0, 118, 117], TYOP [0, 118, 119], TYOP [0, 34, 38],
   TYOP [0, 121, 120], TYOP [0, 121, 122], TYOP [0, 33, 8],
   TYOP [0, 33, 124], TYOP [0, 125, 123], TYOP [0, 124, 126],
   TYOP [0, 33, 42], TYOP [0, 128, 127], TYOP [0, 124, 129],
   TYOP [0, 28, 130], TYOP [0, 28, 131], TYOP [0, 28, 132],
   TYOP [0, 28, 133], TYOP [0, 8, 134], TYOP [0, 59, 135],
   TYOP [0, 0, 136], TYOP [0, 0, 137], TYOP [0, 7, 138], TYOP [0, 3, 33],
   TYOP [0, 31, 4], TYOP [0, 79, 4], TYOP [0, 82, 4], TYOP [0, 128, 0],
   TYOP [0, 128, 144], TYOP [0, 3, 0], TYOP [0, 146, 145],
   TYOP [0, 33, 147], TYOP [0, 4, 5], TYOP [0, 5, 6], TYOP [0, 90, 99],
   TYOP [0, 11, 151], TYOP [0, 69, 152], TYOP [0, 8, 8], TYOP [0, 154, 8],
   TYOP [0, 28, 155], TYOP [0, 7, 7], TYOP [0, 7, 157], TYOP [0, 29, 0],
   TYOP [0, 8, 159], TYOP [0, 33, 157], TYOP [0, 10, 11], TYOP [0, 34, 7],
   TYOP [0, 34, 163], TYOP [0, 35, 7], TYOP [0, 35, 165], TYOP [0, 36, 7],
   TYOP [0, 36, 167], TYOP [0, 10, 79], TYOP [0, 10, 82], TYOP [0, 29, 10],
   TYOP [0, 33, 33], TYOP [0, 33, 172], TYOP [0, 6, 7], TYOP [0, 33, 161],
   TYOP [0, 69, 8], TYOP [0, 69, 159], TYOP [0, 33, 7], TYOP [0, 33, 178]]
  end
  val _ = Theory.incorporate_consts "ssmConductORP" tyvector
     [("inputOK", 8), ("conductORPOut", 14), ("conductORPNS", 16)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 18), TMV("NS", 16), TMV("Oi", 19), TMV("Os", 20),
   TMV("Out", 25), TMV("P", 8), TMV("P", 27), TMV("R", 28), TMV("a", 7),
   TMV("cmd", 5), TMV("cmd", 6), TMV("inputOK", 8), TMV("ins", 30),
   TMV("omniCommand", 31), TMV("outs", 32), TMV("s", 13), TMV("v", 7),
   TMV("v", 6), TMV("v", 13), TMV("v1", 7), TMV("v1", 11), TMV("v10", 33),
   TMV("v100", 7), TMV("v101", 7), TMV("v102", 7), TMV("v103", 7),
   TMV("v104", 7), TMV("v105", 7), TMV("v106", 7), TMV("v107", 7),
   TMV("v108", 7), TMV("v109", 33), TMV("v110", 7), TMV("v111", 33),
   TMV("v112", 33), TMV("v113", 33), TMV("v114", 7), TMV("v115", 33),
   TMV("v116", 33), TMV("v117", 7), TMV("v118", 34), TMV("v119", 34),
   TMV("v12", 33), TMV("v120", 34), TMV("v121", 34), TMV("v122", 35),
   TMV("v123", 35), TMV("v124", 35), TMV("v125", 35), TMV("v126", 36),
   TMV("v127", 36), TMV("v128", 36), TMV("v129", 36), TMV("v13", 33),
   TMV("v130", 36), TMV("v131", 36), TMV("v133", 33), TMV("v134", 33),
   TMV("v135", 33), TMV("v136", 33), TMV("v137", 3), TMV("v138", 33),
   TMV("v139", 33), TMV("v14", 33), TMV("v140", 33), TMV("v141", 33),
   TMV("v15", 7), TMV("v16", 33), TMV("v17", 33), TMV("v18", 7),
   TMV("v19", 34), TMV("v2", 7), TMV("v20", 34), TMV("v21", 34),
   TMV("v22", 34), TMV("v23", 35), TMV("v24", 35), TMV("v25", 35),
   TMV("v26", 35), TMV("v27", 36), TMV("v28", 36), TMV("v29", 36),
   TMV("v3", 7), TMV("v30", 36), TMV("v31", 36), TMV("v32", 36),
   TMV("v33", 6), TMV("v34", 7), TMV("v35", 7), TMV("v36", 7),
   TMV("v37", 7), TMV("v38", 7), TMV("v39", 7), TMV("v4", 7),
   TMV("v40", 7), TMV("v41", 7), TMV("v42", 7), TMV("v43", 33),
   TMV("v44", 7), TMV("v45", 33), TMV("v46", 33), TMV("v47", 33),
   TMV("v48", 7), TMV("v49", 33), TMV("v5", 7), TMV("v5", 10),
   TMV("v50", 33), TMV("v51", 7), TMV("v52", 34), TMV("v53", 34),
   TMV("v54", 34), TMV("v55", 34), TMV("v56", 35), TMV("v57", 35),
   TMV("v58", 35), TMV("v59", 35), TMV("v6", 7), TMV("v60", 36),
   TMV("v61", 36), TMV("v62", 36), TMV("v63", 36), TMV("v64", 36),
   TMV("v65", 36), TMV("v66", 6), TMV("v67", 7), TMV("v68", 7),
   TMV("v69", 7), TMV("v7", 7), TMV("v70", 7), TMV("v71", 7),
   TMV("v72", 7), TMV("v73", 7), TMV("v74", 7), TMV("v75", 7),
   TMV("v76", 33), TMV("v77", 7), TMV("v78", 33), TMV("v79", 33),
   TMV("v8", 7), TMV("v80", 33), TMV("v81", 7), TMV("v82", 33),
   TMV("v83", 33), TMV("v84", 7), TMV("v85", 34), TMV("v86", 34),
   TMV("v87", 34), TMV("v88", 34), TMV("v89", 35), TMV("v9", 7),
   TMV("v90", 35), TMV("v91", 35), TMV("v92", 35), TMV("v93", 36),
   TMV("v94", 36), TMV("v95", 36), TMV("v96", 36), TMV("v97", 36),
   TMV("v98", 36), TMV("v99", 6), TMV("x", 10), TMC(19, 37), TMC(19, 39),
   TMC(19, 41), TMC(19, 43), TMC(19, 45), TMC(19, 47), TMC(19, 48),
   TMC(19, 50), TMC(19, 52), TMC(19, 54), TMC(19, 56), TMC(19, 58),
   TMC(19, 60), TMC(19, 62), TMC(19, 64), TMC(19, 66), TMC(19, 67),
   TMC(20, 71), TMC(20, 73), TMC(22, 75), TMC(23, 75), TMC(23, 76),
   TMC(23, 78), TMC(23, 81), TMC(23, 84), TMC(23, 86), TMC(23, 87),
   TMC(26, 75), TMC(27, 89), TMC(28, 13), TMC(29, 9), TMC(30, 98),
   TMC(32, 100), TMC(33, 13), TMC(34, 103), TMC(34, 106), TMC(35, 13),
   TMC(36, 107), TMC(36, 109), TMC(36, 111), TMC(36, 113), TMC(37, 9),
   TMC(38, 9), TMC(39, 0), TMC(40, 7), TMC(41, 139), TMC(42, 74),
   TMC(43, 29), TMC(43, 10), TMC(44, 6), TMC(45, 140), TMC(46, 141),
   TMC(47, 3), TMC(48, 142), TMC(49, 143), TMC(50, 3), TMC(51, 3),
   TMC(52, 148), TMC(53, 13), TMC(54, 149), TMC(55, 150), TMC(56, 9),
   TMC(57, 0), TMC(58, 153), TMC(59, 7), TMC(60, 88), TMC(61, 156),
   TMC(62, 13), TMC(63, 9), TMC(64, 82), TMC(65, 158), TMC(66, 160),
   TMC(67, 79), TMC(68, 16), TMC(69, 14), TMC(70, 161), TMC(71, 162),
   TMC(72, 164), TMC(73, 166), TMC(74, 158), TMC(75, 164), TMC(76, 168),
   TMC(77, 166), TMC(78, 162), TMC(79, 169), TMC(80, 170), TMC(81, 158),
   TMC(82, 171), TMC(83, 8), TMC(84, 168), TMC(85, 168), TMC(86, 173),
   TMC(87, 157), TMC(88, 158), TMC(89, 174), TMC(90, 94), TMC(91, 173),
   TMC(92, 175), TMC(93, 176), TMC(94, 177), TMC(95, 161), TMC(96, 94),
   TMC(97, 96), TMC(98, 79), TMC(99, 179), TMC(100, 31), TMC(101, 31),
   TMC(102, 162), TMC(103, 9), TMC(104, 9), TMC(105, 79), TMC(106, 74)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op inputOK_primitive_def x = x
    val op inputOK_primitive_def =
    ThmBind.DT(((("ssmConductORP",8),[]),[]),
               [ThmBind.read"%182%249@%227%189%7%226$0@|@2%11%8%206$0@%207%204@2%207%204@2%86%207%204@|@%87%207%204@|@%88%89%207%204@||@%90%91%207%204@||@%92%94%207%204@||@%95%96%207%204@||@%97%98%206$0@%207%204@2%207%204@2%159%218$2@%60%207%223@|@%61%62%207%204@||@%64%65%207%204@||@|@%22%207%204@|@%23%24%207%204@||@%25%26%207%204@||@%27%28%207%204@||@%29%30%207%204@||@%31%32%207%204@||@%33%34%207%204@||@%35%36%207%204@||@%37%38%39%207%204@|||@%40%41%207%204@||@%43%44%207%204@||@%45%46%207%204@||@%47%48%207%204@||@%49%50%207%204@||@%51%52%207%204@||@%54%55%207%204@||@||@%99%100%207%204@||@%101%102%207%204@||@%103%106%107%207%204@|||@%108%109%207%204@||@%110%111%207%204@||@%112%113%207%204@||@%114%115%207%204@||@%117%118%207%204@||@%119%120%207%204@||@%121%122%207%204@||@||@2"])
  fun op conductORPNS_ind x = x
    val op conductORPNS_ind =
    ThmBind.DT(((("ssmConductORP",2),
                [("ConductORPType",[114]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%168%6%188%180%171%160$1%197@%244$0@2|@2%180%171%160$1%219@%244$0@2|@2%180%171%160$1%190@%244$0@2|@2%180%171%160$1%228@%244$0@2|@2%180%176%15%171%160$2$1@%268$0@2|@|@2%180%176%15%171%160$2$1@%237$0@2|@|@2%171%105$1%194@%244$0@2|@8%176%18%177%20$2$1@$0@|@|@2|@"])
  fun op conductORPNS_def x = x
    val op conductORPNS_def =
    ThmBind.DT(((("ssmConductORP",3),
                [("ConductORPType",[110]),("bool",[15,57]),("combin",[19]),
                 ("pair",[49]),("relation",[113,132]),("ssm",[8]),
                 ("ssmConductORP",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%180%187%234%197@%244%160@3%196%184%245%160@2%264@2%219@%197@3%180%187%234%219@%244%160@3%196%185%246%160@2%230@2%190@%219@3%180%187%234%190@%244%160@3%196%184%245%160@2%271@2%228@%190@3%180%187%234%228@%244%160@3%196%184%245%160@2%233@2%194@%228@3%180%187%234%15@%268%160@3%15@2%187%234%15@%237%160@3%15@6"])
  fun op conductORPOut_ind x = x
    val op conductORPOut_ind =
    ThmBind.DT(((("ssmConductORP",6),
                [("ConductORPType",[114]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%168%6%188%180%171%160$1%197@%244$0@2|@2%180%171%160$1%219@%244$0@2|@2%180%171%160$1%190@%244$0@2|@2%180%171%160$1%228@%244$0@2|@2%180%176%15%171%160$2$1@%268$0@2|@|@2%180%176%15%171%160$2$1@%237$0@2|@|@2%171%105$1%194@%244$0@2|@8%176%18%177%20$2$1@$0@|@|@2|@"])
  fun op conductORPOut_def x = x
    val op conductORPOut_def =
    ThmBind.DT(((("ssmConductORP",7),
                [("ConductORPType",[110]),("bool",[15,57]),("combin",[19]),
                 ("pair",[49]),("relation",[113,132]),("ssm",[8]),
                 ("ssmConductORP",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%180%186%235%197@%244%160@3%195%184%245%160@2%264@2%222@%203@3%180%186%235%219@%244%160@3%195%185%246%160@2%230@2%191@%222@3%180%186%235%190@%244%160@3%195%184%245%160@2%271@2%229@%191@3%180%186%235%228@%244%160@3%195%184%245%160@2%233@2%202@%229@3%180%186%235%15@%268%160@3%270@2%186%235%15@%237%160@3%269@6"])
  fun op inputOK_ind x = x
    val op inputOK_ind =
    ThmBind.DT(((("ssmConductORP",9),
                [("ConductORPType",[166]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%167%5%188%180%173%10$1%261%211%216@2%255$0@3|@2%180%173%10$1%261%211%217@2%255$0@3|@2%180%173%10$1%261%211%213@2%255$0@3|@2%180$0%225@2%180$0%205@2%180%173%17$1%255$0@2|@2%180%161%19$1%253$0@2|@2%180%161%71%161%82$2%231$1@$0@2|@|@2%180%161%93%161%104$2%254$1@$0@2|@|@2%180%161%116%161%127$2%247$1@$0@2|@|@2%180%161%138%161%149$2%240$1@$0@2|@|@2%180%164%21$1%261$0@%225@2|@2%180%164%21$1%261$0@%205@2|@2%180%164%56%164%57%173%123$3%261%252$2@$1@2%255$0@3|@|@|@2%180%164%58%164%59%173%123$3%261%257$2@$1@2%255$0@3|@|@|@2%180%164%21%161%124$2%261$1@%253$0@3|@|@2%180%164%21%161%125%161%126$3%261$2@%231$1@$0@3|@|@|@2%180%164%21%161%128%161%129$3%261$2@%254$1@$0@3|@|@|@2%180%164%21%161%130%161%131$3%261$2@%247$1@$0@3|@|@|@2%180%164%21%161%132%161%133$3%261$2@%240$1@$0@3|@|@|@2%180%164%21%164%134%161%135$3%261$2@%261$1@$0@3|@|@|@2%180%164%21%164%136%164%137$3%261$2@%265$1@$0@3|@|@|@2%180%164%21%164%139%161%140$3%261$2@%236$1@$0@3|@|@|@2%180%164%21%164%141%164%142%161%143$4%261$3@%258$2@$1@$0@3|@|@|@|@2%180%164%21%162%144%162%145$3%261$2@%238$1@$0@3|@|@|@2%180%164%21%162%146%162%147$3%261$2@%241$1@$0@3|@|@|@2%180%164%21%165%148%165%150$3%261$2@%239$1@$0@3|@|@|@2%180%164%21%165%151%165%152$3%261$2@%243$1@$0@3|@|@|@2%180%164%21%172%153%172%154$3%261$2@%242$1@$0@3|@|@|@2%180%164%21%172%155%172%156$3%261$2@%251$1@$0@3|@|@|@2%180%164%21%172%157%172%158$3%261$2@%250$1@$0@3|@|@|@2%180%164%42%164%53$2%265$1@$0@2|@|@2%180%164%63%161%66$2%236$1@$0@2|@|@2%180%164%67%164%68%161%69$3%258$2@$1@$0@2|@|@|@2%180%162%70%162%72$2%238$1@$0@2|@|@2%180%162%73%162%74$2%241$1@$0@2|@|@2%180%165%75%165%76$2%239$1@$0@2|@|@2%180%165%77%165%78$2%243$1@$0@2|@|@2%180%172%79%172%80$2%242$1@$0@2|@|@2%180%172%81%172%83$2%251$1@$0@2|@|@2%172%84%172%85$2%250$1@$0@2|@|@42%161%16$1$0@|@2|@"])
  fun op inputOK_def x = x
    val op inputOK_def =
    ThmBind.DT(((("ssmConductORP",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),
                 ("ssmConductORP",[8])]),["DISK_THM"]),
               [ThmBind.read"%180%181%249%261%211%216@2%255%10@4%223@2%180%181%249%261%211%217@2%255%10@4%223@2%180%181%249%261%211%213@2%255%10@4%223@2%180%181%249%225@2%204@2%180%181%249%205@2%204@2%180%181%249%255%17@3%204@2%180%181%249%253%19@3%204@2%180%181%249%231%71@%82@3%204@2%180%181%249%254%93@%104@3%204@2%180%181%249%247%116@%127@3%204@2%180%181%249%240%138@%149@3%204@2%180%181%249%261%21@%225@3%204@2%180%181%249%261%21@%205@3%204@2%180%181%249%261%252%56@%57@2%255%123@4%204@2%180%181%249%261%257%58@%59@2%255%123@4%204@2%180%181%249%261%21@%253%124@4%204@2%180%181%249%261%21@%231%125@%126@4%204@2%180%181%249%261%21@%254%128@%129@4%204@2%180%181%249%261%21@%247%130@%131@4%204@2%180%181%249%261%21@%240%132@%133@4%204@2%180%181%249%261%21@%261%134@%135@4%204@2%180%181%249%261%21@%265%136@%137@4%204@2%180%181%249%261%21@%236%139@%140@4%204@2%180%181%249%261%21@%258%141@%142@%143@4%204@2%180%181%249%261%21@%238%144@%145@4%204@2%180%181%249%261%21@%241%146@%147@4%204@2%180%181%249%261%21@%239%148@%150@4%204@2%180%181%249%261%21@%243%151@%152@4%204@2%180%181%249%261%21@%242%153@%154@4%204@2%180%181%249%261%21@%251%155@%156@4%204@2%180%181%249%261%21@%250%157@%158@4%204@2%180%181%249%265%42@%53@3%204@2%180%181%249%236%63@%66@3%204@2%180%181%249%258%67@%68@%69@3%204@2%180%181%249%238%70@%72@3%204@2%180%181%249%241%73@%74@3%204@2%180%181%249%239%75@%76@3%204@2%180%181%249%243%77@%78@3%204@2%180%181%249%242%79@%80@3%204@2%180%181%249%251%81@%83@3%204@2%181%249%250%84@%85@3%204@41"])
  fun op inputOK_cmd_reject_lemma x = x
    val op inputOK_cmd_reject_lemma =
    ThmBind.DT(((("ssmConductORP",11),
                [("aclfoundation",[33,110]),
                 ("bool",[15,25,26,46,47,52,53,62,70,72]),("combin",[19]),
                 ("relation",[113,132]),("sat",[1,3,5,6,7,11,14,15]),
                 ("ssmConductORP",[8])]),["DISK_THM"]),
               [ThmBind.read"%166%9%272%249%255%221$0@4|@"])
  fun op PlatoonLeader_CONDUCT_ORP_exec_secure_lemma x = x
    val op PlatoonLeader_CONDUCT_ORP_exec_secure_lemma =
    ThmBind.DT(((("ssmConductORP",12),
                [("ConductORPDef",[9,10,11]),("aclDrules",[3]),
                 ("bool",[25,26,46,47,50,52,53,62,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%163%0%174%2%175%3%188%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%216@2%255%221%220%214%264@6%208@2%12@2%197@%14@3%260%178$2@%179$1@$0@3%256%198%261%211%216@2%255%221%220%214%264@6%208@4|@|@|@"])
  fun op PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm x = x
    val op PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm =
    ThmBind.DT(((("ssmConductORP",14),
                [("ConductORPDef",[9,10,11]),("aclDrules",[3]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%244%200%221%220%214%264@4%209@3%192%249@%263@%262@%199%198%261%211%216@2%255%221%220%214%264@6%208@2%12@2%197@%14@2%192%249@%263@%262@%12@$4%197@%244%200%221%220%214%264@4%209@4%201$3%197@%244%200%221%220%214%264@4%209@4%14@4%180%232%249@%198%261%211%216@2%255%221%220%214%264@6%208@3%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%216@2%255%221%220%214%264@6%208@2%12@2%197@%14@3%260%178$2@%179$1@$0@3%198%255%221%220%214%264@5%208@5|@|@|@|@|@"])
  fun op PlatoonSergeant_SECURE_exec_lemma x = x
    val op PlatoonSergeant_SECURE_exec_lemma =
    ThmBind.DT(((("ssmConductORP",15),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%163%0%174%2%175%3%188%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@3%12@2%219@%14@3%260%178$2@%179$1@$0@3%256%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@5|@|@|@"])
  fun op PlatoonSergeant_SECURE_exec_justified_lemma x = x
    val op PlatoonSergeant_SECURE_exec_justified_lemma =
    ThmBind.DT(((("ssmConductORP",16),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%244%248%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@5%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@3%12@2%219@%14@2%192%249@%263@%262@%12@$4%219@%244%248%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@6%201$3%219@%244%248%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@6%14@4%180%232%249@%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@4%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@3%12@2%219@%14@3%260%178$2@%179$1@$0@3%256%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@7|@|@|@|@|@"])
  fun op PlatoonSergeant_SECURE_exec_justified_thm x = x
    val op PlatoonSergeant_SECURE_exec_justified_thm =
    ThmBind.DT(((("ssmConductORP",17),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%244%200%221%220%212%267@4%200%221%220%215%230@4%209@4%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@3%12@2%219@%14@2%192%249@%263@%262@%12@$4%219@%244%200%221%220%212%267@4%200%221%220%215%230@4%209@5%201$3%219@%244%200%221%220%212%267@4%200%221%220%215%230@4%209@5%14@4%180%232%249@%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@4%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%267@6%198%261%211%217@2%255%221%220%215%230@6%208@3%12@2%219@%14@3%260%178$2@%179$1@$0@3%198%255%221%220%212%267@5%198%255%221%220%215%230@5%208@6|@|@|@|@|@"])
  fun op PlatoonLeader_ACTIONS_IN_exec_lemma x = x
    val op PlatoonLeader_ACTIONS_IN_exec_lemma =
    ThmBind.DT(((("ssmConductORP",18),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%163%0%174%2%175%3%188%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@3%260%178$2@%179$1@$0@3%256%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@5|@|@|@"])
  fun op PlatoonLeader_ACTIONS_IN_exec_justified_lemma x = x
    val op PlatoonLeader_ACTIONS_IN_exec_justified_lemma =
    ThmBind.DT(((("ssmConductORP",19),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%244%248%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@5%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@2%192%249@%263@%262@%12@$4%190@%244%248%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@6%201$3%190@%244%248%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@6%14@4%180%232%249@%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@4%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@3%260%178$2@%179$1@$0@3%256%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@7|@|@|@|@|@"])
  fun op PlatoonLeader_ACTIONS_IN_exec_justified_thm x = x
    val op PlatoonLeader_ACTIONS_IN_exec_justified_thm =
    ThmBind.DT(((("ssmConductORP",20),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%244%200%221%220%212%266@4%200%221%220%214%271@4%209@4%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@2%192%249@%263@%262@%12@$4%190@%244%200%221%220%212%266@4%200%221%220%214%271@4%209@5%201$3%190@%244%200%221%220%212%266@4%200%221%220%214%271@4%209@5%14@4%180%232%249@%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@4%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%266@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@3%260%178$2@%179$1@$0@3%198%255%221%220%212%266@5%198%255%221%220%214%271@5%208@6|@|@|@|@|@"])
  fun op PlatoonLeader_ACTIONS_IN_trap_lemma x = x
    val op PlatoonLeader_ACTIONS_IN_trap_lemma =
    ThmBind.DT(((("ssmConductORP",21),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,27,46,47,50,52,53,62,63,70]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35])]),["DISK_THM"]),
               [ThmBind.read"%188%272%183%13@%266@3%188%187%15@%190@2%163%0%174%2%175%3%188%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@3%259%178$2@%179$1@$0@3%255%210@3|@|@|@3"])
  fun op PlatoonLeader_ACTIONS_IN_trap_justified_lemma x = x
    val op PlatoonLeader_ACTIONS_IN_trap_justified_lemma =
    ThmBind.DT(((("ssmConductORP",22),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,59])]),["DISK_THM"]),
               [ThmBind.read"%188%272%183%13@%266@3%188%187%15@%190@2%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%268%248%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@5%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@2%192%249@%263@%262@%12@$4%190@%268%248%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@6%201$3%190@%268%248%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@6%14@4%180%232%249@%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@4%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@3%259%178$2@%179$1@$0@3%255%210@5|@|@|@|@|@3"])
  fun op PlatoonLeader_ACTIONS_IN_trap_justified_thm x = x
    val op PlatoonLeader_ACTIONS_IN_trap_justified_thm =
    ThmBind.DT(((("ssmConductORP",23),
                [("ConductORPDef",[6,9,10,11]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,47,48,59])]),["DISK_THM"]),
               [ThmBind.read"%188%272%183%13@%266@3%188%187%15@%190@2%169%1%170%4%163%0%174%2%175%3%181%224%178$2@%179$1@$0@3%268%200%221%220%212%13@4%200%221%220%214%271@4%209@4%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@2%192%249@%263@%262@%12@$4%190@%268%200%221%220%212%13@4%200%221%220%214%271@4%209@5%201$3%190@%268%200%221%220%212%13@4%200%221%220%214%271@4%209@5%14@4%180%232%249@%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@4%180%193%178$2@%179$1@$0@3%192%249@%263@%262@%199%198%261%211%213@2%255%221%220%212%13@6%198%261%211%216@2%255%221%220%214%271@6%208@3%12@2%190@%14@3%259%178$2@%179$1@$0@3%255%210@5|@|@|@|@|@3"])

  val _ = DB.bindl "ssmConductORP"
  [("inputOK_primitive_def",inputOK_primitive_def,DB.Def),
   ("conductORPNS_ind",conductORPNS_ind,DB.Thm),
   ("conductORPNS_def",conductORPNS_def,DB.Thm),
   ("conductORPOut_ind",conductORPOut_ind,DB.Thm),
   ("conductORPOut_def",conductORPOut_def,DB.Thm),
   ("inputOK_ind",inputOK_ind,DB.Thm), ("inputOK_def",inputOK_def,DB.Thm),
   ("inputOK_cmd_reject_lemma",inputOK_cmd_reject_lemma,DB.Thm),
   ("PlatoonLeader_CONDUCT_ORP_exec_secure_lemma",
    PlatoonLeader_CONDUCT_ORP_exec_secure_lemma,
    DB.Thm),
   ("PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm",
    PlatoonLeader_CONDUCT_ORP_exec_secure_justified_thm,
    DB.Thm),
   ("PlatoonSergeant_SECURE_exec_lemma",
    PlatoonSergeant_SECURE_exec_lemma,
    DB.Thm),
   ("PlatoonSergeant_SECURE_exec_justified_lemma",
    PlatoonSergeant_SECURE_exec_justified_lemma,
    DB.Thm),
   ("PlatoonSergeant_SECURE_exec_justified_thm",
    PlatoonSergeant_SECURE_exec_justified_thm,
    DB.Thm),
   ("PlatoonLeader_ACTIONS_IN_exec_lemma",
    PlatoonLeader_ACTIONS_IN_exec_lemma,
    DB.Thm),
   ("PlatoonLeader_ACTIONS_IN_exec_justified_lemma",
    PlatoonLeader_ACTIONS_IN_exec_justified_lemma,
    DB.Thm),
   ("PlatoonLeader_ACTIONS_IN_exec_justified_thm",
    PlatoonLeader_ACTIONS_IN_exec_justified_thm,
    DB.Thm),
   ("PlatoonLeader_ACTIONS_IN_trap_lemma",
    PlatoonLeader_ACTIONS_IN_trap_lemma,
    DB.Thm),
   ("PlatoonLeader_ACTIONS_IN_trap_justified_lemma",
    PlatoonLeader_ACTIONS_IN_trap_justified_lemma,
    DB.Thm),
   ("PlatoonLeader_ACTIONS_IN_trap_justified_thm",
    PlatoonLeader_ACTIONS_IN_trap_justified_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmConductORP",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ssmConductORP.conductORPNS_def ssmConductORP.conductORPOut_def ssmConductORP.inputOK_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmConductORP",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.conductORPNS4.%234OO13.conductORPOut4.%235OO7.inputOK4.%249"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ssmConductORP_grammars = merge_grammars ["ConductORPDef"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ssmConductORP"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ssmConductORP_grammars = 
    Portable.## (addtyUDs,addtmUDs) ssmConductORP_grammars
  val _ = Parse.grammarDB_insert("ssmConductORP",ssmConductORP_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ssmConductORP"
end
