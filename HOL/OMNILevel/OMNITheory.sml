structure OMNITheory :> OMNITheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading OMNITheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open OMNITypeTheory aclDrulesTheory
  in end;
  val _ = Theory.link_parents
          ("OMNI",
          Arbnum.fromString "1526502770",
          Arbnum.fromString "178392")
          [("OMNIType",
           Arbnum.fromString "1526502768",
           Arbnum.fromString "51917"),
           ("aclDrules",
           Arbnum.fromString "1526502743",
           Arbnum.fromString "903081")];
  val _ = Theory.incorporate_types "OMNI" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  []
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  []
  end
  val _ = Theory.incorporate_consts "OMNI" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  []
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end


  val _ = DB.bindl "OMNI" []

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val OMNI_grammars = merge_grammars ["OMNIType", "aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="OMNI"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val OMNI_grammars = 
    Portable.## (addtyUDs,addtmUDs) OMNI_grammars
  val _ = Parse.grammarDB_insert("OMNI",OMNI_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "OMNI"
end
