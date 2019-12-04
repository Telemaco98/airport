/* Track
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Track

SEES
    Airport_ctx

ABSTRACT_VARIABLES
    tracks ,
    status_track

INVARIANT
    tracks : 0 .. sz_tracks --> AIRPLANE &
    status_track : 0 .. sz_tracks --> OCCUPATION

INITIALISATION
    tracks := ( 0 .. sz_tracks ) * { plane_dummy } ||
    status_track := ( 0 .. sz_tracks ) * { unoccupied }

OPERATIONS
    occupy_track ( tt , aa ) =
        PRE aa : AIRPLANE
            & tt : 0 .. sz_tracks
            & aa /: ran ( tracks )
            & tracks ( tt ) = plane_dummy
        THEN
            tracks ( tt ) := aa ||
            status_track ( tt ) := occupied
        END ;

    vacate_track ( tt ) =
        PRE tt : 0 .. sz_tracks
            & tracks ( tt ) /= plane_dummy
        THEN
            tracks ( tt ) := plane_dummy ||
            status_track ( tt ) := unoccupied
        END ;

    bb <-- is_track_occupied ( tt ) =
        PRE tt : 0 .. sz_tracks
        THEN
            IF status_track ( tt ) = unoccupied
            THEN bb := FALSE
            ELSE bb := TRUE
            END
        END ;

    aa <-- track_belongs_to ( tt ) =
        PRE tt : 0 .. sz_tracks
            & tracks ( tt ) /= plane_dummy
        THEN aa := tracks ( tt )
        END
END
