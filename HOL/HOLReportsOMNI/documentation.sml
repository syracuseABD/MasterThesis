app load ["OMNITypeTheory", "ssm11Theory", "ssmTheory",
    	  "satListTheory","ssminfRules",
    	  "ssmPBIntegratedTheory",
	  "PBTypeIntegratedTheory","PBIntegratedDefTheory",
          "ssmConductORPTheory", "ConductORPTypeTheory",
	  "ssmConductPBTheory","ConductPBTypeTheory",
	  "ssmMoveToORPTheory","MoveToORPTypeTheory",
	  "ssmMoveToPBTheory","MoveToPBTypeTheory",
	  "ssmPlanPBTheory","PlanPBTypeTheory","PlanPBDefTheory",
          "EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["OMNIType","ssm11", "ssm",
 "satList","ssminfRules",
 "PBssmPBIntegrated",
 "PBTypeIntegrated","PBIntegratedDef",
 "ssmConductORP","ConductORPType",
 "ssmConductPB","ConductPBType","ssmMoveToORP","MoveToORPType",
 "ssmMoveToPB","MoveToPBType","ssmPlanPB","PlanPBType","PlanPBDef" ] "OMNIReport";
