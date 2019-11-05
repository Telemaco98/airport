/* Airport_ctx
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Airport_ctx

SETS
    AIRPLANE ; TRACK ; GATE ;

    STATUS = { boarding , flight_closed , taking_off , disembarking , confirmed , out } ;
    OCCUPATION = { occupied , unoccupied }


CONCRETE_CONSTANTS
    sz_gates , sz_tracks

PROPERTIES
    sz_gates : NAT1 &
    sz_tracks : NAT1

END
