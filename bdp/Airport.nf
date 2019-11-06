Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Airport))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Airport))==(Machine(Airport));
  Level(Machine(Airport))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Airport)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Airport))==(Airport_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Airport))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Airport))==(Airplane,Track,Gate);
  List_Includes(Machine(Airport))==(Gate,Track,Airplane)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Airport))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Airport))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Airport))==(?);
  Context_List_Variables(Machine(Airport))==(?);
  Abstract_List_Variables(Machine(Airport))==(?);
  Local_List_Variables(Machine(Airport))==(status_airplane,parking,landing);
  List_Variables(Machine(Airport))==(status_airplane,parking,landing,gates,status_track,tracks,pointer,airplanes);
  External_List_Variables(Machine(Airport))==(status_airplane,parking,landing,gates,status_track,tracks,pointer,airplanes)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Airport))==(?);
  Abstract_List_VisibleVariables(Machine(Airport))==(?);
  External_List_VisibleVariables(Machine(Airport))==(?);
  Expanded_List_VisibleVariables(Machine(Airport))==(?);
  List_VisibleVariables(Machine(Airport))==(?);
  Internal_List_VisibleVariables(Machine(Airport))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Airport))==(btrue);
  Gluing_List_Invariant(Machine(Airport))==(btrue);
  Abstract_List_Invariant(Machine(Airport))==(btrue);
  Expanded_List_Invariant(Machine(Airport))==(gates: gate --> AIRPLANE & tracks: track --> AIRPLANE & status_track: track --> OCCUPATION & pointer: 0..sz_airplanes & airplanes: 0..sz_airplanes --> AIRPLANE & 0..pointer-1<|airplanes: 0..pointer-1 >-> AIRPLANE);
  Context_List_Invariant(Machine(Airport))==(btrue);
  List_Invariant(Machine(Airport))==(landing: AIRPLANE >+> track & parking: AIRPLANE >+> gate & status_airplane: AIRPLANE --> STATUS)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Airport))==(btrue);
  Expanded_List_Assertions(Machine(Airport))==(btrue);
  Context_List_Assertions(Machine(Airport))==(btrue);
  List_Assertions(Machine(Airport))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Airport))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Airport))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Airport))==(gates:=gate*{plane_dummy};tracks,status_track:=track*{plane_dummy},track*{unoccupied};airplanes,pointer:=(0..sz_airplanes)*{plane_dummy},0;landing,parking,status_airplane:={},{},AIRPLANE*{out});
  Context_List_Initialisation(Machine(Airport))==(skip);
  List_Initialisation(Machine(Airport))==(landing:={} || parking:={} || status_airplane:=AIRPLANE*{out})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Airport))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Airport),Machine(Gate))==(?);
  List_Instanciated_Parameters(Machine(Airport),Machine(Track))==(?);
  List_Instanciated_Parameters(Machine(Airport),Machine(Airplane))==(?);
  List_Instanciated_Parameters(Machine(Airport),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Airport),Machine(Airplane))==(btrue);
  List_Context_Constraints(Machine(Airport))==(btrue);
  List_Constraints(Machine(Airport))==(btrue);
  List_Constraints(Machine(Airport),Machine(Track))==(btrue);
  List_Constraints(Machine(Airport),Machine(Gate))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Airport))==(add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked);
  List_Operations(Machine(Airport))==(add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked)
END
&
THEORY ListInputX IS
  List_Input(Machine(Airport),add_airplane)==(aa);
  List_Input(Machine(Airport),land)==(aa,tt);
  List_Input(Machine(Airport),park)==(aa,gg);
  List_Input(Machine(Airport),board)==(aa);
  List_Input(Machine(Airport),take_track)==(aa,tt);
  List_Input(Machine(Airport),depart)==(aa);
  List_Input(Machine(Airport),exclude_airplane)==(aa);
  List_Input(Machine(Airport),can_landing)==(tt);
  List_Input(Machine(Airport),query_status)==(aa);
  List_Input(Machine(Airport),query_parked)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Airport),add_airplane)==(?);
  List_Output(Machine(Airport),land)==(?);
  List_Output(Machine(Airport),park)==(?);
  List_Output(Machine(Airport),board)==(?);
  List_Output(Machine(Airport),take_track)==(?);
  List_Output(Machine(Airport),depart)==(?);
  List_Output(Machine(Airport),exclude_airplane)==(?);
  List_Output(Machine(Airport),can_landing)==(bb);
  List_Output(Machine(Airport),query_status)==(bb);
  List_Output(Machine(Airport),query_parked)==(gg)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Airport),add_airplane)==(add_airplane(aa));
  List_Header(Machine(Airport),land)==(land(aa,tt));
  List_Header(Machine(Airport),park)==(park(aa,gg));
  List_Header(Machine(Airport),board)==(board(aa));
  List_Header(Machine(Airport),take_track)==(take_track(aa,tt));
  List_Header(Machine(Airport),depart)==(depart(aa));
  List_Header(Machine(Airport),exclude_airplane)==(exclude_airplane(aa));
  List_Header(Machine(Airport),can_landing)==(bb <-- can_landing(tt));
  List_Header(Machine(Airport),query_status)==(bb <-- query_status(aa));
  List_Header(Machine(Airport),query_parked)==(gg <-- query_parked(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Airport),add_airplane)==(aa: AIRPLANE & aa/=plane_dummy & status_airplane(aa) = out & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes);
  List_Precondition(Machine(Airport),land)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(parking) & status_track(tt) = unoccupied & status_airplane(aa) = flighting);
  List_Precondition(Machine(Airport),park)==(gg: gate & aa: dom(landing) & gg/:ran(parking) & aa/:dom(parking) & status_airplane(aa) = alighting & aa: ran(0..pointer-1<|airplanes));
  List_Precondition(Machine(Airport),board)==(aa: dom(parking) & status_airplane(aa) = parked & aa: ran(0..pointer-1<|airplanes));
  List_Precondition(Machine(Airport),take_track)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa: dom(parking) & tt/:ran(landing) & aa/:dom(landing) & status_airplane(aa) = boarding & status_track(tt) = unoccupied);
  List_Precondition(Machine(Airport),depart)==(aa: ran(0..pointer-1<|airplanes) & aa/:dom(parking) & aa: dom(landing) & (status_airplane(aa) = alighting or status_airplane(aa) = departing));
  List_Precondition(Machine(Airport),exclude_airplane)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) & status_airplane(aa) = flighting);
  List_Precondition(Machine(Airport),can_landing)==(tt: track);
  List_Precondition(Machine(Airport),query_status)==(aa: AIRPLANE);
  List_Precondition(Machine(Airport),query_parked)==(aa: AIRPLANE & aa: dom(parking))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Airport),query_parked)==(aa: AIRPLANE & aa: dom(parking) | gg:=parking(aa));
  Expanded_List_Substitution(Machine(Airport),query_status)==(aa: AIRPLANE | bb:=status_airplane(aa));
  Expanded_List_Substitution(Machine(Airport),can_landing)==(tt: track | tt: ran(landing) ==> bb:=FALSE [] not(tt: ran(landing)) ==> bb:=TRUE);
  Expanded_List_Substitution(Machine(Airport),exclude_airplane)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) & status_airplane(aa) = flighting & aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) | airplanes,pointer:=airplanes<+{(0..pointer-1<|airplanes)~(aa)|->airplanes(pointer-1)},pointer-1 || status_airplane:=status_airplane<+{aa|->out});
  Expanded_List_Substitution(Machine(Airport),depart)==(aa: ran(0..pointer-1<|airplanes) & aa/:dom(parking) & aa: dom(landing) & (status_airplane(aa) = alighting or status_airplane(aa) = departing) & landing(aa): track & tracks(landing(aa))/=plane_dummy | tracks,status_track:=tracks<+{landing(aa)|->plane_dummy},status_track<+{landing(aa)|->unoccupied} || landing:={aa}<<|landing || status_airplane:=status_airplane<+{aa|->flighting});
  Expanded_List_Substitution(Machine(Airport),take_track)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa: dom(parking) & tt/:ran(landing) & aa/:dom(landing) & status_airplane(aa) = boarding & status_track(tt) = unoccupied & aa: AIRPLANE & tt: track & aa/:ran(tracks) & tracks(tt) = plane_dummy & parking(aa): gate & gates(parking(aa))/=plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied} || gates:=gates<+{parking(aa)|->plane_dummy} || status_airplane:=status_airplane<+{aa|->departing} || parking:={aa}<<|parking || landing:=landing<+{aa|->tt});
  Expanded_List_Substitution(Machine(Airport),board)==(aa: dom(parking) & status_airplane(aa) = parked & aa: ran(0..pointer-1<|airplanes) | status_airplane:=status_airplane<+{aa|->boarding});
  Expanded_List_Substitution(Machine(Airport),park)==(gg: gate & aa: dom(landing) & gg/:ran(parking) & aa/:dom(parking) & status_airplane(aa) = alighting & aa: ran(0..pointer-1<|airplanes) & aa: AIRPLANE & gg: gate & aa/:ran(gates) & gates(gg) = plane_dummy & landing(aa): track & tracks(landing(aa))/=plane_dummy | gates:=gates<+{gg|->aa} || tracks,status_track:=tracks<+{landing(aa)|->plane_dummy},status_track<+{landing(aa)|->unoccupied} || landing:={aa}<<|landing || parking:=parking\/{aa|->gg} || status_airplane:=status_airplane<+{aa|->parked});
  Expanded_List_Substitution(Machine(Airport),land)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(parking) & status_track(tt) = unoccupied & status_airplane(aa) = flighting & aa: AIRPLANE & tt: track & aa/:ran(tracks) & tracks(tt) = plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied} || landing:=landing<+{aa|->tt} || status_airplane:=status_airplane<+{aa|->alighting});
  Expanded_List_Substitution(Machine(Airport),add_airplane)==(aa: AIRPLANE & aa/=plane_dummy & status_airplane(aa) = out & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes & aa: AIRPLANE & aa/=plane_dummy & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes | airplanes,pointer:=airplanes<+{pointer|->aa},pointer+1 || status_airplane:=status_airplane<+{aa|->flighting});
  List_Substitution(Machine(Airport),add_airplane)==(add_plane(aa) || status_airplane(aa):=flighting);
  List_Substitution(Machine(Airport),land)==(occupy_track(tt,aa) || landing(aa):=tt || status_airplane:=status_airplane<+{aa|->alighting});
  List_Substitution(Machine(Airport),park)==(occupy_gate(gg,aa) || vacate_track(landing(aa)) || landing:={aa}<<|landing || parking:=parking\/{aa|->gg} || status_airplane(aa):=parked);
  List_Substitution(Machine(Airport),board)==(status_airplane(aa):=boarding);
  List_Substitution(Machine(Airport),take_track)==(occupy_track(tt,aa) || vacate_gate(parking(aa)) || status_airplane(aa):=departing || parking:={aa}<<|parking || landing(aa):=tt);
  List_Substitution(Machine(Airport),depart)==(vacate_track(landing(aa)) || landing:={aa}<<|landing || status_airplane(aa):=flighting);
  List_Substitution(Machine(Airport),exclude_airplane)==(remove(aa) || status_airplane(aa):=out);
  List_Substitution(Machine(Airport),can_landing)==(IF tt: ran(landing) THEN bb:=FALSE ELSE bb:=TRUE END);
  List_Substitution(Machine(Airport),query_status)==(bb:=status_airplane(aa));
  List_Substitution(Machine(Airport),query_parked)==(gg:=parking(aa))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Airport))==(?);
  Inherited_List_Constants(Machine(Airport))==(?);
  List_Constants(Machine(Airport))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Airport),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Machine(Airport))==(STATUS,OCCUPATION);
  Context_List_Defered(Machine(Airport))==(AIRPLANE);
  Context_List_Sets(Machine(Airport))==(AIRPLANE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Airport))==(?);
  Inherited_List_Enumerated(Machine(Airport))==(?);
  Inherited_List_Defered(Machine(Airport))==(?);
  Inherited_List_Sets(Machine(Airport))==(?);
  List_Enumerated(Machine(Airport))==(?);
  List_Defered(Machine(Airport))==(?);
  List_Sets(Machine(Airport))==(?);
  Set_Definition(Machine(Airport),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Airport))==(?);
  Expanded_List_HiddenConstants(Machine(Airport))==(?);
  List_HiddenConstants(Machine(Airport))==(?);
  External_List_HiddenConstants(Machine(Airport))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Airport))==(btrue);
  Context_List_Properties(Machine(Airport))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Machine(Airport))==(btrue);
  List_Properties(Machine(Airport))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Airport),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Airport))==(?);
  Seen_Context_List_Invariant(Machine(Airport))==(btrue);
  Seen_Context_List_Assertions(Machine(Airport))==(btrue);
  Seen_Context_List_Properties(Machine(Airport))==(btrue);
  Seen_List_Constraints(Machine(Airport))==(btrue);
  Seen_List_Operations(Machine(Airport),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Airport),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Airport),add_airplane)==(?);
  List_ANY_Var(Machine(Airport),land)==(?);
  List_ANY_Var(Machine(Airport),park)==(?);
  List_ANY_Var(Machine(Airport),board)==(?);
  List_ANY_Var(Machine(Airport),take_track)==(?);
  List_ANY_Var(Machine(Airport),depart)==(?);
  List_ANY_Var(Machine(Airport),exclude_airplane)==(?);
  List_ANY_Var(Machine(Airport),can_landing)==(?);
  List_ANY_Var(Machine(Airport),query_status)==(?);
  List_ANY_Var(Machine(Airport),query_parked)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Airport)) == (? | ? | status_airplane,parking,landing | pointer,airplanes,status_track,tracks,gates | add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked | ? | seen(Machine(Airport_ctx)),included(Machine(Gate)),included(Machine(Track)),included(Machine(Airplane)) | ? | Airport);
  List_Of_HiddenCst_Ids(Machine(Airport)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport)) == (?);
  List_Of_VisibleVar_Ids(Machine(Airport)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport)) == (seen(Machine(Airport_ctx)): (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Airplane)) == (? | ? | pointer,airplanes | ? | add_plane,remove,remove_on,has_airplane | ? | seen(Machine(Airport_ctx)) | ? | Airplane);
  List_Of_HiddenCst_Ids(Machine(Airplane)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airplane)) == (?);
  List_Of_VisibleVar_Ids(Machine(Airplane)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airplane)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?);
  List_Of_Ids(Machine(Track)) == (? | ? | status_track,tracks | ? | occupy_track,vacate_track,is_track_occupied,track_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Track);
  List_Of_HiddenCst_Ids(Machine(Track)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Track)) == (?);
  List_Of_VisibleVar_Ids(Machine(Track)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Track)) == (?: ?);
  List_Of_Ids(Machine(Gate)) == (? | ? | gates | ? | occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Gate);
  List_Of_HiddenCst_Ids(Machine(Gate)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Gate)) == (?);
  List_Of_VisibleVar_Ids(Machine(Gate)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Gate)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Airport)) == (Type(gates) == Mvl(SetOf(btype(INTEGER,"[gate","]gate")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(tracks) == Mvl(SetOf(btype(INTEGER,"[track","]track")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(status_track) == Mvl(SetOf(btype(INTEGER,"[track","]track")*etype(OCCUPATION,0,1)));Type(airplanes) == Mvl(SetOf(btype(INTEGER,0,sz_airplanes)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(pointer) == Mvl(btype(INTEGER,?,?));Type(status_airplane) == Mvl(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")*etype(STATUS,0,5)));Type(parking) == Mvl(SetOf(atype(AIRPLANE,?,?)*btype(INTEGER,?,?)));Type(landing) == Mvl(SetOf(atype(AIRPLANE,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Airport)) == (Type(query_parked) == Cst(btype(INTEGER,?,?),atype(AIRPLANE,?,?));Type(query_status) == Cst(etype(STATUS,?,?),atype(AIRPLANE,?,?));Type(can_landing) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(exclude_airplane) == Cst(No_type,atype(AIRPLANE,?,?));Type(depart) == Cst(No_type,atype(AIRPLANE,?,?));Type(take_track) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(board) == Cst(No_type,atype(AIRPLANE,?,?));Type(park) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(land) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(add_airplane) == Cst(No_type,atype(AIRPLANE,?,?)));
  Observers(Machine(Airport)) == (Type(query_parked) == Cst(btype(INTEGER,?,?),atype(AIRPLANE,?,?));Type(query_status) == Cst(etype(STATUS,?,?),atype(AIRPLANE,?,?));Type(can_landing) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
