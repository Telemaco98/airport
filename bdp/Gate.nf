Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Gate))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Gate))==(Machine(Gate));
  Level(Machine(Gate))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Gate)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Gate))==(Airport_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Gate))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Gate))==(?);
  List_Includes(Machine(Gate))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Gate))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Gate))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Gate))==(?);
  Context_List_Variables(Machine(Gate))==(?);
  Abstract_List_Variables(Machine(Gate))==(?);
  Local_List_Variables(Machine(Gate))==(gates);
  List_Variables(Machine(Gate))==(gates);
  External_List_Variables(Machine(Gate))==(gates)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Gate))==(?);
  Abstract_List_VisibleVariables(Machine(Gate))==(?);
  External_List_VisibleVariables(Machine(Gate))==(?);
  Expanded_List_VisibleVariables(Machine(Gate))==(?);
  List_VisibleVariables(Machine(Gate))==(?);
  Internal_List_VisibleVariables(Machine(Gate))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Gate))==(btrue);
  Gluing_List_Invariant(Machine(Gate))==(btrue);
  Expanded_List_Invariant(Machine(Gate))==(btrue);
  Abstract_List_Invariant(Machine(Gate))==(btrue);
  Context_List_Invariant(Machine(Gate))==(btrue);
  List_Invariant(Machine(Gate))==(gates: gate --> AIRPLANE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Gate))==(btrue);
  Abstract_List_Assertions(Machine(Gate))==(btrue);
  Context_List_Assertions(Machine(Gate))==(btrue);
  List_Assertions(Machine(Gate))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Gate))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Gate))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Gate))==(gates:=gate*{plane_dummy});
  Context_List_Initialisation(Machine(Gate))==(skip);
  List_Initialisation(Machine(Gate))==(gates:=gate*{plane_dummy})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Gate))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Gate),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Gate))==(btrue);
  List_Constraints(Machine(Gate))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Gate))==(occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to);
  List_Operations(Machine(Gate))==(occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to)
END
&
THEORY ListInputX IS
  List_Input(Machine(Gate),occupy_gate)==(gg,aa);
  List_Input(Machine(Gate),vacate_gate)==(gg);
  List_Input(Machine(Gate),is_gate_occupied)==(gg);
  List_Input(Machine(Gate),gate_belongs_to)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Gate),occupy_gate)==(?);
  List_Output(Machine(Gate),vacate_gate)==(?);
  List_Output(Machine(Gate),is_gate_occupied)==(bb);
  List_Output(Machine(Gate),gate_belongs_to)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Gate),occupy_gate)==(occupy_gate(gg,aa));
  List_Header(Machine(Gate),vacate_gate)==(vacate_gate(gg));
  List_Header(Machine(Gate),is_gate_occupied)==(bb <-- is_gate_occupied(gg));
  List_Header(Machine(Gate),gate_belongs_to)==(aa <-- gate_belongs_to(gg))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Gate),occupy_gate)==(aa: AIRPLANE & gg: gate & aa/:ran(gates) & gates(gg) = plane_dummy);
  List_Precondition(Machine(Gate),vacate_gate)==(gg: gate & gates(gg)/=plane_dummy);
  List_Precondition(Machine(Gate),is_gate_occupied)==(gg: gate);
  List_Precondition(Machine(Gate),gate_belongs_to)==(gg: gate & gates(gg)/=plane_dummy)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Gate),gate_belongs_to)==(gg: gate & gates(gg)/=plane_dummy | aa:=gates(gg));
  Expanded_List_Substitution(Machine(Gate),is_gate_occupied)==(gg: gate | gates(gg) = plane_dummy ==> bb:=FALSE [] not(gates(gg) = plane_dummy) ==> bb:=TRUE);
  Expanded_List_Substitution(Machine(Gate),vacate_gate)==(gg: gate & gates(gg)/=plane_dummy | gates:=gates<+{gg|->plane_dummy});
  Expanded_List_Substitution(Machine(Gate),occupy_gate)==(aa: AIRPLANE & gg: gate & aa/:ran(gates) & gates(gg) = plane_dummy | gates:=gates<+{gg|->aa});
  List_Substitution(Machine(Gate),occupy_gate)==(gates(gg):=aa);
  List_Substitution(Machine(Gate),vacate_gate)==(gates(gg):=plane_dummy);
  List_Substitution(Machine(Gate),is_gate_occupied)==(IF gates(gg) = plane_dummy THEN bb:=FALSE ELSE bb:=TRUE END);
  List_Substitution(Machine(Gate),gate_belongs_to)==(aa:=gates(gg))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Gate))==(?);
  Inherited_List_Constants(Machine(Gate))==(?);
  List_Constants(Machine(Gate))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Gate),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Machine(Gate))==(STATUS,OCCUPATION);
  Context_List_Defered(Machine(Gate))==(AIRPLANE);
  Context_List_Sets(Machine(Gate))==(AIRPLANE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Gate))==(?);
  Inherited_List_Enumerated(Machine(Gate))==(?);
  Inherited_List_Defered(Machine(Gate))==(?);
  Inherited_List_Sets(Machine(Gate))==(?);
  List_Enumerated(Machine(Gate))==(?);
  List_Defered(Machine(Gate))==(?);
  List_Sets(Machine(Gate))==(?);
  Set_Definition(Machine(Gate),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Gate))==(?);
  Expanded_List_HiddenConstants(Machine(Gate))==(?);
  List_HiddenConstants(Machine(Gate))==(?);
  External_List_HiddenConstants(Machine(Gate))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Gate))==(btrue);
  Context_List_Properties(Machine(Gate))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Machine(Gate))==(btrue);
  List_Properties(Machine(Gate))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Gate),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Gate))==(?);
  Seen_Context_List_Invariant(Machine(Gate))==(btrue);
  Seen_Context_List_Assertions(Machine(Gate))==(btrue);
  Seen_Context_List_Properties(Machine(Gate))==(btrue);
  Seen_List_Constraints(Machine(Gate))==(btrue);
  Seen_List_Operations(Machine(Gate),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Gate),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Gate),occupy_gate)==(?);
  List_ANY_Var(Machine(Gate),vacate_gate)==(?);
  List_ANY_Var(Machine(Gate),is_gate_occupied)==(?);
  List_ANY_Var(Machine(Gate),gate_belongs_to)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Gate)) == (? | ? | gates | ? | occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Gate);
  List_Of_HiddenCst_Ids(Machine(Gate)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Gate)) == (?);
  List_Of_VisibleVar_Ids(Machine(Gate)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Gate)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Gate)) == (Type(gates) == Mvl(SetOf(btype(INTEGER,"[gate","]gate")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Gate)) == (Type(gate_belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_gate_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(vacate_gate) == Cst(No_type,btype(INTEGER,?,?));Type(occupy_gate) == Cst(No_type,btype(INTEGER,?,?)*atype(AIRPLANE,?,?)));
  Observers(Machine(Gate)) == (Type(gate_belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_gate_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
