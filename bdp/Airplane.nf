Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Airplane))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Airplane))==(Machine(Airplane));
  Level(Machine(Airplane))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Airplane)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Airplane))==(Airport_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Airplane))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Airplane))==(?);
  List_Includes(Machine(Airplane))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Airplane))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Airplane))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Airplane))==(?);
  Context_List_Variables(Machine(Airplane))==(?);
  Abstract_List_Variables(Machine(Airplane))==(?);
  Local_List_Variables(Machine(Airplane))==(pointer,airplanes);
  List_Variables(Machine(Airplane))==(pointer,airplanes);
  External_List_Variables(Machine(Airplane))==(pointer,airplanes)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Airplane))==(?);
  Abstract_List_VisibleVariables(Machine(Airplane))==(?);
  External_List_VisibleVariables(Machine(Airplane))==(?);
  Expanded_List_VisibleVariables(Machine(Airplane))==(?);
  List_VisibleVariables(Machine(Airplane))==(?);
  Internal_List_VisibleVariables(Machine(Airplane))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Airplane))==(btrue);
  Gluing_List_Invariant(Machine(Airplane))==(btrue);
  Expanded_List_Invariant(Machine(Airplane))==(btrue);
  Abstract_List_Invariant(Machine(Airplane))==(btrue);
  Context_List_Invariant(Machine(Airplane))==(btrue);
  List_Invariant(Machine(Airplane))==(pointer: 0..sz_airplanes & airplanes: 0..sz_airplanes --> AIRPLANE & 0..pointer-1<|airplanes: 0..pointer-1 >-> AIRPLANE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Airplane))==(btrue);
  Abstract_List_Assertions(Machine(Airplane))==(btrue);
  Context_List_Assertions(Machine(Airplane))==(btrue);
  List_Assertions(Machine(Airplane))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Airplane))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Airplane))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Airplane))==(airplanes,pointer:=(0..sz_airplanes)*{plane_dummy},0);
  Context_List_Initialisation(Machine(Airplane))==(skip);
  List_Initialisation(Machine(Airplane))==(airplanes:=(0..sz_airplanes)*{plane_dummy} || pointer:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Airplane))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Airplane),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Airplane))==(btrue);
  List_Constraints(Machine(Airplane))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Airplane))==(add_plane,remove,remove_on,has_airplane);
  List_Operations(Machine(Airplane))==(add_plane,remove,remove_on,has_airplane)
END
&
THEORY ListInputX IS
  List_Input(Machine(Airplane),add_plane)==(aa);
  List_Input(Machine(Airplane),remove)==(aa);
  List_Input(Machine(Airplane),remove_on)==(pp);
  List_Input(Machine(Airplane),has_airplane)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Airplane),add_plane)==(?);
  List_Output(Machine(Airplane),remove)==(?);
  List_Output(Machine(Airplane),remove_on)==(?);
  List_Output(Machine(Airplane),has_airplane)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Airplane),add_plane)==(add_plane(aa));
  List_Header(Machine(Airplane),remove)==(remove(aa));
  List_Header(Machine(Airplane),remove_on)==(remove_on(pp));
  List_Header(Machine(Airplane),has_airplane)==(bb <-- has_airplane(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Airplane),add_plane)==(aa: AIRPLANE & aa/=plane_dummy & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes);
  List_Precondition(Machine(Airplane),remove)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes));
  List_Precondition(Machine(Airplane),remove_on)==(pp: 0..pointer-1 & pointer>0);
  List_Precondition(Machine(Airplane),has_airplane)==(aa: AIRPLANE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Airplane),has_airplane)==(aa: AIRPLANE | aa: ran(0..pointer-1<|airplanes) ==> bb:=TRUE [] not(aa: ran(0..pointer-1<|airplanes)) ==> bb:=FALSE);
  Expanded_List_Substitution(Machine(Airplane),remove_on)==(pp: 0..pointer-1 & pointer>0 | airplanes,pointer:=airplanes<+{pp|->airplanes(pointer-1)},pointer-1);
  Expanded_List_Substitution(Machine(Airplane),remove)==(aa: AIRPLANE & aa: ran(0..pointer-1<|airplanes) | airplanes,pointer:=airplanes<+{(0..pointer-1<|airplanes)~(aa)|->airplanes(pointer-1)},pointer-1);
  Expanded_List_Substitution(Machine(Airplane),add_plane)==(aa: AIRPLANE & aa/=plane_dummy & aa/:ran(0..pointer-1<|airplanes) & pointer<sz_airplanes | airplanes,pointer:=airplanes<+{pointer|->aa},pointer+1);
  List_Substitution(Machine(Airplane),add_plane)==(airplanes(pointer):=aa || pointer:=pointer+1);
  List_Substitution(Machine(Airplane),remove)==(airplanes((0..pointer-1<|airplanes)~(aa)):=airplanes(pointer-1) || pointer:=pointer-1);
  List_Substitution(Machine(Airplane),remove_on)==(airplanes(pp):=airplanes(pointer-1) || pointer:=pointer-1);
  List_Substitution(Machine(Airplane),has_airplane)==(IF aa: ran(0..pointer-1<|airplanes) THEN bb:=TRUE ELSE bb:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Airplane))==(?);
  Inherited_List_Constants(Machine(Airplane))==(?);
  List_Constants(Machine(Airplane))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Airplane),OCCUPATION)==({occupied,unoccupied});
  Context_List_Enumerated(Machine(Airplane))==(STATUS,OCCUPATION);
  Context_List_Defered(Machine(Airplane))==(AIRPLANE);
  Context_List_Sets(Machine(Airplane))==(AIRPLANE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Airplane))==(?);
  Inherited_List_Enumerated(Machine(Airplane))==(?);
  Inherited_List_Defered(Machine(Airplane))==(?);
  Inherited_List_Sets(Machine(Airplane))==(?);
  List_Enumerated(Machine(Airplane))==(?);
  List_Defered(Machine(Airplane))==(?);
  List_Sets(Machine(Airplane))==(?);
  Set_Definition(Machine(Airplane),STATUS)==({out,flighting,alighting,parked,boarding,departing})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Airplane))==(?);
  Expanded_List_HiddenConstants(Machine(Airplane))==(?);
  List_HiddenConstants(Machine(Airplane))==(?);
  External_List_HiddenConstants(Machine(Airplane))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Airplane))==(btrue);
  Context_List_Properties(Machine(Airplane))==(sz_gates: NAT1 & sz_gates>1 & sz_tracks: NAT1 & sz_tracks>1 & sz_airplanes: NAT1 & sz_airplanes>1 & gate = 0..sz_gates & track = 0..sz_tracks & plane_dummy: AIRPLANE & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
  Inherited_List_Properties(Machine(Airplane))==(btrue);
  List_Properties(Machine(Airplane))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Airplane),Machine(Airport_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Airplane))==(?);
  Seen_Context_List_Invariant(Machine(Airplane))==(btrue);
  Seen_Context_List_Assertions(Machine(Airplane))==(btrue);
  Seen_Context_List_Properties(Machine(Airplane))==(btrue);
  Seen_List_Constraints(Machine(Airplane))==(btrue);
  Seen_List_Operations(Machine(Airplane),Machine(Airport_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Airplane),Machine(Airport_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Airplane),add_plane)==(?);
  List_ANY_Var(Machine(Airplane),remove)==(?);
  List_ANY_Var(Machine(Airplane),remove_on)==(?);
  List_ANY_Var(Machine(Airplane),has_airplane)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Airplane)) == (? | ? | pointer,airplanes | ? | add_plane,remove,remove_on,has_airplane | ? | seen(Machine(Airport_ctx)) | ? | Airplane);
  List_Of_HiddenCst_Ids(Machine(Airplane)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airplane)) == (?);
  List_Of_VisibleVar_Ids(Machine(Airplane)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airplane)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy,AIRPLANE,STATUS,OCCUPATION,out,flighting,alighting,parked,boarding,departing,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,sz_airplanes,gate,track,plane_dummy);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Airplane)) == (Type(pointer) == Mvl(btype(INTEGER,?,?));Type(airplanes) == Mvl(SetOf(btype(INTEGER,0,sz_airplanes)*atype(AIRPLANE,"[AIRPLANE","]AIRPLANE"))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Airplane)) == (Type(has_airplane) == Cst(btype(BOOL,?,?),atype(AIRPLANE,?,?));Type(remove_on) == Cst(No_type,btype(INTEGER,?,?));Type(remove) == Cst(No_type,atype(AIRPLANE,?,?));Type(add_plane) == Cst(No_type,atype(AIRPLANE,?,?)));
  Observers(Machine(Airplane)) == (Type(has_airplane) == Cst(btype(BOOL,?,?),atype(AIRPLANE,?,?)))
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
