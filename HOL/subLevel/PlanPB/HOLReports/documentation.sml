app load [ "PlanPBTypeTheory", "ssmPlanPBTheory","PlanPBDefTheory",
          "EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["PlanPBType", "ssmPlanPB","PlanPBDef"] "Report";
