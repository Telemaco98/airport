Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Airport_ctx_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Airport_ctx_i))==(Machine(Airport_ctx));
  Level(Implementation(Airport_ctx_i))==(1);
  Upper_Level(Implementation(Airport_ctx_i))==(Machine(Airport_ctx))
END
&
THEORY LoadedStructureX IS
  Implementation(Airport_ctx_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Airport_ctx_i))==(?);
  Inherited_List_Includes(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Airport_ctx_i))==(?);
  Context_List_Variables(Implementation(Airport_ctx_i))==(?);
  Abstract_List_Variables(Implementation(Airport_ctx_i))==(?);
  Local_List_Variables(Implementation(Airport_ctx_i))==(?);
  List_Variables(Implementation(Airport_ctx_i))==(?);
  External_List_Variables(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Airport_ctx_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Airport_ctx_i))==(?);
  External_List_VisibleVariables(Implementation(Airport_ctx_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Airport_ctx_i))==(?);
  List_VisibleVariables(Implementation(Airport_ctx_i))==(?);
  Internal_List_VisibleVariables(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Airport_ctx_i))==(btrue);
  Expanded_List_Invariant(Implementation(Airport_ctx_i))==(btrue);
  Abstract_List_Invariant(Implementation(Airport_ctx_i))==(btrue);
  Context_List_Invariant(Implementation(Airport_ctx_i))==(btrue);
  List_Invariant(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Airport_ctx_i))==(btrue);
  Abstract_List_Assertions(Implementation(Airport_ctx_i))==(btrue);
  Context_List_Assertions(Implementation(Airport_ctx_i))==(btrue);
  List_Assertions(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Airport_ctx_i))==(skip);
  Context_List_Initialisation(Implementation(Airport_ctx_i))==(skip);
  List_Initialisation(Implementation(Airport_ctx_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Airport_ctx_i))==(btrue);
  List_Context_Constraints(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Airport_ctx_i))==(?);
  List_Operations(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Airport_ctx_i))==(sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  Inherited_List_Constants(Implementation(Airport_ctx_i))==(sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Constants(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Airport_ctx_i),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Implementation(Airport_ctx_i))==(?);
  Context_List_Defered(Implementation(Airport_ctx_i))==(?);
  Context_List_Sets(Implementation(Airport_ctx_i))==(?);
  List_Own_Enumerated(Implementation(Airport_ctx_i))==(STATUS,OCCUPATION);
  List_Valuable_Sets(Implementation(Airport_ctx_i))==(AIRPLANE);
  Inherited_List_Enumerated(Implementation(Airport_ctx_i))==(STATUS,OCCUPATION);
  Inherited_List_Defered(Implementation(Airport_ctx_i))==(AIRPLANE);
  Inherited_List_Sets(Implementation(Airport_ctx_i))==(AIRPLANE,STATUS,OCCUPATION);
  List_Enumerated(Implementation(Airport_ctx_i))==(?);
  List_Defered(Implementation(Airport_ctx_i))==(?);
  List_Sets(Implementation(Airport_ctx_i))==(?);
  Set_Definition(Implementation(Airport_ctx_i),STATUS)==({out,flighting,alighting,parked,boarding,departing});
  Set_Definition(Implementation(Airport_ctx_i),AIRPLANE)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Airport_ctx_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Airport_ctx_i))==(?);
  List_HiddenConstants(Implementation(Airport_ctx_i))==(?);
  External_List_HiddenConstants(Implementation(Airport_ctx_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Airport_ctx_i))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Context_List_Properties(Implementation(Airport_ctx_i))==(btrue);
  Inherited_List_Properties(Implementation(Airport_ctx_i))==(btrue);
  List_Properties(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Airport_ctx_i))==(btrue);
  Values_Subs(Implementation(Airport_ctx_i))==(sz_gates,sz_tracks,sz_airplanes,gate,track,AIRPLANE,plane_dummy: 100,5,1000,0..100,0..5,0..1000,1000);
  List_Values(Implementation(Airport_ctx_i))==(sz_gates = 100;sz_tracks = 5;sz_airplanes = 1000;gate = 0..100;track = 0..5;AIRPLANE = 0..1000;plane_dummy = 1000)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Airport_ctx_i))==(Type(out) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(departing) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(gate) == Cst(SetOf(btype(INTEGER,"[gate","]gate")));Type(track) == Cst(SetOf(btype(INTEGER,"[track","]track")));Type(plane_dummy) == Cst(atype(AIRPLANE,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Airport_ctx_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Airport_ctx_i);
  List_Of_HiddenCst_Ids(Implementation(Airport_ctx_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Airport_ctx_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Airport_ctx_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Airport_ctx_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Airport_ctx_i)) == (Type(OCCUPATION) == Cst(SetOf(etype(OCCUPATION,0,1)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,5)));Type(AIRPLANE) == Cst(SetOf(btype(INTEGER,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Airport_ctx_i)) == (Type(plane_dummy) == Cst(btype(INTEGER,?,?));Type(track) == Cst(SetOf(btype(INTEGER,"[track","]track")));Type(gate) == Cst(SetOf(btype(INTEGER,"[gate","]gate")));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(departing) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(out) == Cst(etype(STATUS,0,5)))
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
  List_Local_Operations(Implementation(Airport_ctx_i))==(?)
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
  TypingPredicate(Implementation(Airport_ctx_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
