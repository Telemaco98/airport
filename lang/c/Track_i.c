/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Track.h"

/* Clause SEES */
#include "Airport_ctx.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Airport_ctx__AIRPLANE Track__tracks_i[Airport_ctx__sz_tracks+1];
static Airport_ctx__OCCUPATION Track__status_track_i[Airport_ctx__sz_tracks+1];
/* Clause INITIALISATION */
void Track__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Airport_ctx__sz_tracks;i++)
    {
        Track__tracks_i[i] = Airport_ctx__plane_dummy;
    }
    for(i = 0; i <= Airport_ctx__track__max-1;i++)
    {
        Track__status_track_i[i] = Airport_ctx__unoccupied;
    }
}

/* Clause OPERATIONS */

void Track__occupy_track(int32_t tt, Airport_ctx__AIRPLANE aa)
{
    Track__tracks_i[tt] = aa;
    Track__status_track_i[tt] = Airport_ctx__occupied;
}

void Track__vacate_track(int32_t tt)
{
    Track__tracks_i[tt] = Airport_ctx__plane_dummy;
    Track__status_track_i[tt] = Airport_ctx__unoccupied;
}

void Track__is_track_occupied(int32_t tt, bool *bb)
{
    {
        Airport_ctx__OCCUPATION xx;
        
        xx = Track__status_track_i[tt];
        if(xx == Airport_ctx__unoccupied)
        {
            (*bb) = false;
        }
        else
        {
            (*bb) = true;
        }
    }
}

void Track__track_belongs_to(int32_t tt, Airport_ctx__AIRPLANE *aa)
{
    (*aa) = Track__tracks_i[tt];
}

