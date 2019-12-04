/* Airplane
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Airplane

SEES
    Airport_ctx

ABSTRACT_VARIABLES
    airplanes

INVARIANT
    airplanes : 0 .. sz_airplanes >+> AIRPLANE

INITIALISATION
    airplanes := {}

OPERATIONS
    add_plane ( aa ) =
        PRE aa : AIRPLANE
          & aa /= plane_dummy
          & aa /: ran ( airplanes )
        THEN ANY xx
             WHERE xx : 0 .. sz_airplanes & xx /: dom ( airplanes )
             THEN airplanes ( xx ) := aa
             END
        END ;

    remove ( aa ) =
        PRE aa : AIRPLANE
          & aa /= plane_dummy
          & aa : ran ( airplanes )
        THEN airplanes := airplanes |>> { aa }
        END ;

    bb <-- has_airplane ( aa ) =
        PRE aa : AIRPLANE
          & aa /= plane_dummy
        THEN IF aa : ran ( airplanes )
             THEN bb := TRUE
             ELSE bb := FALSE
             END
        END
END
