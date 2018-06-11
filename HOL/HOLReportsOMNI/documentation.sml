app load ["OMNITypeTheory", "ssm11Theory", "ssmTheory",
    	  "satListTheory","ssminfRules",
    	  "ssmPBIntegratedTheory",
	  "PBTypeIntegratedTheory","PBIntegratedDefTheory","ssmPBIntegratedTheory",
          "ssmConductORPTheory", "ConductORPTypeTheory","ConductORPDefTheory",
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
 "PBTypeIntegrated","PBIntegratedDef","ssmPBIntegrated",
 "ssmConductORP","ConductORPType","ConductORPDef",
 "ssmConductPB","ConductPBType","ssmMoveToORP","MoveToORPType",
 "ssmMoveToPB","MoveToPBType","ssmPlanPB","PlanPBType","PlanPBDef" ] "OMNIReport";
