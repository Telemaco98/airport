/* Airport
 * Author: Shirley Ohara
 * Creation date: 09/09/2019
 */
MACHINE
    Airport

SEES 
    Airport_ctx

VARIABLES
    landed, landing, status_a, status_t

INVARIANT
    landed :  AIRPLANE >+> GATE &
    landing : AIRPLANE >+> TRACK &
    status_a : AIRPLANE --> STATUS &
    status_t: TRACK --> OCCUPATION 

INITIALISATION
    landed := {} || 
    landing := {} ||
    status_a := AIRPLANE * {out} ||
    status_t := TRACK * {unoccupied}

OPERATIONS
    land (aa, tt) =
        PRE aa : AIRPLANE &
            tt : TRACK &
            aa /: dom (landing) &
            tt /: ran (landing) &
            aa /: dom(landed) &
            status_t (tt) = unoccupied &
            status_a (aa) = out
        THEN status_t := status_t <+ {tt |-> occupied} ||
             status_a := status_a <+ {aa |-> confirmed} ||
             landing := landing  \/ {aa |-> tt}
        END;
            
    park (aa, gg) =
        PRE aa : AIRPLANE &
            aa : dom (landing) &
            gg : GATE & 
            gg /: ran (landed) &
            aa /: dom (landed)
        THEN landing := {aa} <<| landing ||
             landed := landed \/ {aa |-> gg} ||
             status_a := status_a <+ {aa |-> disembarking}
        END;

    depart (aa, tt) =
        PRE aa : dom(landed) &
            status_a (aa) = flight_closed &
            tt : TRACK &
            tt /: ran (landing) & 
            aa /: dom (landing)
            
        THEN landed := {aa} <<| landed ||
             status_a := status_a <+ {aa |-> taking_off} ||
             landing := landing \/ {aa |-> tt}
        END;
        
    took_off (aa) = 
        PRE aa : AIRPLANE &
            aa /: dom(landed) &
            status_a(aa) = taking_off
        THEN status_a := status_a <+ {aa |-> out}
        END;

    change_status (aa, ss) =
        PRE aa : dom(landed) &
            ss : STATUS &
            ss /= status_a(aa) 
        THEN status_a := status_a <+ {aa |-> ss}
        END;
        
            
    /**
     * Ask if can land on a track
     */
    rr <-- can_landing (tt) =
        PRE tt : TRACK
        THEN 
            IF status_t(tt) = unoccupied
            THEN rr := TRUE
            ELSE rr := FALSE
            END
        END;
        
    /**
     * What's the status of the airplane
     */
    rr <-- which_status (aa) =
        PRE aa : AIRPLANE
        THEN rr := status_a(aa)
        END;
      
    /**
     * The place that the plane is parked
     */  
    gg <-- where_is_parked (aa) =
        PRE aa : AIRPLANE &
            aa : dom(landed)
        THEN gg := landed(aa)
        END
        
END
