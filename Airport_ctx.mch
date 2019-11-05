/* Airport_ctx
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Airport_ctx

SETS
    AIRPLANE; TRACK; GATE;
    
    STATUS = {boarding, flight_closed, taking_off, disembarking, confirmed, out};
    OCCUPATION = {occupied, unoccupied}
    
    
CONSTANTS
    sz_gates, sz_tracks, sz_airplanes
    
PROPERTIES
      sz_gates : NAT1
    & sz_tracks : NAT1 
    & sz_airplanes : NAT1
    
END
