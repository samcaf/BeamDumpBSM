(* ::Package:: *)

(* ::Title::Initialization:: *)
(*Directories/paths for beam dump calculations.*)


(* ::Section::Initialization:: *)
(*User-Specific Definitions*)


(* ::Input::Initialization:: *)
$SoftwarePath=SetDirectory["/Users/sam/Documents/Software/"];
$MathematicaPath=SetDirectory["/Users/sam/Library/Mathematica/"];


(* ::Input::Initialization:: *)
$LocalPath=SetDirectory["/Users/sam/Documents/Research/BeamDumpBSM/"];


(* ::Section::Initialization:: *)
(*Software Directories*)


(* ::Input::Initialization:: *)
$FeynRulesPath=SetDirectory[FileNameJoin[{$SoftwarePath,"feynrules-current/"}]];
AppendTo[$Path, $FeynRulesPath];

$FeynArtsModelPath=SetDirectory[FileNameJoin[{$MathematicaPath,"Applications/FeynCalc/FeynArts/Models/"}]];

$MG5Path=SetDirectory[FileNameJoin[{$SoftwarePath,"MG5_aMC_v3_5_0/"}]];
$MG5ModelPath=SetDirectory[FileNameJoin[{$MG5Path, "models/"}]];


(* ::Section::Initialization:: *)
(*Local Directories*)


(* ::Input::Initialization:: *)
$LocalFeynRulesModelPath=SetDirectory[FileNameJoin[{$LocalPath,"FeynRules/models/"}]];

$LocalFeynArtsModelOutput=SetDirectory[FileNameJoin[{$LocalPath,"FeynRules/feynarts_output/"}]];

$LocalUFOModelOutput=SetDirectory[FileNameJoin[{$LocalPath,"FeynRules/UFO_output/"}]];

$LocalFunctionPath=SetDirectory[FileNameJoin[{$LocalPath,"functions/"}]];


(* ::Subsection:: *)
(*Specific Function Directories*)


(* ::Input::Initialization:: *)
$lowMassFormFactors=FileNameJoin[{$LocalFunctionPath,"lowmass_formfactors.m"}];



(* ::Input::Initialization:: *)
$scalar2to2Functions=FileNameJoin[{$LocalFunctionPath,"scalar_2to2.m"}];

$pseudoscalar2to2Functions=FileNameJoin[{$LocalFunctionPath,"pseudoscalar_2to2.m"}];

$vector2to2Functions=FileNameJoin[{$LocalFunctionPath,"vector_2to2.m"}];

$pseudovector2to2Functions=FileNameJoin[{$LocalFunctionPath,"pseudovector_2to2.m"}];


(* ::Input::Initialization:: *)
$IWWFunctions=FileNameJoin[{$LocalFunctionPath,"ImprovedWeizsackerWilliams.m"}];
