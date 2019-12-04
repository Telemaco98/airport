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
  Abstract_List_Variables(Implementation(Airport_i))==(status_airplane,parking,landing,gates,status_track,tracks,airplanes);
  Local_List_Variables(Implementation(Airport_i))==(?);
  List_Variables(Implementation(Airport_i))==(airplanes,status_track,tracks,gates);
  External_List_Variables(Implementation(Airport_i))==(airplanes,status_track,tracks,gates)
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
  Abstract_List_Invariant(Implementation(Airport_i))==(landing: AIRPLANE >+> 0..sz_tracks & parking: AIRPLANE >+> 0..sz_gates & status_airplane: AIRPLANE --> STATUS & gates: 0..sz_gates --> AIRPLANE & tracks: 0..sz_tracks --> AIRPLANE & status_track: 0..sz_tracks --> OCCUPATION & airplanes: 0..sz_airplanes >+> AIRPLANE);
  Expanded_List_Invariant(Implementation(Airport_i))==(airplanes: 0..sz_airplanes >+> AIRPLANE & tracks: 0..sz_tracks --> AIRPLANE & status_track: 0..sz_tracks --> OCCUPATION & gates: 0..sz_gates --> AIRPLANE);
  Context_List_Invariant(Implementation(Airport_i))==(btrue);
  List_Invariant(Implementation(Airport_i))==(landing_i: 0..sz_tracks --> AIRPLANE & dom(landing_i) = ran(landing) & (landing_i|>>{plane_dummy})~ = landing & parking_i: 0..sz_gates --> AIRPLANE & dom(parking_i) = ran(parking) & (parking_i|>>{plane_dummy})~ = parking & status_airplane_i: AIRPLANE --> STATUS & status_airplane_i = status_airplane)
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
  Expanded_List_Initialisation(Implementation(Airport_i))==(airplanes:={};tracks,status_track:=(0..sz_tracks)*{plane_dummy},(0..sz_tracks)*{unoccupied};gates:=(0..sz_gates)*{plane_dummy};landing_i:=(0..sz_tracks)*{plane_dummy};parking_i:=(0..sz_gates)*{plane_dummy};status_airplane_i:=AIRPLANE*{out});
  Context_List_Initialisation(Implementation(Airport_i))==(skip);
  List_Initialisation(Implementation(Airport_i))==(landing_i:=(0..sz_tracks)*{plane_dummy};parking_i:=(0..sz_gates)*{plane_dummy};status_airplane_i:=AIRPLANE*{out})
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
  List_Precondition(Implementation(Airport_i),add_airplane)==(aa: AIRPLANE & aa/=plane_dummy & status_airplane(aa) = out & aa/:ran(airplanes));
  Own_Precondition(Implementation(Airport_i),land)==(btrue);
  List_Precondition(Implementation(Airport_i),land)==(tt: 0..sz_tracks & aa: AIRPLANE & aa: ran(airplanes) & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(parking) & status_track(tt) = unoccupied & status_airplane(aa) = flighting);
  Own_Precondition(Implementation(Airport_i),park)==(btrue);
  List_Precondition(Implementation(Airport_i),park)==(gg: 0..sz_gates & aa: AIRPLANE & aa: dom(landing) & gg/:ran(parking) & aa/:dom(parking) & status_airplane(aa) = alighting & aa: ran(airplanes));
  Own_Precondition(Implementation(Airport_i),board)==(btrue);
  List_Precondition(Implementation(Airport_i),board)==(aa: AIRPLANE & aa: dom(parking) & status_airplane(aa) = parked & aa: ran(airplanes));
  Own_Precondition(Implementation(Airport_i),take_track)==(btrue);
  List_Precondition(Implementation(Airport_i),take_track)==(tt: 0..sz_tracks & aa: AIRPLANE & aa: ran(airplanes) & aa: dom(parking) & tt/:ran(landing) & aa/:dom(landing) & status_airplane(aa) = boarding & status_track(tt) = unoccupied);
  Own_Precondition(Implementation(Airport_i),depart)==(btrue);
  List_Precondition(Implementation(Airport_i),depart)==(aa: AIRPLANE & aa: ran(airplanes) & aa/:dom(parking) & aa: dom(landing) & (status_airplane(aa) = alighting or status_airplane(aa) = departing));
  Own_Precondition(Implementation(Airport_i),exclude_airplane)==(btrue);
  List_Precondition(Implementation(Airport_i),exclude_airplane)==(aa: AIRPLANE & aa: ran(airplanes) & status_airplane(aa) = flighting);
  Own_Precondition(Implementation(Airport_i),can_landing)==(btrue);
  List_Precondition(Implementation(Airport_i),can_landing)==(tt: 0..sz_tracks);
  Own_Precondition(Implementation(Airport_i),query_status)==(btrue);
  List_Precondition(Implementation(Airport_i),query_status)==(aa: AIRPLANE);
  Own_Precondition(Implementation(Airport_i),query_parked)==(btrue);
  List_Precondition(Implementation(Airport_i),query_parked)==(aa: AIRPLANE & aa: dom(parking))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Airport_i),query_parked)==(aa: AIRPLANE & aa: dom(parking) | @(ii,nsz,pp).(ii:=0;(sz_gates: INT | gg:=sz_gates);nsz:=sz_gates;(ii: dom(landing_i) | pp:=landing_i(ii));WHILE ii<sz_gates DO (ii: dom(parking_i) | pp:=parking_i(ii));(aa = pp ==> (ii: INT | gg:=ii) [] not(aa = pp) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..sz_gates VARIANT nsz-ii END));
  Expanded_List_Substitution(Implementation(Airport_i),query_status)==(aa: AIRPLANE & aa: dom(status_airplane_i) | bb:=status_airplane_i(aa));
  Expanded_List_Substitution(Implementation(Airport_i),can_landing)==(tt: 0..sz_tracks | @(ii,nsz).(ii:=0;bb:=FALSE;nsz:=sz_gates;WHILE ii<sz_tracks DO @pp.((ii: dom(landing_i) | pp:=landing_i(ii));(tt = ii & plane_dummy = pp ==> bb:=TRUE [] not(tt = ii & plane_dummy = pp) ==> skip));(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END));
  Expanded_List_Substitution(Implementation(Airport_i),exclude_airplane)==(aa: AIRPLANE & aa: ran(airplanes) & status_airplane(aa) = flighting | (aa: AIRPLANE & aa/=plane_dummy & aa: ran(airplanes) | airplanes:=airplanes|>>{aa});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->out}));
  Expanded_List_Substitution(Implementation(Airport_i),depart)==(aa: AIRPLANE & aa: ran(airplanes) & aa/:dom(parking) & aa: dom(landing) & (status_airplane(aa) = alighting or status_airplane(aa) = departing) | @(ii,nsz).(ii:=0;nsz:=sz_tracks;WHILE ii<nsz DO @cc.((ii: dom(landing_i) | cc:=landing_i(ii));(cc = aa ==> ((ii: 0..sz_tracks & tracks(ii)/=plane_dummy | tracks,status_track:=tracks<+{ii|->plane_dummy},status_track<+{ii|->unoccupied});(ii: dom(landing_i) | landing_i:=landing_i<+{ii|->plane_dummy})) [] not(cc = aa) ==> skip));(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END;(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->flighting})));
  Expanded_List_Substitution(Implementation(Airport_i),take_track)==(tt: 0..sz_tracks & aa: AIRPLANE & aa: ran(airplanes) & aa: dom(parking) & tt/:ran(landing) & aa/:dom(landing) & status_airplane(aa) = boarding & status_track(tt) = unoccupied | (aa: AIRPLANE & tt: 0..sz_tracks & aa/:ran(tracks) & tracks(tt) = plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied});@(ii,nsz).(ii:=0;nsz:=sz_tracks;WHILE ii<nsz DO @cc.((ii: dom(parking_i) | cc:=parking_i(ii));(cc = aa ==> ((ii: 0..sz_gates & gates(ii)/=plane_dummy | gates:=gates<+{ii|->plane_dummy});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->departing});(ii: dom(parking_i) | parking_i:=parking_i<+{ii|->plane_dummy})) [] not(cc = aa) ==> skip));(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END;(tt: dom(landing_i) | landing_i:=landing_i<+{tt|->aa})));
  Expanded_List_Substitution(Implementation(Airport_i),board)==(aa: AIRPLANE & aa: dom(parking) & status_airplane(aa) = parked & aa: ran(airplanes) & aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->boarding});
  Expanded_List_Substitution(Implementation(Airport_i),park)==(gg: 0..sz_gates & aa: AIRPLANE & aa: dom(landing) & gg/:ran(parking) & aa/:dom(parking) & status_airplane(aa) = alighting & aa: ran(airplanes) | (aa: AIRPLANE & gg: 0..sz_gates & aa/:ran(gates) & gates(gg) = plane_dummy | gates:=gates<+{gg|->aa});@(ii,nsz).(ii:=0;nsz:=sz_tracks;WHILE ii<nsz DO @cc.((ii: dom(landing_i) | cc:=landing_i(ii));(cc = aa ==> ((ii: 0..sz_tracks & tracks(ii)/=plane_dummy | tracks,status_track:=tracks<+{ii|->plane_dummy},status_track<+{ii|->unoccupied});(ii: dom(landing_i) | landing_i:=landing_i<+{ii|->plane_dummy})) [] not(cc = aa) ==> skip));(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END;(gg: dom(parking_i) | parking_i:=parking_i<+{gg|->aa});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->parked})));
  Expanded_List_Substitution(Implementation(Airport_i),land)==(tt: 0..sz_tracks & aa: AIRPLANE & aa: ran(airplanes) & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(parking) & status_track(tt) = unoccupied & status_airplane(aa) = flighting | (aa: AIRPLANE & tt: 0..sz_tracks & aa/:ran(tracks) & tracks(tt) = plane_dummy | tracks,status_track:=tracks<+{tt|->aa},status_track<+{tt|->occupied});(tt: dom(landing_i) | landing_i:=landing_i<+{tt|->aa});(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->alighting}));
  Expanded_List_Substitution(Implementation(Airport_i),add_airplane)==(aa: AIRPLANE & aa/=plane_dummy & status_airplane(aa) = out & aa/:ran(airplanes) | (aa: AIRPLANE & aa/=plane_dummy & aa/:ran(airplanes) | @xx.(xx: 0..sz_airplanes & xx/:dom(airplanes) ==> airplanes:=airplanes<+{xx|->aa}));(aa: dom(status_airplane_i) | status_airplane_i:=status_airplane_i<+{aa|->flighting}));
  List_Substitution(Implementation(Airport_i),add_airplane)==(add_plane(aa);status_airplane_i(aa):=flighting);
  List_Substitution(Implementation(Airport_i),land)==(occupy_track(tt,aa);landing_i(tt):=aa;status_airplane_i(aa):=alighting);
  List_Substitution(Implementation(Airport_i),park)==(occupy_gate(gg,aa);VAR ii,nsz IN ii:=0;nsz:=sz_tracks;WHILE ii<nsz DO VAR cc IN cc:=landing_i(ii);IF cc = aa THEN vacate_track(ii);landing_i(ii):=plane_dummy END END;ii:=ii+1 INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END;parking_i(gg):=aa;status_airplane_i(aa):=parked END);
  List_Substitution(Implementation(Airport_i),board)==(status_airplane_i(aa):=boarding);
  List_Substitution(Implementation(Airport_i),take_track)==(occupy_track(tt,aa);VAR ii,nsz IN ii:=0;nsz:=sz_tracks;WHILE ii<nsz DO VAR cc IN cc:=parking_i(ii);IF cc = aa THEN vacate_gate(ii);status_airplane_i(aa):=departing;parking_i(ii):=plane_dummy END END;ii:=ii+1 INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END;landing_i(tt):=aa END);
  List_Substitution(Implementation(Airport_i),depart)==(VAR ii,nsz IN ii:=0;nsz:=sz_tracks;WHILE ii<nsz DO VAR cc IN cc:=landing_i(ii);IF cc = aa THEN vacate_track(ii);landing_i(ii):=plane_dummy END END;ii:=ii+1 INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END;status_airplane_i(aa):=flighting END);
  List_Substitution(Implementation(Airport_i),exclude_airplane)==(remove(aa);status_airplane_i(aa):=out);
  List_Substitution(Implementation(Airport_i),can_landing)==(VAR ii,nsz IN ii:=0;bb:=FALSE;nsz:=sz_gates;WHILE ii<sz_tracks DO VAR pp IN pp:=landing_i(ii);IF tt = ii & plane_dummy = pp THEN bb:=TRUE END END;ii:=ii+1 INVARIANT ii: 0..sz_tracks VARIANT nsz-ii END END);
  List_Substitution(Implementation(Airport_i),query_status)==(bb:=status_airplane_i(aa));
  List_Substitution(Implementation(Airport_i),query_parked)==(VAR ii,nsz,pp IN ii:=0;gg:=sz_gates;nsz:=sz_gates;pp:=landing_i(ii);WHILE ii<sz_gates DO pp:=parking_i(ii);IF aa = pp THEN gg:=ii END;ii:=ii+1 INVARIANT ii: 0..sz_gates VARIANT nsz-ii END END)
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
  Context_List_Properties(Implementation(Airport_i))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
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
  List_Included_Operations(Implementation(Airport_i),Machine(Airplane))==(add_plane,remove,has_airplane)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Airport_i))==(Type(landing_i) == Mvv(SetOf(btype(INTEGER,0,sz_tracks)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(parking_i) == Mvv(SetOf(btype(INTEGER,0,sz_gates)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(status_airplane_i) == Mvv(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")*etype(STATUS,0,5))));
  Operations(Implementation(Airport_i))==(Type(query_parked) == Cst(btype(INTEGER,?,?),atype(AIRPLANE,?,?));Type(query_status) == Cst(etype(STATUS,?,?),atype(AIRPLANE,?,?));Type(can_landing) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(exclude_airplane) == Cst(No_type,atype(AIRPLANE,?,?));Type(depart) == Cst(No_type,atype(AIRPLANE,?,?));Type(take_track) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(board) == Cst(No_type,atype(AIRPLANE,?,?));Type(park) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(land) == Cst(No_type,atype(AIRPLANE,?,?)*btype(INTEGER,?,?));Type(add_airplane) == Cst(No_type,atype(AIRPLANE,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Airport_i),Machine(Airport_ctx))==(sz_gates,sz_tracks,sz_airplanes,plane_dummy);
  List_Constants_Env(Implementation(Airport_i),Machine(Airport_ctx))==(Type(out) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(departing) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(plane_dummy) == Cst(atype(AIRPLANE,?,?)));
  List_Defered_Sets(Implementation(Airport_i),Machine(Airport_ctx))==(AIRPLANE);
  Enumerate_Definition(Implementation(Airport_i),Machine(Airport_ctx),OCCUPATION)==({occupied,unoccupied});
  Enumerate_Definition(Implementation(Airport_i),Machine(Airport_ctx),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Airport_i)) == (? | ? | ? | gates,status_track,tracks,airplanes | add_airplane,land,park,board,take_track,depart,exclude_airplane,can_landing,query_status,query_parked | ? | seen(Machine(Airport_ctx)),imported(Machine(Airplane)),imported(Machine(Track)),imported(Machine(Gate)) | ? | Airport_i);
  List_Of_HiddenCst_Ids(Implementation(Airport_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Airport_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Airport_i)) == (status_airplane_i,parking_i,landing_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Airport_i)) == (seen(Machine(Airport_ctx)): (sz_gates,sz_tracks,sz_airplanes,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Gate)) == (? | ? | gates | ? | occupy_gate,vacate_gate,is_gate_occupied,gate_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Gate);
  List_Of_HiddenCst_Ids(Machine(Gate)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Gate)) == (?);
  List_Of_VisibleVar_Ids(Machine(Gate)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Gate)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?);
  List_Of_Ids(Machine(Track)) == (? | ? | status_track,tracks | ? | occupy_track,vacate_track,is_track_occupied,track_belongs_to | ? | seen(Machine(Airport_ctx)) | ? | Track);
  List_Of_HiddenCst_Ids(Machine(Track)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Track)) == (?);
  List_Of_VisibleVar_Ids(Machine(Track)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Track)) == (?: ?);
  List_Of_Ids(Machine(Airplane)) == (? | ? | airplanes | ? | add_plane,remove,has_airplane | ? | seen(Machine(Airport_ctx)) | ? | Airplane);
  List_Of_HiddenCst_Ids(Machine(Airplane)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airplane)) == (?);
  List_Of_VisibleVar_Ids(Machine(Airplane)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airplane)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Airport_i)) == (Type(status_airplane_i) == Mvv(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")*etype(STATUS,0,5)));Type(parking_i) == Mvv(SetOf(btype(INTEGER,0,sz_gates)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(landing_i) == Mvv(SetOf(btype(INTEGER,0,sz_tracks)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Airport_i),park, 2) == (Type(cc) == Lvl(atype(AIRPLANE,?,?)));
  Variables_Loc(Implementation(Airport_i),park, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Airport_i),take_track, 2) == (Type(cc) == Lvl(atype(AIRPLANE,?,?)));
  Variables_Loc(Implementation(Airport_i),take_track, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Airport_i),depart, 2) == (Type(cc) == Lvl(atype(AIRPLANE,?,?)));
  Variables_Loc(Implementation(Airport_i),depart, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Airport_i),can_landing, 2) == (Type(pp) == Lvl(atype(AIRPLANE,?,?)));
  Variables_Loc(Implementation(Airport_i),can_landing, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Airport_i),query_parked, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?));Type(pp) == Lvl(atype(AIRPLANE,?,?)))
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
  ImportedVariablesList(Implementation(Airport_i),Machine(Airplane))==(airplanes);
  ImportedVisVariablesList(Implementation(Airport_i),Machine(Airplane))==(?);
  ImportedVariablesList(Implementation(Airport_i),Machine(Track))==(status_track,tracks);
  ImportedVisVariablesList(Implementation(Airport_i),Machine(Track))==(?);
  ImportedVariablesList(Implementation(Airport_i),Machine(Gate))==(gates);
  ImportedVisVariablesList(Implementation(Airport_i),Machine(Gate))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
