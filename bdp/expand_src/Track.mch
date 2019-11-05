/* Track
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Track

SEES
    Airport_ctx

CONCRETE_CONSTANTS
    plane_dumb

PROPERTIES
    plane_dumb : AIRPLANE

ABSTRACT_VARIABLES
    tracks

INVARIANT
    tracks : 0 .. sz_tracks --> AIRPLANE

INITIALISATION
    tracks := ( 0 .. sz_tracks ) * { plane_dumb }

OPERATIONS
    occupy ( gg , aa ) =
        PRE aa : AIRPLANE
            & gg : 0 .. sz_tracks
            & aa /: ran ( tracks )
            & tracks ( gg ) = plane_dumb
        THEN
            tracks ( gg ) := aa
        END ;

    vacate ( gg ) =
        PRE gg : 0 .. sz_tracks
            & tracks ( gg ) /= plane_dumb
        THEN tracks ( gg ) := plane_dumb
        END ;

    bb <-- is_occupied ( gg ) =
        PRE gg : 0 .. sz_tracks
        THEN
            IF tracks ( gg ) = plane_dumb
            THEN bb := FALSE
            ELSE bb := TRUE
            END
        END ;

    aa <-- belongs_to ( gg ) =
        PRE gg : 0 .. sz_tracks
            & tracks ( gg ) /= plane_dumb
        THEN aa := tracks ( gg )
        END
END
