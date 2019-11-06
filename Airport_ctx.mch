/* Airport_ctx
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Airport_ctx

SETS
    AIRPLANE;
    
    STATUS = { out, flighting, alighting, parked, boarding, departing };
    OCCUPATION = {occupied, unoccupied}    
    
CONSTANTS
    sz_gates, sz_tracks, sz_airplanes,

    gate, track,
    
    plane_dummy
    
PROPERTIES
      sz_gates : NAT1 & sz_gates > 1
    & sz_tracks : NAT1 & sz_tracks > 1
    & sz_airplanes : NAT1 & sz_airplanes > 1
    
    & gate = 0..sz_gates
    & track = 0..sz_tracks
    
    & plane_dummy : AIRPLANE
    
END
