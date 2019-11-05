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
  List_Invariant(Machine(Gate))==(gates: 0..sz_gates --> AIRPLANE)
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
  Expanded_List_Initialisation(Machine(Gate))==(gates:=(0..sz_gates)*{plane_dumb});
  Context_List_Initialisation(Machine(Gate))==(skip);
  List_Initialisation(Machine(Gate))==(gates:=(0..sz_gates)*{plane_dumb})
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
  Internal_List_Operations(Machine(Gate))==(occupy,vacate,is_occupied,belongs_to);
  List_Operations(Machine(Gate))==(occupy,vacate,is_occupied,belongs_to)
END
&
THEORY ListInputX IS
  List_Input(Machine(Gate),occupy)==(gg,aa);
  List_Input(Machine(Gate),vacate)==(gg);
  List_Input(Machine(Gate),is_occupied)==(gg);
  List_Input(Machine(Gate),belongs_to)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Gate),occupy)==(?);
  List_Output(Machine(Gate),vacate)==(?);
  List_Output(Machine(Gate),is_occupied)==(bb);
  List_Output(Machine(Gate),belongs_to)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Gate),occupy)==(occupy(gg,aa));
  List_Header(Machine(Gate),vacate)==(vacate(gg));
  List_Header(Machine(Gate),is_occupied)==(bb <-- is_occupied(gg));
  List_Header(Machine(Gate),belongs_to)==(aa <-- belongs_to(gg))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Gate),occupy)==(aa: AIRPLANE & gg: 0..sz_gates & aa/:ran(gates) & gates(gg) = plane_dumb);
  List_Precondition(Machine(Gate),vacate)==(gg: 0..sz_gates & gates(gg)/=plane_dumb);
  List_Precondition(Machine(Gate),is_occupied)==(gg: 0..sz_gates);
  List_Precondition(Machine(Gate),belongs_to)==(gg: 0..sz_gates & gates(gg)/=plane_dumb)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Gate),belongs_to)==(gg: 0..sz_gates & gates(gg)/=plane_dumb | aa:=gates(gg));
  Expanded_List_Substitution(Machine(Gate),is_occupied)==(gg: 0..sz_gates | gates(gg) = plane_dumb ==> bb:=FALSE [] not(gates(gg) = plane_dumb) ==> bb:=TRUE);
  Expanded_List_Substitution(Machine(Gate),vacate)==(gg: 0..sz_gates & gates(gg)/=plane_dumb | gates:=gates<+{gg|->plane_dumb});
  Expanded_List_Substitution(Machine(Gate),occupy)==(aa: AIRPLANE & gg: 0..sz_gates & aa/:ran(gates) & gates(gg) = plane_dumb | gates:=gates<+{gg|->aa});
  List_Substitution(Machine(Gate),occupy)==(gates(gg):=aa);
  List_Substitution(Machine(Gate),vacate)==(gates(gg):=plane_dumb);
  List_Substitution(Machine(Gate),is_occupied)==(IF gates(gg) = plane_dumb THEN bb:=FALSE ELSE bb:=TRUE END);
  List_Substitution(Machine(Gate),belongs_to)==(aa:=gates(gg))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Gate))==(plane_dumb);
  Inherited_List_Constants(Machine(Gate))==(?);
  List_Constants(Machine(Gate))==(plane_dumb)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Gate),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Machine(Gate))==(STATUS,OCCUPATION);
  Context_List_Defered(Machine(Gate))==(AIRPLANE,TRACK,GATE);
  Context_List_Sets(Machine(Gate))==(AIRPLANE,TRACK,GATE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Gate))==(?);
  Inherited_List_Enumerated(Machine(Gate))==(?);
  Inherited_List_Defered(Machine(Gate))==(?);
  Inherited_List_Sets(Machine(Gate))==(?);
  List_Enumerated(Machine(Gate))==(?);
  List_Defered(Machine(Gate))==(?);
  List_Sets(Machine(Gate))==(?);
  Set_Definition(Machine(Gate),STATUS)==({boarding,flight_closed,taking_off,disembarking,confirmed,out})
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
  Context_List_Properties(Machine(Gate))==(sz_gates: NAT1 & sz_tracks: NAT1 & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & TRACK: FIN(INTEGER) & not(TRACK = {}) & GATE: FIN(INTEGER) & not(GATE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Machine(Gate))==(btrue);
  List_Properties(Machine(Gate))==(plane_dumb: AIRPLANE)
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
  List_ANY_Var(Machine(Gate),occupy)==(?);
  List_ANY_Var(Machine(Gate),vacate)==(?);
  List_ANY_Var(Machine(Gate),is_occupied)==(?);
  List_ANY_Var(Machine(Gate),belongs_to)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Gate)) == (plane_dumb | ? | gates | ? | occupy,vacate,is_occupied,belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Gate);
  List_Of_HiddenCst_Ids(Machine(Gate)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Gate)) == (plane_dumb);
  List_Of_VisibleVar_Ids(Machine(Gate)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Gate)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,AIRPLANE,TRACK,GATE,STATUS,OCCUPATION,boarding,flight_closed,taking_off,disembarking,confirmed,out,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Gate)) == (Type(plane_dumb) == Cst(atype(AIRPLANE,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Gate)) == (Type(gates) == Mvl(SetOf(btype(INTEGER,0,sz_gates)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Gate)) == (Type(belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(vacate) == Cst(No_type,btype(INTEGER,?,?));Type(occupy) == Cst(No_type,btype(INTEGER,?,?)*atype(AIRPLANE,?,?)));
  Observers(Machine(Gate)) == (Type(belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
