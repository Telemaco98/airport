Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Airport_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Airport_ctx))==(Machine(Airport_ctx));
  Level(Machine(Airport_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Airport_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Airport_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Airport_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Airport_ctx))==(?);
  List_Includes(Machine(Airport_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Airport_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Airport_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Airport_ctx))==(?);
  Context_List_Variables(Machine(Airport_ctx))==(?);
  Abstract_List_Variables(Machine(Airport_ctx))==(?);
  Local_List_Variables(Machine(Airport_ctx))==(?);
  List_Variables(Machine(Airport_ctx))==(?);
  External_List_Variables(Machine(Airport_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Airport_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(Airport_ctx))==(?);
  External_List_VisibleVariables(Machine(Airport_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(Airport_ctx))==(?);
  List_VisibleVariables(Machine(Airport_ctx))==(?);
  Internal_List_VisibleVariables(Machine(Airport_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Airport_ctx))==(btrue);
  Gluing_List_Invariant(Machine(Airport_ctx))==(btrue);
  Expanded_List_Invariant(Machine(Airport_ctx))==(btrue);
  Abstract_List_Invariant(Machine(Airport_ctx))==(btrue);
  Context_List_Invariant(Machine(Airport_ctx))==(btrue);
  List_Invariant(Machine(Airport_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Airport_ctx))==(btrue);
  Abstract_List_Assertions(Machine(Airport_ctx))==(btrue);
  Context_List_Assertions(Machine(Airport_ctx))==(btrue);
  List_Assertions(Machine(Airport_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Airport_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Airport_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Airport_ctx))==(skip);
  Context_List_Initialisation(Machine(Airport_ctx))==(skip);
  List_Initialisation(Machine(Airport_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Airport_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Airport_ctx))==(btrue);
  List_Constraints(Machine(Airport_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Airport_ctx))==(?);
  List_Operations(Machine(Airport_ctx))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Airport_ctx))==(sz_gates,sz_tracks);
  Inherited_List_Constants(Machine(Airport_ctx))==(?);
  List_Constants(Machine(Airport_ctx))==(sz_gates,sz_tracks)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Airport_ctx),AIRPLANE)==(?);
  Context_List_Enumerated(Machine(Airport_ctx))==(?);
  Context_List_Defered(Machine(Airport_ctx))==(?);
  Context_List_Sets(Machine(Airport_ctx))==(?);
  List_Valuable_Sets(Machine(Airport_ctx))==(AIRPLANE,TRACK,GATE);
  Inherited_List_Enumerated(Machine(Airport_ctx))==(?);
  Inherited_List_Defered(Machine(Airport_ctx))==(?);
  Inherited_List_Sets(Machine(Airport_ctx))==(?);
  List_Enumerated(Machine(Airport_ctx))==(STATUS,OCCUPATION);
  List_Defered(Machine(Airport_ctx))==(AIRPLANE,TRACK,GATE);
  List_Sets(Machine(Airport_ctx))==(AIRPLANE,TRACK,GATE,STATUS,OCCUPATION);
  Set_Definition(Machine(Airport_ctx),TRACK)==(?);
  Set_Definition(Machine(Airport_ctx),GATE)==(?);
  Set_Definition(Machine(Airport_ctx),STATUS)==({boarding,flight_closed,taking_off,disembarking,confirmed,out});
  Set_Definition(Machine(Airport_ctx),OCCUPATION)==({occupied,unoccupied})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Airport_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(Airport_ctx))==(?);
  List_HiddenConstants(Machine(Airport_ctx))==(?);
  External_List_HiddenConstants(Machine(Airport_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Airport_ctx))==(btrue);
  Context_List_Properties(Machine(Airport_ctx))==(btrue);
  Inherited_List_Properties(Machine(Airport_ctx))==(btrue);
  List_Properties(Machine(Airport_ctx))==(sz_gates: NAT1 & sz_tracks: NAT1 & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & TRACK: FIN(INTEGER) & not(TRACK = {}) & GATE: FIN(INTEGER) & not(GATE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,AIRPLANE,TRACK,GATE,STATUS,OCCUPATION,boarding,flight_closed,taking_off,disembarking,confirmed,out,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Airport_ctx)) == (Type(AIRPLANE) == Cst(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(TRACK) == Cst(SetOf(atype(TRACK,"[TRACK","]TRACK")));Type(GATE) == Cst(SetOf(atype(GATE,"[GATE","]GATE")));Type(STATUS) == Cst(SetOf(etype(STATUS,0,5)));Type(OCCUPATION) == Cst(SetOf(etype(OCCUPATION,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Airport_ctx)) == (Type(boarding) == Cst(etype(STATUS,0,5));Type(flight_closed) == Cst(etype(STATUS,0,5));Type(taking_off) == Cst(etype(STATUS,0,5));Type(disembarking) == Cst(etype(STATUS,0,5));Type(confirmed) == Cst(etype(STATUS,0,5));Type(out) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?)))
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
