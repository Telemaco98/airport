Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Airport_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Airport_i))==(Machine(Airport));
  Level(Implementation(Airport_i))==(1);
  Upper_Level(Implementation(Airport_i))==(Machine(Airport))
END
&
THEORY LoadedStructureX IS
  Implementation(Airport_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Airport_i))==(Airport_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Airport_i))==(Airplane,Track,Gate);
  Inherited_List_Includes(Implementation(Airport_i))==(Gate,Track,Airplane)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Airport_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Airport_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Airport_i))==(?);
  Context_List_Variables(Implementation(Airport_i))==(?);
  Abstract_List_Variables(Implementation(Airport_i))==(status_airplane,parking,landing,gates,status_track,tracks,pointer,airplanes);
  Local_List_Variables(Implementation(Airport_i))==(?);
  List_Variables(Implementation(Airport_i))==(pointer,airplanes,status_track,tracks,gates);
  External_List_Variables(Implementation(Airport_i))==(pointer,airplanes,status_track,tracks,gates)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Airport_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Airport_i))==(?);
  External_List_VisibleVariables(Implementation(Airport_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Airport_i))==(?);
  List_VisibleVariables(Implementation(Airport_i))==(status_airplane_i,parking_i,landing_i);
  Internal_List_VisibleVariables(Implementation(Airport_i))==(status_airplane_i,parking_i,landing_i)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Airport_i))==(btrue);
  Abstract_List_Invariant(Implementation(Airport_i))==(landing: AIRPLANE >+> track & parking: AIRPLANE >+> gate & status_airplane: AIRPLANE --> STATUS & gates: gate --> AIRPLANE & tracks: track --> AIRPLANE & status_track: track --> OCCUPATION & pointer: 0..sz_airplanes & airplanes: 0..sz_airplanes --> AIRPLANE & 0..pointer-1<|airplanes: 0..pointer-1 >-> AIRPLANE);
  Expanded_List_Invariant(Implementation(Airport_i))==(pointer: 0..sz_airplanes & airplanes: 0..sz_airplanes --> AIRPLANE & 0..pointer-1<|airplanes: 0..pointer-1 >-> AIRPLANE & tracks: track --> AIRPLANE & status_track: track --> OCCUPATION & gates: gate --> AIRPLANE);
  Context_List_Invariant(Implementation(Airport_i))==(btrue);
  List_Invariant(Implementation(Airport_i))==(landing_i: track --> AIRPLANE & dom(landing_i) = ran(landing) & landing_i~ = landing & parking_i: gate --> AIRPLANE & dom(parking_i) = ran(parking) & parking_i~ = parking & status_airplane_i: AIRPLANE --> STATUS & status_airplane_i = status_airplane)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Airport_i))==(btrue);
  Expanded_List_Assertions(Implementation(Airport_i))==(btrue);
  Context_List_Assertions(Implementation(Airport_i))==(btrue);
  List_Assertions(Implementation(Airport_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Airport_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Airport_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Airport_i))==(airplanes,pointer:=(0..sz_airplanes)*{plane_dummy},0;tracks,status_track:=track*{plane_dummy},track*{unoccupied};gates:=gate*{plane_dummy};landing_i:=track*{plane_dummy};parking_i:=gate*{plane_dummy};status_airplane_i:=AIRPLANE*{out});
  Context_List_Initialisation(Implementation(Airport_i))==(skip);
  List_Initialisation(Implementation(Airport_i))==(landing_i:=track*{plane_dummy};parking_i:=gate*{plane_dummy};status_airplane_i:=AIRPLANE*{out})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Airport_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Airport_i),Machine(Airplane))==(?);
  List_Instanciated_Parameters(Implementation(Airport_i),Machine(Track))==(?);
  List_Instanciated_Parameters(Implementation(Airport_i),Machine(Gate))==(?);
  List_Instanciated_Parameters(Implementation(Airport_i),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Airport_i),Machine(Gate))==(btrue);
  List_Constraints(Implementation(Airport_i))==(btrue);
  List_Context_Constraints(Implementation(Airport_i))==(btrue);
  List_Constraints(Implementation(Airport_i),Machine(Track))==(btrue);
  List_Constraints(Implementation(Airport_i),Machine(Airplane))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Airport_i))==(add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked);
  List_Operations(Implementation(Airport_i))==(add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Airport_i),add_airplane)==(aa);
  List_Input(Implementation(Airport_i),land)==(aa,tt);
  List_Input(Implementation(Airport_i),park)==(aa,gg);
  List_Input(Implementation(Airport_i),board)==(aa);
  List_Input(Implementation(Airport_i),take_track)==(aa,tt);
  List_Input(Implementation(Airport_i),depart)==(aa);
  List_Input(Implementation(Airport_i),exclude_airplane)==(aa);
  List_Input(Implementation(Airport_i),can_landing)==(tt);
  List_Input(Implementation(Airport_i),query_status)==(aa);
  List_Input(Implementation(Airport_i),query_parked)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Airport_i),add_airplane)==(?);
  List_Output(Implementation(Airport_i),land)==(?);
  List_Output(Implementation(Airport_i),park)==(?);
  List_Output(Implementation(Airport_i),board)==(?);
  List_Output(Implementation(Airport_i),take_track)==(?);
  List_Output(Implementation(Airport_i),depart)==(?);
  List_Output(Implementation(Airport_i),exclude_airplane)==(?);
  List_Output(Implementation(Airport_i),can_landing)==(bb);
  List_Output(Implementation(Airport_i),query_status)==(bb);
  List_Output(Implementation(Airport_i),query_parked)==(gg)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Airport_i),add_airplane)==(add_airplane(aa));
  List_Header(Implementation(Airport_i),land)==(land(aa,tt));
  List_Header(Implementation(Airport_i),park)==(park(aa,gg));
  List_Header(Implementation(Airport_i),board)==(board(aa));
  List_Header(Implementation(Airport_i),take_track)==(take_track(aa,tt));
  List_Header(Implementation(Airport_i),depart)==(depart(aa));
  List_Header(Implementation(Airport_i),exclude_airplane)==(exclude_airplane(aa));
  List_Header(Implementation(Airport_i),can_landing)==(bb <-- can_landing(tt));
  List_Header(Implementation(Airport_i),query_status)==(bb <-- query_status(aa));
  List_Header(Implementation(Airport_i),query_parked)==(gg <-- query_parked(aa))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Airport_i),add_airplane)==(btrue);
  List_Precondition(Implementation(Airport_i),add_airplane)==(aa: AIRPLANE & aa/=plane_dummy & status_airplane(aa) = out & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes);
  Own_Precondition(Implementation(Airport_i),land)==(btrue);
  List_Precondition(Implementation(Airport_i),land)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(parking) & status_track(tt) = unoccupied & status_airplane(aa) = flighting);
  Own_Precondition(Implementation(Airport_i),park)==(btrue);
  List_Precondition(Implementation(Airport_i),park)==(gg: gate & aa: dom(landing) & gg/:ran(parking) & aa/:dom(parking) & status_airplane(aa) = alighting & aa: ran(0..pointer-1<|airplanes));
  Own_Precondition(Implementation(Airport_i),board)==(btrue);
  List_Precondition(Implementation(Airport_i),board)==(aa: dom(parking) & status_airplane(aa) = parked & aa: ran(0..pointer-1<|airplanes));
  Own_Precondition(Implementation(Airport_i),take_track)==(btrue);
  List_Precondition(Implementation(Airport_i),take_track)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa: dom(parking) & tt/:ran(landing) & aa/:dom(landing) & status_airplane(aa) = boarding & status_track(tt) = unoccupied);
  Own_Precondition(Implementation(Airport_i),depart)==(btrue);
  List_Precondition(Implementation(Airport_i),depart)==(aa: ran(0..pointer-1<|airplanes) & aa/:dom(parking) & aa: dom(landing) & (status_airplane(aa) = alighting or status_airplane(aa) = departing));
  Own_Precondition(Implementation(Airport_i),exclude_airplane)==(btrue);
  List_Precondition(Implementation(Airport_i),exclude_airplane)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) & status_airplane(aa) = flighting);
  Own_Precondition(Implementation(Airport_i),can_landing)==(btrue);
  List_Precondition(Implementation(Airport_i),can_landing)==(tt: track);
  Own_Precondition(Implementation(Airport_i),query_status)==(btrue);
  List_Precondition(Implementation(Airport_i),query_status)==(aa: AIRPLANE);
  Own_Precondition(Implementation(Airport_i),query_parked)==(btrue);
  List_Precondition(Implementation(Airport_i),query_parked)==(aa: AIRPLANE & aa: dom(parking))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Airport_i),query_parked)==(aa: AIRPLANE & aa: dom(parking) & parking_i~(aa): INT & aa: dom(parking_i~) | gg:=parking_i~(aa));
  Expanded_List_Substitution(Implementation(Airport_i),query_status)==(aa: AIRPLANE & aa: dom(status_airplane_i) | bb:=status_airplane_i(aa));
  Expanded_List_Substitution(Implementation(Airport_i),can_landing)==(tt: track | @(ii,nsz,plane_current).(ii:=0;nsz:=sz_gates;bb:=FALSE;(ii: dom(landing_i) | plane_current:=landing_i(ii));WHILE ii<sz_gates DO (ii: dom(landing_i) | plane_current:=landing_i(ii));(plane_dummy = plane_current & tt = ii ==> bb:=TRUE [] not(plane_dummy = plane_current & tt = ii) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: NAT & ii<=nsz VARIANT nsz-ii END));
  Expanded_List_Substitution(Implementation(Airport_i),exclude_airplane)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) & status_airplane(aa) = flighting | (aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) | airplanes,pointer:=airplanes<+{(0..pointer-1<|airplanes)~(aa)|->airplanes(pointer-1)},pointer-1);(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->out}));
  Expanded_List_Substitution(Implementation(Airport_i),depart)==(aa: ran(0..pointer-1<|airplanes) & aa/:dom(parking) & aa: dom(landing) & (status_airplane(aa) = alighting or status_airplane(aa) = departing) | (aa: dom(landing_i~) & landing_i~(aa): track & tracks(landing_i~(aa))/=plane_dummy | tracks,status_track:=tracks<+{landing_i~(aa)|->plane_dummy},status_track<+{landing_i~(aa)|->unoccupied});(aa: dom(landing_i~) & landing_i~(aa): dom(landing_i) | landing_i:=landing_i<+{landing_i~(aa)|->plane_dummy});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->flighting}));
  Expanded_List_Substitution(Implementation(Airport_i),take_track)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa: dom(parking) & tt/:ran(landing) & aa/:dom(landing) & status_airplane(aa) = boarding & status_track(tt) = unoccupied | (aa: AIRPLANE & tt: track & aa/:ran(tracks) & tracks(tt) = plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied});(aa: dom(parking_i~) & parking_i~(aa): gate & gates(parking_i~(aa))/=plane_dummy | gates:=gates<+{parking_i~(aa)|->plane_dummy});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->departing});(aa: dom(parking_i~) & parking_i~(aa): dom(parking_i) | parking_i:=parking_i<+{parking_i~(aa)|->plane_dummy});(tt: dom(landing_i) | landing_i:=landing_i<+{tt|->aa}));
  Expanded_List_Substitution(Implementation(Airport_i),board)==(aa: dom(parking) & status_airplane(aa) = parked & aa: ran(0..pointer-1<|airplanes) & aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->boarding});
  Expanded_List_Substitution(Implementation(Airport_i),park)==(gg: gate & aa: dom(landing) & gg/:ran(parking) & aa/:dom(parking) & status_airplane(aa) = alighting & aa: ran(0..pointer-1<|airplanes) | (aa: AIRPLANE & gg: gate & aa/:ran(gates) & gates(gg) = plane_dummy | gates:=gates<+{gg|->aa});(aa: dom(landing_i~) & landing_i~(aa): track & tracks(landing_i~(aa))/=plane_dummy | tracks,status_track:=tracks<+{landing_i~(aa)|->plane_dummy},status_track<+{landing_i~(aa)|->unoccupied});(aa: dom(landing_i~) & landing_i~(aa): dom(landing_i) | landing_i:=landing_i<+{landing_i~(aa)|->plane_dummy});(gg: dom(parking_i) | parking_i:=parking_i<+{gg|->aa});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->parked}));
  Expanded_List_Substitution(Implementation(Airport_i),land)==(tt: track & aa: ran(0..pointer-1<|airplanes) & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(parking) & status_track(tt) = unoccupied & status_airplane(aa) = flighting | (aa: AIRPLANE & tt: track & aa/:ran(tracks) & tracks(tt) = plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied});(tt: dom(landing_i) | landing_i:=landing_i<+{tt|->aa});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->alighting}));
  Expanded_List_Substitution(Implementation(Airport_i),add_airplane)==(aa: AIRPLANE & aa/=plane_dummy & status_airplane(aa) = out & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes | (aa: AIRPLANE & aa/=plane_dummy & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes | airplanes,pointer:=airplanes<+{pointer|->aa},pointer+1);(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->flighting}));
  List_Substitution(Implementation(Airport_i),add_airplane)==(add_plane(aa);status_airplane_i(aa):=flighting);
  List_Substitution(Implementation(Airport_i),land)==(occupy_track(tt,aa);landing_i(tt):=aa;status_airplane_i(aa):=alighting);
  List_Substitution(Implementation(Airport_i),park)==(occupy_gate(gg,aa);vacate_track(landing_i~(aa));landing_i(landing_i~(aa)):=plane_dummy;parking_i(gg):=aa;status_airplane_i(aa):=parked);
  List_Substitution(Implementation(Airport_i),board)==(status_airplane_i(aa):=boarding);
  List_Substitution(Implementation(Airport_i),take_track)==(occupy_track(tt,aa);vacate_gate(parking_i~(aa));status_airplane_i(aa):=departing;parking_i(parking_i~(aa)):=plane_dummy;landing_i(tt):=aa);
  List_Substitution(Implementation(Airport_i),depart)==(vacate_track(landing_i~(aa));landing_i(landing_i~(aa)):=plane_dummy;status_airplane_i(aa):=flighting);
  List_Substitution(Implementation(Airport_i),exclude_airplane)==(remove(aa);status_airplane_i(aa):=out);
  List_Substitution(Implementation(Airport_i),can_landing)==(VAR ii,nsz,plane_current IN ii:=0;nsz:=sz_gates;bb:=FALSE;plane_current:=landing_i(ii);WHILE ii<sz_gates DO plane_current:=landing_i(ii);IF plane_dummy = plane_current & tt = ii THEN bb:=TRUE END;ii:=ii+1 INVARIANT ii: NAT & ii<=nsz VARIANT nsz-ii END END);
  List_Substitution(Implementation(Airport_i),query_status)==(bb:=status_airplane_i(aa));
  List_Substitution(Implementation(Airport_i),query_parked)==(gg:=parking_i~(aa))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Airport_i))==(?);
  Inherited_List_Constants(Implementation(Airport_i))==(?);
  List_Constants(Implementation(Airport_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Airport_i),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Implementation(Airport_i))==(STATUS,OCCUPATION);
  Context_List_Defered(Implementation(Airport_i))==(AIRPLANE);
  Context_List_Sets(Implementation(Airport_i))==(AIRPLANE,STATUS,OCCUPATION);
  List_Own_Enumerated(Implementation(Airport_i))==(?);
  List_Valuable_Sets(Implementation(Airport_i))==(?);
  Inherited_List_Enumerated(Implementation(Airport_i))==(?);
  Inherited_List_Defered(Implementation(Airport_i))==(?);
  Inherited_List_Sets(Implementation(Airport_i))==(?);
  List_Enumerated(Implementation(Airport_i))==(?);
  List_Defered(Implementation(Airport_i))==(?);
  List_Sets(Implementation(Airport_i))==(?);
  Set_Definition(Implementation(Airport_i),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Airport_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Airport_i))==(?);
  List_HiddenConstants(Implementation(Airport_i))==(?);
  External_List_HiddenConstants(Implementation(Airport_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Airport_i))==(btrue);
  Context_List_Properties(Implementation(Airport_i))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Implementation(Airport_i))==(btrue);
  List_Properties(Implementation(Airport_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Airport_i))==(aa: aa);
  List_Values(Implementation(Airport_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Airport_i),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Airport_i))==(?);
  Seen_Context_List_Invariant(Implementation(Airport_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Airport_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Airport_i))==(btrue);
  Seen_List_Constraints(Implementation(Airport_i))==(btrue);
  Seen_List_Operations(Implementation(Airport_i),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Airport_i),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Airport_i),Machine(Gate))==(occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to);
  List_Included_Operations(Implementation(Airport_i),Machine(Track))==(occupy_track,vacate_track,is_track_occupied,track_belongs_to);
  List_Included_Operations(Implementation(Airport_i),Machine(Airplane))==(add_plane,remove,remove_on,has_airplane)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Airport_i))==(Type(landing_i) == Mvv(SetOf(btype(INTEGER,"[track","]track")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(parking_i) == Mvv(SetOf(btype(INTEGER,"[gate","]gate")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(status_airplane_i) == Mvv(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")*etype(STATUS,0,5))));
  Operations(Implementation(Airport_i))==(Type(query_parked) == Cst(btype(INTEGER,?,?),atype(AIRPLANE,?,?));Type(query_status) == Cst(etype(STATUS,?,?),atype(AIRPLANE,?,?));Type(can_landing) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(exclude_airplane) == Cst(No_type,atype(AIRPLANE,?,?));Type(depart) == Cst(No_type,atype(AIRPLANE,?,?));Type(take_track) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(board) == Cst(No_type,atype(AIRPLANE,?,?));Type(park) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(land) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(add_airplane) == Cst(No_type,atype(AIRPLANE,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Airport_i),Machine(Airport_ctx))==(sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Constants_Env(Implementation(Airport_i),Machine(Airport_ctx))==(Type(out) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(departing) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(gate) == Cst(SetOf(btype(INTEGER,"[gate","]gate")));Type(track) == Cst(SetOf(btype(INTEGER,"[track","]track")));Type(plane_dummy) == Cst(atype(AIRPLANE,?,?)));
  List_Defered_Sets(Implementation(Airport_i),Machine(Airport_ctx))==(AIRPLANE);
  Enumerate_Definition(Implementation(Airport_i),Machine(Airport_ctx),OCCUPATION)==({occupied,unoccupied});
  Enumerate_Definition(Implementation(Airport_i),Machine(Airport_ctx),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Airport_i)) == (? | ? | ? | gates,status_track,tracks,pointer,airplanes | add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked | ? | seen(Machine(Airport_ctx)),imported(Machine(Airplane)),imported(Machine(Track)),imported(Machine(Gate)) | ? | Airport_i);
  List_Of_HiddenCst_Ids(Implementation(Airport_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Airport_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Airport_i)) == (status_airplane_i,parking_i,landing_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Airport_i)) == (seen(Machine(Airport_ctx)): (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Gate)) == (? | ? | gates | ? | occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Gate);
  List_Of_HiddenCst_Ids(Machine(Gate)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Gate)) == (?);
  List_Of_VisibleVar_Ids(Machine(Gate)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Gate)) == (?: ?);
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
  List_Of_Ids(Machine(Airplane)) == (? | ? | pointer,airplanes | ? | add_plane,remove,remove_on,has_airplane | ? | seen(Machine(Airport_ctx)) | ? | Airplane);
  List_Of_HiddenCst_Ids(Machine(Airplane)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airplane)) == (?);
  List_Of_VisibleVar_Ids(Machine(Airplane)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airplane)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Airport_i)) == (Type(status_airplane_i) == Mvv(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")*etype(STATUS,0,5)));Type(parking_i) == Mvv(SetOf(btype(INTEGER,"[gate","]gate")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(landing_i) == Mvv(SetOf(btype(INTEGER,"[track","]track")*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Airport_i),can_landing, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?));Type(plane_current) == Lvl(atype(AIRPLANE,?,?)))
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
  List_Local_Operations(Implementation(Airport_i))==(?)
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
  TypingPredicate(Implementation(Airport_i))==(landing_i: POW(INTEGER*AIRPLANE) & parking_i: POW(INTEGER*AIRPLANE) & status_airplane_i: POW(AIRPLANE*STATUS))
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Airport_i),Machine(Airplane))==(pointer,airplanes);
  ImportedVisVariablesList(Implementation(Airport_i),Machine(Airplane))==(?);
  ImportedVariablesList(Implementation(Airport_i),Machine(Track))==(status_track,tracks);
  ImportedVisVariablesList(Implementation(Airport_i),Machine(Track))==(?);
  ImportedVariablesList(Implementation(Airport_i),Machine(Gate))==(gates);
  ImportedVisVariablesList(Implementation(Airport_i),Machine(Gate))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
