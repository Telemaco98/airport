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
  Inherited_List_Includes(Machine(Airport))==(?);
  List_Includes(Machine(Airport))==(?)
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
  Local_List_Variables(Machine(Airport))==(status_t,status_a,landing,landed);
  List_Variables(Machine(Airport))==(status_t,status_a,landing,landed);
  External_List_Variables(Machine(Airport))==(status_t,status_a,landing,landed)
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
  Expanded_List_Invariant(Machine(Airport))==(btrue);
  Abstract_List_Invariant(Machine(Airport))==(btrue);
  Context_List_Invariant(Machine(Airport))==(btrue);
  List_Invariant(Machine(Airport))==(landed: AIRPLANE >+> GATE & landing: AIRPLANE >+> TRACK & status_a: AIRPLANE --> STATUS & status_t: TRACK --> OCCUPATION)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Airport))==(btrue);
  Abstract_List_Assertions(Machine(Airport))==(btrue);
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
  Expanded_List_Initialisation(Machine(Airport))==(landed,landing,status_a,status_t:={},{},AIRPLANE*{out},TRACK*{unoccupied});
  Context_List_Initialisation(Machine(Airport))==(skip);
  List_Initialisation(Machine(Airport))==(landed:={} || landing:={} || status_a:=AIRPLANE*{out} || status_t:=TRACK*{unoccupied})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Airport))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Airport),Machine(Airport_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Airport))==(btrue);
  List_Constraints(Machine(Airport))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Airport))==(land,park,depart,took_off,change_status,can_landing,which_status,where_is_parked);
  List_Operations(Machine(Airport))==(land,park,depart,took_off,change_status,can_landing,which_status,where_is_parked)
END
&
THEORY ListInputX IS
  List_Input(Machine(Airport),land)==(aa,tt);
  List_Input(Machine(Airport),park)==(aa,gg);
  List_Input(Machine(Airport),depart)==(aa,tt);
  List_Input(Machine(Airport),took_off)==(aa);
  List_Input(Machine(Airport),change_status)==(aa,ss);
  List_Input(Machine(Airport),can_landing)==(tt);
  List_Input(Machine(Airport),which_status)==(aa);
  List_Input(Machine(Airport),where_is_parked)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Airport),land)==(?);
  List_Output(Machine(Airport),park)==(?);
  List_Output(Machine(Airport),depart)==(?);
  List_Output(Machine(Airport),took_off)==(?);
  List_Output(Machine(Airport),change_status)==(?);
  List_Output(Machine(Airport),can_landing)==(rr);
  List_Output(Machine(Airport),which_status)==(rr);
  List_Output(Machine(Airport),where_is_parked)==(gg)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Airport),land)==(land(aa,tt));
  List_Header(Machine(Airport),park)==(park(aa,gg));
  List_Header(Machine(Airport),depart)==(depart(aa,tt));
  List_Header(Machine(Airport),took_off)==(took_off(aa));
  List_Header(Machine(Airport),change_status)==(change_status(aa,ss));
  List_Header(Machine(Airport),can_landing)==(rr <-- can_landing(tt));
  List_Header(Machine(Airport),which_status)==(rr <-- which_status(aa));
  List_Header(Machine(Airport),where_is_parked)==(gg <-- where_is_parked(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Airport),land)==(aa: AIRPLANE & tt: TRACK & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(landed) & status_t(tt) = unoccupied & status_a(aa) = out);
  List_Precondition(Machine(Airport),park)==(aa: AIRPLANE & aa: dom(landing) & gg: GATE & gg/:ran(landed) & aa/:dom(landed));
  List_Precondition(Machine(Airport),depart)==(aa: dom(landed) & status_a(aa) = flight_closed & tt: TRACK & tt/:ran(landing) & aa/:dom(landing));
  List_Precondition(Machine(Airport),took_off)==(aa: AIRPLANE & aa/:dom(landed) & status_a(aa) = taking_off);
  List_Precondition(Machine(Airport),change_status)==(aa: dom(landed) & ss: STATUS & ss/=status_a(aa));
  List_Precondition(Machine(Airport),can_landing)==(tt: TRACK);
  List_Precondition(Machine(Airport),which_status)==(aa: AIRPLANE);
  List_Precondition(Machine(Airport),where_is_parked)==(aa: AIRPLANE & aa: dom(landed))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Airport),where_is_parked)==(aa: AIRPLANE & aa: dom(landed) | gg:=landed(aa));
  Expanded_List_Substitution(Machine(Airport),which_status)==(aa: AIRPLANE | rr:=status_a(aa));
  Expanded_List_Substitution(Machine(Airport),can_landing)==(tt: TRACK | status_t(tt) = unoccupied ==> rr:=TRUE [] not(status_t(tt) = unoccupied) ==> rr:=FALSE);
  Expanded_List_Substitution(Machine(Airport),change_status)==(aa: dom(landed) & ss: STATUS & ss/=status_a(aa) | status_a:=status_a<+{aa|->ss});
  Expanded_List_Substitution(Machine(Airport),took_off)==(aa: AIRPLANE & aa/:dom(landed) & status_a(aa) = taking_off | status_a:=status_a<+{aa|->out});
  Expanded_List_Substitution(Machine(Airport),depart)==(aa: dom(landed) & status_a(aa) = flight_closed & tt: TRACK & tt/:ran(landing) & aa/:dom(landing) | landed,status_a,landing:={aa}<<|landed,status_a<+{aa|->taking_off},landing\/{aa|->tt});
  Expanded_List_Substitution(Machine(Airport),park)==(aa: AIRPLANE & aa: dom(landing) & gg: GATE & gg/:ran(landed) & aa/:dom(landed) | landing,landed,status_a:={aa}<<|landing,landed\/{aa|->gg},status_a<+{aa|->disembarking});
  Expanded_List_Substitution(Machine(Airport),land)==(aa: AIRPLANE & tt: TRACK & aa/:dom(landing) & tt/:ran(landing) & aa/:dom(landed) & status_t(tt) = unoccupied & status_a(aa) = out | status_t,status_a,landing:=status_t<+{tt|->occupied},status_a<+{aa|->confirmed},landing\/{aa|->tt});
  List_Substitution(Machine(Airport),land)==(status_t:=status_t<+{tt|->occupied} || status_a:=status_a<+{aa|->confirmed} || landing:=landing\/{aa|->tt});
  List_Substitution(Machine(Airport),park)==(landing:={aa}<<|landing || landed:=landed\/{aa|->gg} || status_a:=status_a<+{aa|->disembarking});
  List_Substitution(Machine(Airport),depart)==(landed:={aa}<<|landed || status_a:=status_a<+{aa|->taking_off} || landing:=landing\/{aa|->tt});
  List_Substitution(Machine(Airport),took_off)==(status_a:=status_a<+{aa|->out});
  List_Substitution(Machine(Airport),change_status)==(status_a:=status_a<+{aa|->ss});
  List_Substitution(Machine(Airport),can_landing)==(IF status_t(tt) = unoccupied THEN rr:=TRUE ELSE rr:=FALSE END);
  List_Substitution(Machine(Airport),which_status)==(rr:=status_a(aa));
  List_Substitution(Machine(Airport),where_is_parked)==(gg:=landed(aa))
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
  Context_List_Defered(Machine(Airport))==(AIRPLANE,TRACK,GATE);
  Context_List_Sets(Machine(Airport))==(AIRPLANE,TRACK,GATE,STATUS,OCCUPATION);
  List_Valuable_Sets(Machine(Airport))==(?);
  Inherited_List_Enumerated(Machine(Airport))==(?);
  Inherited_List_Defered(Machine(Airport))==(?);
  Inherited_List_Sets(Machine(Airport))==(?);
  List_Enumerated(Machine(Airport))==(?);
  List_Defered(Machine(Airport))==(?);
  List_Sets(Machine(Airport))==(?);
  Set_Definition(Machine(Airport),STATUS)==({boarding,flight_closed,taking_off,disembarking,confirmed,out})
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
  Context_List_Properties(Machine(Airport))==(sz_gates: NAT1 & sz_tracks: NAT1 & AIRPLANE: FIN(INTEGER) & not(AIRPLANE = {}) & TRACK: FIN(INTEGER) & not(TRACK = {}) & GATE: FIN(INTEGER) & not(GATE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}) & OCCUPATION: FIN(INTEGER) & not(OCCUPATION = {}));
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
  List_ANY_Var(Machine(Airport),land)==(?);
  List_ANY_Var(Machine(Airport),park)==(?);
  List_ANY_Var(Machine(Airport),depart)==(?);
  List_ANY_Var(Machine(Airport),took_off)==(?);
  List_ANY_Var(Machine(Airport),change_status)==(?);
  List_ANY_Var(Machine(Airport),can_landing)==(?);
  List_ANY_Var(Machine(Airport),which_status)==(?);
  List_ANY_Var(Machine(Airport),where_is_parked)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Airport)) == (? | ? | status_t,status_a,landing,landed | ? | land,park,depart,took_off,change_status,can_landing,which_status,where_is_parked | ? | seen(Machine(Airport_ctx)) | ? | Airport);
  List_Of_HiddenCst_Ids(Machine(Airport)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport)) == (?);
  List_Of_VisibleVar_Ids(Machine(Airport)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport)) == (?: ?);
  List_Of_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks,AIRPLANE,TRACK,GATE,STATUS,OCCUPATION,boarding,flight_closed,taking_off,disembarking,confirmed,out,occupied,unoccupied | ? | ? | ? | ? | ? | ? | ? | Airport_ctx);
  List_Of_HiddenCst_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Airport_ctx)) == (sz_gates,sz_tracks);
  List_Of_VisibleVar_Ids(Machine(Airport_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Airport_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Airport)) == (Type(status_t) == Mvl(SetOf(atype(TRACK,"[TRACK","]TRACK")*etype(OCCUPATION,0,1)));Type(status_a) == Mvl(SetOf(atype(AIRPLANE,"[AIRPLANE","]AIRPLANE")*etype(STATUS,0,5)));Type(landing) == Mvl(SetOf(atype(AIRPLANE,?,?)*atype(TRACK,?,?)));Type(landed) == Mvl(SetOf(atype(AIRPLANE,?,?)*atype(GATE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Airport)) == (Type(where_is_parked) == Cst(atype(GATE,?,?),atype(AIRPLANE,?,?));Type(which_status) == Cst(etype(STATUS,?,?),atype(AIRPLANE,?,?));Type(can_landing) == Cst(btype(BOOL,?,?),atype(TRACK,?,?));Type(change_status) == Cst(No_type,atype(AIRPLANE,?,?)*etype(STATUS,?,?));Type(took_off) == Cst(No_type,atype(AIRPLANE,?,?));Type(depart) == Cst(No_type,atype(AIRPLANE,?,?)*atype(TRACK,?,?));Type(park) == Cst(No_type,atype(AIRPLANE,?,?)*atype(GATE,?,?));Type(land) == Cst(No_type,atype(AIRPLANE,?,?)*atype(TRACK,?,?)));
  Observers(Machine(Airport)) == (Type(where_is_parked) == Cst(atype(GATE,?,?),atype(AIRPLANE,?,?));Type(which_status) == Cst(etype(STATUS,?,?),atype(AIRPLANE,?,?));Type(can_landing) == Cst(btype(BOOL,?,?),atype(TRACK,?,?)))
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
