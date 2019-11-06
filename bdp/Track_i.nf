Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Track_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Track_i))==(Machine(Track));
  Level(Implementation(Track_i))==(1);
  Upper_Level(Implementation(Track_i))==(Machine(Track))
END
&
THEORY LoadedStructureX IS
  Implementation(Track_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Track_i))==(Airport_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Track_i))==(?);
  Inherited_List_Includes(Implementation(Track_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Track_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Track_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Track_i))==(?);
  Context_List_Variables(Implementation(Track_i))==(?);
  Abstract_List_Variables(Implementation(Track_i))==(status_track,tracks);
  Local_List_Variables(Implementation(Track_i))==(?);
  List_Variables(Implementation(Track_i))==(?);
  External_List_Variables(Implementation(Track_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Track_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Track_i))==(?);
  External_List_VisibleVariables(Implementation(Track_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Track_i))==(?);
  List_VisibleVariables(Implementation(Track_i))==(status_track_i,tracks_i);
  Internal_List_VisibleVariables(Implementation(Track_i))==(status_track_i,tracks_i)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Track_i))==(btrue);
  Expanded_List_Invariant(Implementation(Track_i))==(btrue);
  Abstract_List_Invariant(Implementation(Track_i))==(tracks: track --> AIRPLANE & status_track: track --> OCCUPATION);
  Context_List_Invariant(Implementation(Track_i))==(btrue);
  List_Invariant(Implementation(Track_i))==(tracks_i: 0..sz_tracks --> AIRPLANE & status_track_i: track --> OCCUPATION & tracks = tracks_i & status_track = status_track_i)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Track_i))==(btrue);
  Abstract_List_Assertions(Implementation(Track_i))==(btrue);
  Context_List_Assertions(Implementation(Track_i))==(btrue);
  List_Assertions(Implementation(Track_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Track_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Track_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Track_i))==(tracks_i:=(0..sz_tracks)*{plane_dummy};status_track_i:=track*{unoccupied});
  Context_List_Initialisation(Implementation(Track_i))==(skip);
  List_Initialisation(Implementation(Track_i))==(tracks_i:=(0..sz_tracks)*{plane_dummy};status_track_i:=track*{unoccupied})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Track_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Track_i),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Track_i))==(btrue);
  List_Context_Constraints(Implementation(Track_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Track_i))==(occupy_track,vacate_track,is_track_occupied,track_belongs_to);
  List_Operations(Implementation(Track_i))==(occupy_track,vacate_track,is_track_occupied,track_belongs_to)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Track_i),occupy_track)==(tt,aa);
  List_Input(Implementation(Track_i),vacate_track)==(tt);
  List_Input(Implementation(Track_i),is_track_occupied)==(tt);
  List_Input(Implementation(Track_i),track_belongs_to)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Track_i),occupy_track)==(?);
  List_Output(Implementation(Track_i),vacate_track)==(?);
  List_Output(Implementation(Track_i),is_track_occupied)==(bb);
  List_Output(Implementation(Track_i),track_belongs_to)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Track_i),occupy_track)==(occupy_track(tt,aa));
  List_Header(Implementation(Track_i),vacate_track)==(vacate_track(tt));
  List_Header(Implementation(Track_i),is_track_occupied)==(bb <-- is_track_occupied(tt));
  List_Header(Implementation(Track_i),track_belongs_to)==(aa <-- track_belongs_to(tt))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Track_i),occupy_track)==(btrue);
  List_Precondition(Implementation(Track_i),occupy_track)==(aa: AIRPLANE & tt: track & aa/:ran(tracks) & tracks(tt) = plane_dummy);
  Own_Precondition(Implementation(Track_i),vacate_track)==(btrue);
  List_Precondition(Implementation(Track_i),vacate_track)==(tt: track & tracks(tt)/=plane_dummy);
  Own_Precondition(Implementation(Track_i),is_track_occupied)==(btrue);
  List_Precondition(Implementation(Track_i),is_track_occupied)==(tt: track);
  Own_Precondition(Implementation(Track_i),track_belongs_to)==(btrue);
  List_Precondition(Implementation(Track_i),track_belongs_to)==(tt: track & tracks(tt)/=plane_dummy)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Track_i),track_belongs_to)==(tt: track & tracks(tt)/=plane_dummy & tt: dom(tracks_i) | aa:=tracks_i(tt));
  Expanded_List_Substitution(Implementation(Track_i),is_track_occupied)==(tt: track | @xx.((tt: dom(status_track_i) | xx:=status_track_i(tt));(xx = unoccupied ==> bb:=FALSE [] not(xx = unoccupied) ==> bb:=TRUE)));
  Expanded_List_Substitution(Implementation(Track_i),vacate_track)==(tt: track & tracks(tt)/=plane_dummy | (tt: dom(tracks_i) | tracks_i:=tracks_i<+{tt|->plane_dummy});(tt: dom(status_track_i) | status_track_i:=status_track_i<+{tt|->unoccupied}));
  Expanded_List_Substitution(Implementation(Track_i),occupy_track)==(aa: AIRPLANE & tt: track & aa/:ran(tracks) & tracks(tt) = plane_dummy | (tt: dom(tracks_i) | tracks_i:=tracks_i<+{tt|->aa});(tt: dom(status_track_i) | status_track_i:=status_track_i<+{tt|->occupied}));
  List_Substitution(Implementation(Track_i),occupy_track)==(tracks_i(tt):=aa;status_track_i(tt):=occupied);
  List_Substitution(Implementation(Track_i),vacate_track)==(tracks_i(tt):=plane_dummy;status_track_i(tt):=unoccupied);
  List_Substitution(Implementation(Track_i),is_track_occupied)==(VAR xx IN xx:=status_track_i(tt);IF xx = unoccupied THEN bb:=FALSE ELSE bb:=TRUE END END);
  List_Substitution(Implementation(Track_i),track_belongs_to)==(aa:=tracks_i(tt))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Track_i))==(?);
  Inherited_List_Constants(Implementation(Track_i))==(?);
  List_Constants(Implementation(Track_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Track_i),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Implementation(Track_i))==(STATUS,OCCUPATION);
  Context_List_Defered(Implementation(Track_i))==(AIRPLANE);
  Context_List_Sets(Implementation(Track_i))==(AIRPLANE,STATUS,OCCUPATION);
  List_Own_Enumerated(Implementation(Track_i))==(?);
  List_Valuable_Sets(Implementation(Track_i))==(?);
  Inherited_List_Enumerated(Implementation(Track_i))==(?);
  Inherited_List_Defered(Implementation(Track_i))==(?);
  Inherited_List_Sets(Implementation(Track_i))==(?);
  List_Enumerated(Implementation(Track_i))==(?);
  List_Defered(Implementation(Track_i))==(?);
  List_Sets(Implementation(Track_i))==(?);
  Set_Definition(Implementation(Track_i),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Track_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Track_i))==(?);
  List_HiddenConstants(Implementation(Track_i))==(?);
  External_List_HiddenConstants(Implementation(Track_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Track_i))==(btrue);
  Context_List_Properties(Implementation(Track_i))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Implementation(Track_i))==(btrue);
  List_Properties(Implementation(Track_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Track_i))==(aa: aa);
  List_Values(Implementation(Track_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Track_i),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Track_i))==(?);
  Seen_Context_List_Invariant(Implementation(Track_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Track_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Track_i))==(btrue);
  Seen_List_Constraints(Implementation(Track_i))==(btrue);
  Seen_List_Operations(Implementation(Track_i),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Track_i),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Track_i))==(Type(tracks_i) == Mvv(SetOf(btype(INTEGER,0,sz_tracks)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(status_track_i) == Mvv(SetOf(btype(INTEGER,"[track","]track")*etype(OCCUPATION,0,1))));
  Operations(Implementation(Track_i))==(Type(track_belongs_to) == Cst(atype(AIRPLANE,?,?),btype(INTEGER,?,?));Type(is_track_occupied) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(vacate_track) == Cst(No_type,btype(INTEGER,?,?));Type(occupy_track) == Cst(No_type,btype(INTEGER,?,?)*atype(AIRPLANE,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Track_i),Machine(Airport_ctx))==(sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Constants_Env(Implementation(Track_i),Machine(Airport_ctx))==(Type(out) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(departing) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(gate) == Cst(SetOf(btype(INTEGER,"[gate","]gate")));Type(track) == Cst(SetOf(btype(INTEGER,"[track","]track")));Type(plane_dummy) == Cst(atype(AIRPLANE,?,?)));
  List_Defered_Sets(Implementation(Track_i),Machine(Airport_ctx))==(AIRPLANE);
  Enumerate_Definition(Implementation(Track_i),Machine(Airport_ctx),OCCUPATION)==({occupied,unoccupied});
  Enumerate_Definition(Implementation(Track_i),Machine(Airport_ctx),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Track_i)) == (? | ? | ? | ? | occupy_track,vacate_track,is_track_occupied,track_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Track_i);
  List_Of_HiddenCst_Ids(Implementation(Track_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Track_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Track_i)) == (status_track_i,tracks_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Track_i)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Track_i)) == (Type(status_track_i) == Mvv(SetOf(btype(INTEGER,"[track","]track")*etype(OCCUPATION,0,1)));Type(tracks_i) == Mvv(SetOf(btype(INTEGER,0,sz_tracks)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Track_i),is_track_occupied, 1) == (Type(xx) == Lvl(etype(OCCUPATION,?,?)))
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
  List_Local_Operations(Implementation(Track_i))==(?)
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
  TypingPredicate(Implementation(Track_i))==(tracks_i: POW(INTEGER*AIRPLANE) & status_track_i: POW(INTEGER*OCCUPATION))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
