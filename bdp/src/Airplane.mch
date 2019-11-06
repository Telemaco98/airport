/* Airplane
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Airplane

SEES
    Airport_ctx

ABSTRACT_VARIABLES
    airplanes , pointer

INVARIANT
    pointer : 0 .. sz_airplanes
    & airplanes : 0 .. sz_airplanes --> AIRPLANE
    & ( 0 .. ( pointer - 1 ) <| airplanes ) : 0 .. ( pointer - 1 ) >-> AIRPLANE

INITIALISATION
    airplanes := ( 0 .. sz_airplanes ) * { plane_dummy }
    || pointer := 0

OPERATIONS
    add_plane ( aa ) =
        PRE aa : AIRPLANE &
            aa /= plane_dummy &
            aa /: ran ( 0 .. ( pointer - 1 ) <| airplanes ) &
            pointer < sz_airplanes
        THEN airplanes ( pointer ) := aa ||
             pointer := pointer + 1
        END ;

    remove ( aa ) =
        PRE aa : AIRPLANE &
            aa : ran ( 0 .. ( pointer - 1 ) <| airplanes )
        THEN airplanes ( ( 0 .. pointer - 1 <| airplanes ) ~ ( aa ) ) := airplanes ( pointer - 1 )
          || pointer := pointer - 1
        END ;

    remove_on ( pp ) =
        PRE pp : 0 .. ( pointer - 1 ) &
            pointer > 0
        THEN airplanes ( pp ) := airplanes ( pointer - 1 )
          || pointer := pointer - 1
        END ;

    bb <-- has_airplane ( aa ) =
        PRE aa : AIRPLANE
        THEN IF aa : ran ( 0 .. ( pointer - 1 ) <| airplanes )
             THEN bb := TRUE
             ELSE bb := FALSE
             END
        END
END
