(* ::Package:: *)

(* ::Title::Initialization:: *)
(*Typesetting for beam dump calculations*)


(* ::Section::Initialization:: *)
(*Fields*)

(* ::Input::Initialization:: *)
MakeBoxes[e, TraditionalForm] := "\(e\)";
MakeBoxes[mu, TraditionalForm] := "\(\[Mu]\)";
MakeBoxes[nu, TraditionalForm] := "\(\[Nu]\)";

MakeBoxes[Ns, TraditionalForm] := "\(\!\(\*SubscriptBox[\(N\), \(s\)]\)\)";
MakeBoxes[Nf, TraditionalForm] := "\(\!\(\*SubscriptBox[\(N\), \(f\)]\)\)";

MakeBoxes[S, TraditionalForm] := "\(S\)";
MakeBoxes[phi, TraditionalForm] := "\(\[Phi]\)";
MakeBoxes[V, TraditionalForm] := "\(\[ScriptCapitalV]\)";
MakeBoxes[U, TraditionalForm] := "\(\[ScriptCapitalU]\)";


(* ::Section::Initialization:: *)
(*Masses*)

(* ::Input::Initialization:: *)
MakeBoxes[mel, TraditionalForm] := "\(\!\(\*SubscriptBox[\(m\), \(e\)]\)\)";
MakeBoxes[mmu, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(m\), \(\[Mu]\)]\)\)";

MakeBoxes[Mi, TraditionalForm] := "\(\!\(\*SubscriptBox[\(M\), \(i\)]\)\)";
MakeBoxes[MNf, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(M\), SubscriptBox[\(N\), \(f\)]]\)\)";
MakeBoxes[MNs, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(M\), SubscriptBox[\(N\), \(s\)]]\)\)";

MakeBoxes[mS, TraditionalForm] := "\(\!\(\*SubscriptBox[\(m\), \(S\)]\)\)";
MakeBoxes[mphi, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(m\), \(\[Phi]\)]\)\)";
MakeBoxes[mV, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(m\), \(\[ScriptCapitalV]\)]\)\)";
MakeBoxes[mU, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(m\), \(\[ScriptCapitalU]\)]\)\)";


(* ::Section::Initialization:: *)
(*Form Factors*)

(* ::Input::Initialization:: *)
MakeBoxes[FFnuclidefermion, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(F\), \(fermion\)]\)\)";
MakeBoxes[FFnuclidescalar, TraditionalForm] :=
  "\(\!\(\*SubscriptBox[\(F\), \(scalar\)]\)\)";
