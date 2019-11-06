Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Airplane_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Airplane_i))==(Machine(Airplane));
  Level(Implementation(Airplane_i))==(1);
  Upper_Level(Implementation(Airplane_i))==(Machine(Airplane))
END
&
THEORY LoadedStructureX IS
  Implementation(Airplane_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Airplane_i))==(Airport_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Airplane_i))==(?);
  Inherited_List_Includes(Implementation(Airplane_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Airplane_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Airplane_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Airplane_i))==(?);
  Context_List_Variables(Implementation(Airplane_i))==(?);
  Abstract_List_Variables(Implementation(Airplane_i))==(pointer,airplanes);
  Local_List_Variables(Implementation(Airplane_i))==(?);
  List_Variables(Implementation(Airplane_i))==(?);
  External_List_Variables(Implementation(Airplane_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Airplane_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Airplane_i))==(?);
  External_List_VisibleVariables(Implementation(Airplane_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Airplane_i))==(?);
  List_VisibleVariables(Implementation(Airplane_i))==(pointer_i,airplanes_i);
  Internal_List_VisibleVariables(Implementation(Airplane_i))==(pointer_i,airplanes_i)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Airplane_i))==(btrue);
  Expanded_List_Invariant(Implementation(Airplane_i))==(btrue);
  Abstract_List_Invariant(Implementation(Airplane_i))==(pointer: 0..sz_airplanes & airplanes: 0..sz_airplanes --> AIRPLANE & 0..pointer-1<|airplanes: 0..pointer-1 >-> AIRPLANE);
  Context_List_Invariant(Implementation(Airplane_i))==(btrue);
  List_Invariant(Implementation(Airplane_i))==(pointer_i: 0..sz_airplanes & airplanes_i: 0..sz_airplanes --> AIRPLANE & ran(airplanes) = ran(0..pointer-1<|airplanes_i) & 0..pointer-1<|airplanes_i: 0..pointer-1 >-> AIRPLANE & pointer_i = pointer)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Airplane_i))==(btrue);
  Abstract_List_Assertions(Implementation(Airplane_i))==(btrue);
  Context_List_Assertions(Implementation(Airplane_i))==(btrue);
  List_Assertions(Implementation(Airplane_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Airplane_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Airplane_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Airplane_i))==(airplanes_i:=(0..sz_airplanes)*{plane_dummy};(0: INT | pointer_i:=0));
  Context_List_Initialisation(Implementation(Airplane_i))==(skip);
  List_Initialisation(Implementation(Airplane_i))==(airplanes_i:=(0..sz_airplanes)*{plane_dummy};pointer_i:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Airplane_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Airplane_i),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Airplane_i))==(btrue);
  List_Context_Constraints(Implementation(Airplane_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Airplane_i))==(add_plane,remove,remove_on,has_airplane);
  List_Operations(Implementation(Airplane_i))==(add_plane,remove,remove_on,has_airplane)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Airplane_i),add_plane)==(aa);
  List_Input(Implementation(Airplane_i),remove)==(aa);
  List_Input(Implementation(Airplane_i),remove_on)==(pp);
  List_Input(Implementation(Airplane_i),has_airplane)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Airplane_i),add_plane)==(?);
  List_Output(Implementation(Airplane_i),remove)==(?);
  List_Output(Implementation(Airplane_i),remove_on)==(?);
  List_Output(Implementation(Airplane_i),has_airplane)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Airplane_i),add_plane)==(add_plane(aa));
  List_Header(Implementation(Airplane_i),remove)==(remove(aa));
  List_Header(Implementation(Airplane_i),remove_on)==(remove_on(pp));
  List_Header(Implementation(Airplane_i),has_airplane)==(bb <-- has_airplane(aa))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Airplane_i),add_plane)==(btrue);
  List_Precondition(Implementation(Airplane_i),add_plane)==(aa: AIRPLANE & aa/=plane_dummy & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes);
  Own_Precondition(Implementation(Airplane_i),remove)==(btrue);
  List_Precondition(Implementation(Airplane_i),remove)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes));
  Own_Precondition(Implementation(Airplane_i),remove_on)==(btrue);
  List_Precondition(Implementation(Airplane_i),remove_on)==(pp: 0..pointer-1 & pointer>0);
  Own_Precondition(Implementation(Airplane_i),has_airplane)==(btrue);
  List_Precondition(Implementation(Airplane_i),has_airplane)==(aa: AIRPLANE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Airplane_i),has_airplane)==(aa: AIRPLANE | @(ii,nsz,plane_current).(ii:=0;nsz:=pointer_i;bb:=FALSE;(ii: dom(airplanes_i) | plane_current:=airplanes_i(ii));WHILE ii<pointer_i DO (ii: dom(airplanes_i) | plane_current:=airplanes_i(ii));(aa = plane_current ==> bb:=TRUE [] not(aa = plane_current) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: NAT & ii<=nsz VARIANT nsz-ii END));
  Expanded_List_Substitution(Implementation(Airplane_i),remove_on)==(pp: 0..pointer-1 & pointer>0 | (pp: dom(airplanes_i) & pointer_i-1: INT & pointer_i: INT & 1: INT & pointer_i-1: dom(airplanes_i) | airplanes_i:=airplanes_i<+{pp|->airplanes_i(pointer_i-1)});(pointer_i-1: INT & pointer_i: INT & 1: INT | pointer_i:=pointer_i-1));
  Expanded_List_Substitution(Implementation(Airplane_i),remove)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) | @(ii,nsz,plane_current).(ii:=0;nsz:=pointer_i;(ii: dom(airplanes_i) | plane_current:=airplanes_i(ii));WHILE ii<pointer_i DO (ii: dom(airplanes_i) | plane_current:=airplanes_i(ii));(aa = plane_current ==> ((ii: dom(airplanes_i) & pointer_i-1: INT & pointer_i: INT & 1: INT & pointer_i-1: dom(airplanes_i) | airplanes_i:=airplanes_i<+{ii|->airplanes_i(pointer_i-1)});(pointer_i-1: INT & pointer_i: INT & 1: INT & pointer_i-1: dom(airplanes_i) | airplanes_i:=airplanes_i<+{pointer_i-1|->plane_dummy});(pointer_i-1: INT & pointer_i: INT & 1: INT | pointer_i:=pointer_i-1)) [] not(aa = plane_current) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: NAT & ii<=nsz VARIANT nsz-ii END));
  Expanded_List_Substitution(Implementation(Airplane_i),add_plane)==(aa: AIRPLANE & aa/=plane_dummy & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes | (pointer_i: dom(airplanes_i) | airplanes_i:=airplanes_i<+{pointer_i|->aa});(pointer_i+1: INT & pointer_i: INT & 1: INT | pointer_i:=pointer_i+1));
  List_Substitution(Implementation(Airplane_i),add_plane)==(airplanes_i(pointer_i):=aa;pointer_i:=pointer_i+1);
  List_Substitution(Implementation(Airplane_i),remove)==(VAR ii,nsz,plane_current IN ii:=0;nsz:=pointer_i;plane_current:=airplanes_i(ii);WHILE ii<pointer_i DO plane_current:=airplanes_i(ii);IF aa = plane_current THEN airplanes_i(ii):=airplanes_i(pointer_i-1);airplanes_i(pointer_i-1):=plane_dummy;pointer_i:=pointer_i-1 END;ii:=ii+1 INVARIANT ii: NAT & ii<=nsz VARIANT nsz-ii END END);
  List_Substitution(Implementation(Airplane_i),remove_on)==(airplanes_i(pp):=airplanes_i(pointer_i-1);pointer_i:=pointer_i-1);
  List_Substitution(Implementation(Airplane_i),has_airplane)==(VAR ii,nsz,plane_current IN ii:=0;nsz:=pointer_i;bb:=FALSE;plane_current:=airplanes_i(ii);WHILE ii<pointer_i DO plane_current:=airplanes_i(ii);IF aa = plane_current THEN bb:=TRUE END;ii:=ii+1 INVARIANT ii: NAT & ii<=nsz VARIANT nsz-ii END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Airplane_i))==(?);
  Inherited_List_Constants(Implementation(Airplane_i))==(?);
  List_Constants(Implementation(Airplane_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Airplane_i),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Implementation(Airplane_i))==(STATUS,OCCUPATION);
  Context_List_Defered(Implementation(Airplane_i))==(AIRPLANE);
  Context_List_Sets(Implementation(Airplane_i))==(AIRPLANE,STATUS,OCCUPATION);
  List_Own_Enumerated(Implementation(Airplane_i))==(?);
  List_Valuable_Sets(Implementation(Airplane_i))==(?);
  Inherited_List_Enumerated(Implementation(Airplane_i))==(?);
  Inherited_List_Defered(Implementation(Airplane_i))==(?);
  Inherited_List_Sets(Implementation(Airplane_i))==(?);
  List_Enumerated(Implementation(Airplane_i))==(?);
  List_Defered(Implementation(Airplane_i))==(?);
  List_Sets(Implementation(Airplane_i))==(?);
  Set_Definition(Implementation(Airplane_i),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Airplane_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Airplane_i))==(?);
  List_HiddenConstants(Implementation(Airplane_i))==(?);
  External_List_HiddenConstants(Implementation(Airplane_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Airplane_i))==(btrue);
  Context_List_Properties(Implementation(Airplane_i))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Implementation(Airplane_i))==(btrue);
  List_Properties(Implementation(Airplane_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Airplane_i))==(aa: aa);
  List_Values(Implementation(Airplane_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Airplane_i),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Airplane_i))==(?);
  Seen_Context_List_Invariant(Implementation(Airplane_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Airplane_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Airplane_i))==(btrue);
  Seen_List_Constraints(Implementation(Airplane_i))==(btrue);
  Seen_List_Operations(Implementation(Airplane_i),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Airplane_i),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Airplane_i))==(Type(airplanes_i) == Mvv(SetOf(btype(INTEGER,0,sz_airplanes)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")));Type(pointer_i) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Airplane_i))==(Type(has_airplane) == Cst(btype(BOOL,?,?),atype(AIRPLANE,?,?));Type(remove_on) == Cst(No_type,btype(INTEGER,?,?));Type(remove) == Cst(No_type,atype(AIRPLANE,?,?));Type(add_plane) == Cst(No_type,atype(AIRPLANE,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Airplane_i),Machine(Airport_ctx))==(sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Constants_Env(Implementation(Airplane_i),Machine(Airport_ctx))==(Type(out) == Cst(etype(STATUS,0,5));Type(flighting) == Cst(etype(STATUS,0,5));Type(alighting) == Cst(etype(STATUS,0,5));Type(parked) == Cst(etype(STATUS,0,5));Type(boarding) == Cst(etype(STATUS,0,5));Type(departing) == Cst(etype(STATUS,0,5));Type(occupied) == Cst(etype(OCCUPATION,0,1));Type(unoccupied) == Cst(etype(OCCUPATION,0,1));Type(sz_gates) == Cst(btype(INTEGER,?,?));Type(sz_tracks) == Cst(btype(INTEGER,?,?));Type(sz_airplanes) == Cst(btype(INTEGER,?,?));Type(gate) == Cst(SetOf(btype(INTEGER,"[gate","]gate")));Type(track) == Cst(SetOf(btype(INTEGER,"[track","]track")));Type(plane_dummy) == Cst(atype(AIRPLANE,?,?)));
  List_Defered_Sets(Implementation(Airplane_i),Machine(Airport_ctx))==(AIRPLANE);
  Enumerate_Definition(Implementation(Airplane_i),Machine(Airport_ctx),OCCUPATION)==({occupied,unoccupied});
  Enumerate_Definition(Implementation(Airplane_i),Machine(Airport_ctx),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Airplane_i)) == (? | ? | ? | ? | add_plane,remove,remove_on,has_airplane | ? | seen(Machine(Airport_ctx)) | ? | Airplane_i);
  List_Of_HiddenCst_Ids(Implementation(Airplane_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Airplane_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Airplane_i)) == (pointer_i,airplanes_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Airplane_i)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Airplane_i)) == (Type(pointer_i) == Mvv(btype(INTEGER,?,?));Type(airplanes_i) == Mvv(SetOf(btype(INTEGER,0,sz_airplanes)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Airplane_i),remove, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?));Type(plane_current) == Lvl(atype(AIRPLANE,?,?)));
  Variables_Loc(Implementation(Airplane_i),has_airplane, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(nsz) == Lvl(btype(INTEGER,?,?));Type(plane_current) == Lvl(atype(AIRPLANE,?,?)))
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
  List_Local_Operations(Implementation(Airplane_i))==(?)
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
  TypingPredicate(Implementation(Airplane_i))==(airplanes_i: POW(INTEGER*AIRPLANE) & pointer_i: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
