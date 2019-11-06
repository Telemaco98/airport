Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Gate_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Gate_i))==(Machine(Gate));
  Level(Implementation(Gate_i))==(1);
  Upper_Level(Implementation(Gate_i))==(Machine(Gate))
END
&
THEORY LoadedStructureX IS
  Implementation(Gate_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Gate_i))==(Airport_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Gate_i))==(?);
  Inherited_List_Includes(Implementation(Gate_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Gate_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Gate_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Gate_i))==(?);
  Context_List_Variables(Implementation(Gate_i))==(?);
  Abstract_List_Variables(Implementation(Gate_i))==(gates);
  Local_List_Variables(Implementation(Gate_i))==(?);
  List_Variables(Implementation(Gate_i))==(?);
  External_List_Variables(Implementation(Gate_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Gate_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Gate_i))==(?);
  External_List_VisibleVariables(Implementation(Gate_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Gate_i))==(?);
  List_VisibleVariables(Implementation(Gate_i))==(gates_i);
  Internal_List_VisibleVariables(Implementation(Gate_i))==(gates_i)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Gate_i))==(btrue);
  Expanded_List_Invariant(Implementation(Gate_i))==(btrue);
  Abstract_List_Invariant(Implementation(Gate_i))==(gates: gate --> AIRPLANE);
  Context_List_Invariant(Implementation(Gate_i))==(btrue);
  List_Invariant(Implementation(Gate_i))==(gates_i: 0..sz_gates --> AIRPLANE & gates_i = gates)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Gate_i))==(btrue);
  Abstract_List_Assertions(Implementation(Gate_i))==(btrue);
  Context_List_Assertions(Implementation(Gate_i))==(btrue);
  List_Assertions(Implementation(Gate_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Gate_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Gate_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Gate_i))==(gates_i:=(0..sz_gates)*{plane_dummy});
  Context_List_Initialisation(Implementation(Gate_i))==(skip);
  List_Initialisation(Implementation(Gate_i))==(gates_i:=(0..sz_gates)*{plane_dummy})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Gate_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Gate_i),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Gate_i))==(btrue);
  List_Context_Constraints(Implementation(Gate_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Gate_i))==(occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to);
  List_Operations(Implementation(Gate_i))==(occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Gate_i),occupy_gate)==(gg,aa);
  List_Input(Implementation(Gate_i),vacate_gate)==(gg);
  List_Input(Implementation(Gate_i),is_gate_occupied)==(gg);
  List_Input(Implementation(Gate_i),gate_belongs_to)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Gate_i),occupy_gate)==(?);
  List_Output(Implementation(Gate_i),vacate_gate)==(?);
  List_Output(Implementation(Gate_i),is_gate_occupied)==(bb);
  List_Output(Implementation(Gate_i),gate_belongs_to)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Gate_i),occupy_gate)==(occupy_gate(gg,aa));
  List_Header(Implementation(Gate_i),vacate_gate)==(vacate_gate(gg));
  List_Header(Implementation(Gate_i),is_gate_occupied)==(bb <-- is_gate_occupied(gg));
  List_Header(Implementation(Gate_i),gate_belongs_to)==(aa <-- gate_belongs_to(gg))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Gate_i),occupy_gate)==(btrue);
  List_Precondition(Implementation(Gate_i),occupy_gate)==(aa: AIRPLANE & gg: gate & aa/:ran(gates) & gates(gg) = plane_dummy);
  Own_Precondition(Implementation(Gate_i),vacate_gate)==(btrue);
  List_Precondition(Implementation(Gate_i),vacate_gate)==(gg: gate & gates(gg)/=plane_dummy);
  Own_Precondition(Implementation(Gate_i),is_gate_occupied)==(btrue);
  List_Precondition(Implementation(Gate_i),is_gate_occupied)==(gg: gate);
  Own_Precondition(Implementation(Gate_i),gate_belongs_to)==(btrue);
  List_Precondition(Implementation(Gate_i),gate_belongs_to)==(gg: gate & gates(gg)/=plane_dummy)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Gate_i),gate_belongs_to)==(gg: gate & gates(gg)/=plane_dummy & gg: dom(gates_i) | aa:=gates_i(gg));
  Expanded_List_Substitution(Implementation(Gate_i),is_gate_occupied)==(gg: gate | @aa.((gg: dom(gates_i) | aa:=gates_i(gg));(aa = plane_dummy ==> bb:=FALSE [] not(aa = plane_dummy) ==> bb:=TRUE)));
  Expanded_List_Substitution(Implementation(Gate_i),vacate_gate)==(gg: gate & gates(gg)/=plane_dummy & gg: dom(gates_i) | gates_i:=gates_i<+{gg|->plane_dummy});
  Expanded_List_Substitution(Implementation(Gate_i),occupy_gate)==(aa: AIRPLANE & gg: gate & aa/:ran(gates) & gates(gg) = plane_dummy & gg: dom(gates_i) | gates_i:=gates_i<+{gg|->aa});
  List_Substitution(Implementation(Gate_i),occupy_gate)==(gates_i(gg):=aa);
  List_Substitution(Implementation(Gate_i),vacate_gate)==(gates_i(gg):=plane_dummy);
  List_Substitution(Implementation(Gate_i),is_gate_occupied)==(VAR aa IN aa:=gates_i(gg);IF aa = plane_dummy THEN bb:=FALSE ELSE bb:=TRUE END END);
  List_Substitution(Implementation(Gate_i),gate_belongs_to)==(aa:=gates_i(gg))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Gate_i))==(?);
  Inherited_List_Constants(Implementation(Gate_i))==(?);
  List_Constants(Implementation(Gate_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Gate_i),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Implementation(Gate_i))==(STATUS,OCCUPATION);
  Context_List_Defered(Implementation(Gate_i))==(AIRPLANE);
  Context_List_Sets(Implementation(Gate_i))==(AIRPLANE,STATUS,OCCUPATION);
  List_Own_Enumerated(Implementation(Gate_i))==(?);
  List_Valuable_Sets(Implementation(Gate_i))==(?);
  Inherited_List_Enumerated(Implementation(Gate_i))==(?);
  Inherited_List_Defered(Implementation(Gate_i))==(?);
  Inherited_List_Sets(Implementation(Gate_i))==(?);
  List_Enumerated(Implementation(Gate_i))==(?);
  List_Defered(Implementation(Gate_i))==(?);
  List_Sets(Implementation(Gate_i))==(?);
  Set_Definition(Implementation(Gate_i),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Gate_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Gate_i))==(?);
  List_HiddenConstants(Implementation(Gate_i))==(?);
  External_List_HiddenConstants(Implementation(Gate_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Gate_i))==(btrue);
  Context_List_Properties(Implementation(Gate_i))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Implementation(Gate_i))==(btrue);
  List_Properties(Implementation(Gate_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Gate_i))==(aa: aa);
  List_Values(Implementation(Gate_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Gate_i),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Gate_i))==(?);
  Seen_Context_List_Invariant(Implementation(Gate_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Gate_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Gate_i))==(btrue);
  Seen_List_Constraints(Implementation(Gate_i))==(btrue);
  Seen_List_Operations(Implementation(Gate_i),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Gate_i),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Gate_i))==(Type(gates_i) == Mvv(SetOf(btype(INTEGER,0,sz_gates)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))));
  Operations(Implementation(Gate_i))==(Type(gate_belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_gate_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(vacate_gate) == Cst(No_type,btype(INTEGER,?,?));Type(occupy_gate) == Cst(No_type,btype(INTEGER,?,?)*atype(AIRPLANE,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Gate_i),Machine(Airport_ctx))==(sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Constants_Env(Implementation(Gate_i),Machine(Airport_ctx))==(Type(out) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(departing) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(gate) == Cst(SetOf(btype(INTEGER,"[gate","]gate")));Type(track) == Cst(SetOf(btype(INTEGER,"[track","]track")));Type(plane_dummy) == Cst(atype(AIRPLANE,?,?)));
  List_Defered_Sets(Implementation(Gate_i),Machine(Airport_ctx))==(AIRPLANE);
  Enumerate_Definition(Implementation(Gate_i),Machine(Airport_ctx),OCCUPATION)==({occupied,unoccupied});
  Enumerate_Definition(Implementation(Gate_i),Machine(Airport_ctx),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Gate_i)) == (? | ? | ? | ? | occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Gate_i);
  List_Of_HiddenCst_Ids(Implementation(Gate_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Gate_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Gate_i)) == (gates_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Gate_i)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Gate_i)) == (Type(gates_i) == Mvv(SetOf(btype(INTEGER,0,sz_gates)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Gate_i),is_gate_occupied, 1) == (Type(aa) == Lvl(atype(AIRPLANE,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Gate_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Gate_i))==(gates_i: POW(INTEGER*AIRPLANE))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
