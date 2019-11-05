/* Gate
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Gate

SEES
    Airport_ctx

CONSTANTS
    plane_dumb
    
PROPERTIES
    plane_dumb : AIRPLANE
    
VARIABLES
    gates
    
INVARIANT
    gates : 0..sz_gates --> AIRPLANE
    
INITIALISATION
    gates := (0..sz_gates) * {plane_dumb}
    
OPERATIONS
    occupy (gg, aa) =
        PRE aa : AIRPLANE 
            & gg : 0..sz_gates
            & aa /: ran(gates)
            & gates(gg) = plane_dumb
        THEN 
            gates (gg) := aa
        END;
        
    vacate (gg) =
        PRE gg : 0..sz_gates
            & gates(gg) /= plane_dumb
        THEN gates(gg) := plane_dumb
        END;
        
    bb <-- is_occupied (gg) =
        PRE gg : 0..sz_gates
        THEN
            IF gates (gg) = plane_dumb
            THEN bb := FALSE
            ELSE bb := TRUE
            END
        END;
        
    aa <-- belongs_to (gg) =
        PRE gg : 0..sz_gates 
            & gates(gg) /= plane_dumb
        THEN aa := gates(gg)
        END
END