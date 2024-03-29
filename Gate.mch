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
    gates : 0..sz_gates --> AIRPLANE
    
INITIALISATION
    gates := (0..sz_gates) * {plane_dummy}
    
OPERATIONS
    occupy_gate (gg, aa) =
        PRE aa : AIRPLANE 
            & gg : 0..sz_gates
            & aa /: ran(gates)
            & gates(gg) = plane_dummy
        THEN 
            gates (gg) := aa
        END;
        
    vacate_gate (gg) =
        PRE gg : 0..sz_gates
            & gates(gg) /= plane_dummy
        THEN gates(gg) := plane_dummy
        END;
        
    bb <-- is_gate_occupied (gg) =
        PRE gg : 0..sz_gates
        THEN
            IF gates (gg) = plane_dummy
            THEN bb := FALSE
            ELSE bb := TRUE
            END
        END;
        
    aa <-- gate_belongs_to (gg) =
        PRE gg : 0..sz_gates
            & gates(gg) /= plane_dummy
        THEN aa := gates(gg)
        END
END