/* Airport
 * Author: Shirley Ohara
 * Creation date: 09/09/2019
 */
MACHINE
    Airport
    
INCLUDES
    Gate, Track, Airplane

SEES 
    Airport_ctx

VARIABLES
    landing, parking, 
    status_airplane

INVARIANT
    landing : AIRPLANE >+> track &
    parking : AIRPLANE >+> gate &
    
    status_airplane : AIRPLANE --> STATUS

INITIALISATION
    landing := {} || 
    parking := {} ||
    status_airplane := AIRPLANE * {out}

OPERATIONS
    add_airplane (aa) =
        PRE aa : AIRPLANE
          & aa /= plane_dummy
          & status_airplane (aa) = out
          & aa /: ran(0..(pointer -1) <| airplanes)
          & pointer < sz_airplanes 
        THEN add_plane(aa) ||
             status_airplane (aa) := flighting
        END;
    
    land (aa, tt) =
        PRE tt : track
          & aa : ran(0..(pointer -1) <| airplanes)
          & aa /: dom (landing)
          & tt /: ran (landing)
          & aa /: dom(parking)
          & status_track (tt) = unoccupied
          & status_airplane (aa) = flighting
        THEN occupy_track(tt, aa) 
           || landing(aa) := tt
           || status_airplane := status_airplane <+ {aa |-> alighting}
        END;
            
    park (aa, gg) =
        PRE gg : gate
          & aa : dom (landing)
          & gg /: ran (parking)
          & aa /: dom (parking)
          & status_airplane(aa) = alighting
          & aa : ran(0..(pointer -1) <| airplanes)
        THEN 
             occupy_gate(gg, aa)
          || vacate_track (landing(aa))
          || landing := {aa} <<| landing
          || parking := parking \/ {aa |-> gg}
          || status_airplane(aa) := parked
        END;
        
    board (aa) =
        PRE aa : dom(parking) &
            status_airplane(aa) = parked &
            aa : ran(0..pointer-1 <| airplanes)
        THEN status_airplane(aa) := boarding
        END;
        
    take_track (aa, tt) =
        PRE tt : track 
          & aa : ran(0..pointer-1 <| airplanes)
          & aa : dom(parking) 
          & tt /: ran (landing)  
          & aa /: dom (landing) 
          & status_airplane (aa) = boarding
          & status_track (tt) = unoccupied
        THEN occupy_track(tt, aa)
          || vacate_gate(parking(aa))
          || status_airplane(aa) := departing
          || parking := {aa} <<| parking
          || landing(aa) := tt
        END;
        
    depart (aa) = 
        PRE aa : ran(0..pointer-1 <| airplanes)
          & aa /: dom(parking)
          & aa : dom (landing)
          & (status_airplane(aa) = alighting or status_airplane(aa) = departing)
        THEN vacate_track(landing(aa))
          || landing := {aa} <<| landing
          || status_airplane(aa) := flighting
        END;
        
    exclude_airplane(aa) =
        PRE aa : AIRPLANE
          & aa : ran(0..pointer-1 <| airplanes)
          & status_airplane(aa) = flighting
        THEN remove(aa) ||
             status_airplane(aa) := out
        END;
    
    /**
     * Ask if can land on a track
     */
    bb <-- can_landing (tt) =
        PRE tt : track
        THEN 
            IF tt : ran(landing)
            THEN bb := FALSE
            ELSE bb := TRUE
            END
        END;
        
    /**
     * What's the airplane status
     */
    bb <-- query_status (aa) =
        PRE aa : AIRPLANE
        THEN bb := status_airplane(aa)
        END;
      
    /**
     * The place where the airplane is parked
     */  
    gg <-- query_parked (aa) =
        PRE aa : AIRPLANE &
            aa : dom(parking)
        THEN gg := parking(aa)
        END
        
END