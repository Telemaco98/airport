Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Track))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Track))==(Machine(Track));
  Level(Machine(Track))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Track)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Track))==(Airport_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Track))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Track))==(?);
  List_Includes(Machine(Track))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Track))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Track))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Track))==(?);
  Context_List_Variables(Machine(Track))==(?);
  Abstract_List_Variables(Machine(Track))==(?);
  Local_List_Variables(Machine(Track))==(tracks);
  List_Variables(Machine(Track))==(tracks);
  External_List_Variables(Machine(Track))==(tracks)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Track))==(?);
  Abstract_List_VisibleVariables(Machine(Track))==(?);
  External_List_VisibleVariables(Machine(Track))==(?);
  Expanded_List_VisibleVariables(Machine(Track))==(?);
  List_VisibleVariables(Machine(Track))==(?);
  Internal_List_VisibleVariables(Machine(Track))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Track))==(btrue);
  Gluing_List_Invariant(Machine(Track))==(btrue);
  Expanded_List_Invariant(Machine(Track))==(btrue);
  Abstract_List_Invariant(Machine(Track))==(btrue);
  Context_List_Invariant(Machine(Track))==(btrue);
  List_Invariant(Machine(Track))==(tracks: 0..sz_tracks --> AIRPLANE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Track))==(btrue);
  Abstract_List_Assertions(Machine(Track))==(btrue);
  Context_List_Assertions(Machine(Track))==(btrue);
  List_Assertions(Machine(Track))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Track))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Track))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Track))==(tracks:=(0..sz_tracks)*{plane_dumb});
  Context_List_Initialisation(Machine(Track))==(skip);
  List_Initialisation(Machine(Track))==(tracks:=(0..sz_tracks)*{plane_dumb})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Track))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Track),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Track))==(btrue);
  List_Constraints(Machine(Track))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Track))==(occupy,vacate,is_occupied,belongs_to);
  List_Operations(Machine(Track))==(occupy,vacate,is_occupied,belongs_to)
END
&
THEORY ListInputX IS
  List_Input(Machine(Track),occupy)==(gg,aa);
  List_Input(Machine(Track),vacate)==(gg);
  List_Input(Machine(Track),is_occupied)==(gg);
  List_Input(Machine(Track),belongs_to)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Track),occupy)==(?);
  List_Output(Machine(Track),vacate)==(?);
  List_Output(Machine(Track),is_occupied)==(bb);
  List_Output(Machine(Track),belongs_to)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Track),occupy)==(occupy(gg,aa));
  List_Header(Machine(Track),vacate)==(vacate(gg));
  List_Header(Machine(Track),is_occupied)==(bb <-- is_occupied(gg));
  List_Header(Machine(Track),belongs_to)==(aa <-- belongs_to(gg))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Track),occupy)==(aa: AIRPLANE & gg: 0..sz_tracks & aa/:ran(tracks) & tracks(gg) = plane_dumb);
  List_Precondition(Machine(Track),vacate)==(gg: 0..sz_tracks & tracks(gg)/=plane_dumb);
  List_Precondition(Machine(Track),is_occupied)==(gg: 0..sz_tracks);
  List_Precondition(Machine(Track),belongs_to)==(gg: 0..sz_tracks & tracks(gg)/=plane_dumb)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Track),belongs_to)==(gg: 0..sz_tracks & tracks(gg)/=plane_dumb | aa:=tracks(gg));
  Expanded_List_Substitution(Machine(Track),is_occupied)==(gg: 0..sz_tracks | tracks(gg) = plane_dumb ==> bb:=FALSE [] not(tracks(gg) = plane_dumb) ==> bb:=TRUE);
  Expanded_List_Substitution(Machine(Track),vacate)==(gg: 0..sz_tracks & tracks(gg)/=plane_dumb | tracks:=tracks<+{gg|->plane_dumb});
  Expanded_List_Substitution(Machine(Track),occupy)==(aa: AIRPLANE & gg: 0..sz_tracks & aa/:ran(tracks) & tracks(gg) = plane_dumb | tracks:=tracks<+{gg|->aa});
  List_Substitution(Machine(Track),occupy)==(tracks(gg):=aa);
  List_Substitution(Machine(Track),vacate)==(tracks(gg):=plane_dumb);
  List_Substitution(Machine(Track),is_occupied)==(IF tracks(gg) = plane_dumb THEN bb:=FALSE ELSE bb:=TRUE END);
  List_Substitution(Machine(Track),belongs_to)==(aa:=tracks(gg))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Track))==(plane_dumb);
  Inherited_List_Constants(Machine(Track))==(?);
  List_Constants(Machine(Track))==(plane_dumb)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Track),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Machine(Track))==(STATUS,OCCUPATION);
  Context_List_Defered(Machine(Track))==(AIRPLANE,TRACK,GATE);
  Context_List_Sets(Machine(Track))==(AIRPLANE,TRACK,GATE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Track))==(?);
  Inherited_List_Enumerated(Machine(Track))==(?);
  Inherited_List_Defered(Machine(Track))==(?);
  Inherited_List_Sets(Machine(Track))==(?);
  List_Enumerated(Machine(Track))==(?);
  List_Defered(Machine(Track))==(?);
  List_Sets(Machine(Track))==(?);
  Set_Definition(Machine(Track),STATUS)==({boarding,flight_closed,taking_off,disembarking,confirmed,out})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Track))==(?);
  Expanded_List_HiddenConstants(Machine(Track))==(?);
  List_HiddenConstants(Machine(Track))==(?);
  External_List_HiddenConstants(Machine(Track))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Track))==(btrue);
  Context_List_Properties(Machine(Track))==(sz_gates: NAT1 & sz_tracks: NAT1 & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & TRACK: FIN(INTEGER) & not(TRACK = {}) & GATE: FIN(INTEGER) & not(GATE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Machine(Track))==(btrue);
  List_Properties(Machine(Track))==(plane_dumb: AIRPLANE)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Track),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Track))==(?);
  Seen_Context_List_Invariant(Machine(Track))==(btrue);
  Seen_Context_List_Assertions(Machine(Track))==(btrue);
  Seen_Context_List_Properties(Machine(Track))==(btrue);
  Seen_List_Constraints(Machine(Track))==(btrue);
  Seen_List_Operations(Machine(Track),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Track),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Track),occupy)==(?);
  List_ANY_Var(Machine(Track),vacate)==(?);
  List_ANY_Var(Machine(Track),is_occupied)==(?);
  List_ANY_Var(Machine(Track),belongs_to)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Track)) == (plane_dumb | ? | tracks | ? | occupy,vacate,is_occupied,belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Track);
  List_Of_HiddenCst_Ids(Machine(Track)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Track)) == (plane_dumb);
  List_Of_VisibleVar_Ids(Machine(Track)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Track)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,AIRPLANE,TRACK,GATE,STATUS,OCCUPATION,boarding,flight_closed,taking_off,disembarking,confirmed,out,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Track)) == (Type(plane_dumb) == Cst(atype(AIRPLANE,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Track)) == (Type(tracks) == Mvl(SetOf(btype(INTEGER,0,sz_tracks)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Track)) == (Type(belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(vacate) == Cst(No_type,btype(INTEGER,?,?));Type(occupy) == Cst(No_type,btype(INTEGER,?,?)*atype(AIRPLANE,?,?)));
  Observers(Machine(Track)) == (Type(belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
