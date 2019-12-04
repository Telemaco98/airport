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
  Local_List_Variables(Machine(Track))==(status_track,tracks);
  List_Variables(Machine(Track))==(status_track,tracks);
  External_List_Variables(Machine(Track))==(status_track,tracks)
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
  List_Invariant(Machine(Track))==(tracks: 0..sz_tracks --> AIRPLANE & status_track: 0..sz_tracks --> OCCUPATION)
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
  Expanded_List_Initialisation(Machine(Track))==(tracks,status_track:=(0..sz_tracks)*{plane_dummy},(0..sz_tracks)*{unoccupied});
  Context_List_Initialisation(Machine(Track))==(skip);
  List_Initialisation(Machine(Track))==(tracks:=(0..sz_tracks)*{plane_dummy} || status_track:=(0..sz_tracks)*{unoccupied})
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
  Internal_List_Operations(Machine(Track))==(occupy_track,vacate_track,is_track_occupied,track_belongs_to);
  List_Operations(Machine(Track))==(occupy_track,vacate_track,is_track_occupied,track_belongs_to)
END
&
THEORY ListInputX IS
  List_Input(Machine(Track),occupy_track)==(tt,aa);
  List_Input(Machine(Track),vacate_track)==(tt);
  List_Input(Machine(Track),is_track_occupied)==(tt);
  List_Input(Machine(Track),track_belongs_to)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Track),occupy_track)==(?);
  List_Output(Machine(Track),vacate_track)==(?);
  List_Output(Machine(Track),is_track_occupied)==(bb);
  List_Output(Machine(Track),track_belongs_to)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Track),occupy_track)==(occupy_track(tt,aa));
  List_Header(Machine(Track),vacate_track)==(vacate_track(tt));
  List_Header(Machine(Track),is_track_occupied)==(bb <-- is_track_occupied(tt));
  List_Header(Machine(Track),track_belongs_to)==(aa <-- track_belongs_to(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Track),occupy_track)==(aa: AIRPLANE & tt: 0..sz_tracks & aa/:ran(tracks) & tracks(tt) = plane_dummy);
  List_Precondition(Machine(Track),vacate_track)==(tt: 0..sz_tracks & tracks(tt)/=plane_dummy);
  List_Precondition(Machine(Track),is_track_occupied)==(tt: 0..sz_tracks);
  List_Precondition(Machine(Track),track_belongs_to)==(tt: 0..sz_tracks & tracks(tt)/=plane_dummy)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Track),track_belongs_to)==(tt: 0..sz_tracks & tracks(tt)/=plane_dummy | aa:=tracks(tt));
  Expanded_List_Substitution(Machine(Track),is_track_occupied)==(tt: 0..sz_tracks | status_track(tt) = unoccupied ==> bb:=FALSE [] not(status_track(tt) = unoccupied) ==> bb:=TRUE);
  Expanded_List_Substitution(Machine(Track),vacate_track)==(tt: 0..sz_tracks & tracks(tt)/=plane_dummy | tracks,status_track:=tracks<+{tt|->plane_dummy},status_track<+{tt|->unoccupied});
  Expanded_List_Substitution(Machine(Track),occupy_track)==(aa: AIRPLANE & tt: 0..sz_tracks & aa/:ran(tracks) & tracks(tt) = plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied});
  List_Substitution(Machine(Track),occupy_track)==(tracks(tt):=aa || status_track(tt):=occupied);
  List_Substitution(Machine(Track),vacate_track)==(tracks(tt):=plane_dummy || status_track(tt):=unoccupied);
  List_Substitution(Machine(Track),is_track_occupied)==(IF status_track(tt) = unoccupied THEN bb:=FALSE ELSE bb:=TRUE END);
  List_Substitution(Machine(Track),track_belongs_to)==(aa:=tracks(tt))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Track))==(?);
  Inherited_List_Constants(Machine(Track))==(?);
  List_Constants(Machine(Track))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Track),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Machine(Track))==(STATUS,OCCUPATION);
  Context_List_Defered(Machine(Track))==(AIRPLANE);
  Context_List_Sets(Machine(Track))==(AIRPLANE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Track))==(?);
  Inherited_List_Enumerated(Machine(Track))==(?);
  Inherited_List_Defered(Machine(Track))==(?);
  Inherited_List_Sets(Machine(Track))==(?);
  List_Enumerated(Machine(Track))==(?);
  List_Defered(Machine(Track))==(?);
  List_Sets(Machine(Track))==(?);
  Set_Definition(Machine(Track),STATUS)==({out,flighting,alighting,parked,boarding,departing})
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
  Context_List_Properties(Machine(Track))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Machine(Track))==(btrue);
  List_Properties(Machine(Track))==(btrue)
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
  List_ANY_Var(Machine(Track),occupy_track)==(?);
  List_ANY_Var(Machine(Track),vacate_track)==(?);
  List_ANY_Var(Machine(Track),is_track_occupied)==(?);
  List_ANY_Var(Machine(Track),track_belongs_to)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Track)) == (? | ? | status_track,tracks | ? | occupy_track,vacate_track,is_track_occupied,track_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Track);
  List_Of_HiddenCst_Ids(Machine(Track)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Track)) == (?);
  List_Of_VisibleVar_Ids(Machine(Track)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Track)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Track)) == (Type(status_track) == Mvl(SetOf(btype(INTEGER,0,sz_tracks)*etype(OCCUPATION,0,1)));Type(tracks) == Mvl(SetOf(btype(INTEGER,0,sz_tracks)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Track)) == (Type(track_belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_track_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(vacate_track) == Cst(No_type,btype(INTEGER,?,?));Type(occupy_track) == Cst(No_type,btype(INTEGER,?,?)*atype(AIRPLANE,?,?)));
  Observers(Machine(Track)) == (Type(track_belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_track_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
