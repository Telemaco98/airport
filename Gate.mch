/* Gate
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Gate

SEES
    Airport_ctx
    
VARIABLES
    gates
    
INVARIANT
    gates : gate --> AIRPLANE
    
INITIALISATION
    gates := gate * {plane_dummy}
    
OPERATIONS
    occupy_gate (gg, aa) =
        PRE aa : AIRPLANE 
            & gg : gate
            & aa /: ran(gates)
            & gates(gg) = plane_dummy
        THEN 
            gates (gg) := aa
        END;
        
    vacate_gate (gg) =
        PRE gg : gate
            & gates(gg) /= plane_dummy
        THEN gates(gg) := plane_dummy
        END;
        
    bb <-- is_gate_occupied (gg) =
        PRE gg : gate
        THEN
            IF gates (gg) = plane_dummy
            THEN bb := FALSE
            ELSE bb := TRUE
            END
        END;
        
    aa <-- gate_belongs_to (gg) =
        PRE gg : gate
            & gates(gg) /= plane_dummy
        THEN aa := gates(gg)
        END
END