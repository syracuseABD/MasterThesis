app load [ "PBTypeIntegratedTheory", "ssmPBIntegratedTheory",
    	   "PBIntegratedDefTheory",
          "EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["PBTypeIntegrated", "ssmPBIntegrated","PBIntegratedDef"] "Report";
