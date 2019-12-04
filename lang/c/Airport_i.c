/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Airport.h"

/* Clause SEES */
#include "Airport_ctx.h"

/* Clause IMPORTS */
#include "Airplane.h"
#include "Track.h"
#include "Gate.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Airport_ctx__AIRPLANE Airport__landing_i[Airport_ctx__sz_tracks+1];
static Airport_ctx__AIRPLANE Airport__parking_i[Airport_ctx__sz_gates+1];
static Airport_ctx__STATUS Airport__status_airplane_i[Airport_ctx__AIRPLANE__max+1];
/* Clause INITIALISATION */
void Airport__INITIALISATION(void)
{
    
    unsigned int i = 0;
    Airplane__INITIALISATION();
    Gate__INITIALISATION();
    Track__INITIALISATION();
    for(i = 0; i <= Airport_ctx__sz_tracks;i++)
    {
        Airport__landing_i[i] = Airport_ctx__plane_dummy;
    }
    for(i = 0; i <= Airport_ctx__sz_gates;i++)
    {
        Airport__parking_i[i] = Airport_ctx__plane_dummy;
    }
    for(i = 0; i <= Airport_ctx__AIRPLANE__max-1;i++)
    {
        Airport__status_airplane_i[i] = Airport_ctx__out;
    }
}

/* Clause OPERATIONS */

void Airport__add_airplane(Airport_ctx__AIRPLANE aa)
{
    Airplane__add_plane(aa);
    Airport__status_airplane_i[aa] = Airport_ctx__flighting;
}

void Airport__land(Airport_ctx__AIRPLANE aa, int32_t tt)
{
    Track__occupy_track(tt, aa);
    Airport__landing_i[tt] = aa;
    Airport__status_airplane_i[aa] = Airport_ctx__alighting;
}

void Airport__park(Airport_ctx__AIRPLANE aa, int32_t gg)
{
    Gate__occupy_gate(gg, aa);
    {
        int32_t ii;
        int32_t nsz;
        
        ii = 0;
        nsz = Airport_ctx__sz_tracks;
        while((ii) < (nsz))
        {
            {
                Airport_ctx__AIRPLANE cc;
                
                cc = Airport__landing_i[ii];
                if(cc == aa)
                {
                    Track__vacate_track(ii);
                    Airport__landing_i[ii] = Airport_ctx__plane_dummy;
                }
            }
            ii = ii+1;
        }
        Airport__parking_i[gg] = aa;
        Airport__status_airplane_i[aa] = Airport_ctx__parked;
    }
}

void Airport__board(Airport_ctx__AIRPLANE aa)
{
    Airport__status_airplane_i[aa] = Airport_ctx__boarding;
}

void Airport__take_track(Airport_ctx__AIRPLANE aa, int32_t tt)
{
    Track__occupy_track(tt, aa);
    {
        int32_t ii;
        int32_t nsz;
        
        ii = 0;
        nsz = Airport_ctx__sz_tracks;
        while((ii) < (nsz))
        {
            {
                Airport_ctx__AIRPLANE cc;
                
                cc = Airport__parking_i[ii];
                if(cc == aa)
                {
                    Gate__vacate_gate(ii);
                    Airport__status_airplane_i[aa] = Airport_ctx__departing;
                    Airport__parking_i[ii] = Airport_ctx__plane_dummy;
                }
            }
            ii = ii+1;
        }
        Airport__landing_i[tt] = aa;
    }
}

void Airport__depart(Airport_ctx__AIRPLANE aa)
{
    {
        int32_t ii;
        int32_t nsz;
        
        ii = 0;
        nsz = Airport_ctx__sz_tracks;
        while((ii) < (nsz))
        {
            {
                Airport_ctx__AIRPLANE cc;
                
                cc = Airport__landing_i[ii];
                if(cc == aa)
                {
                    Track__vacate_track(ii);
                    Airport__landing_i[ii] = Airport_ctx__plane_dummy;
                }
            }
            ii = ii+1;
        }
        Airport__status_airplane_i[aa] = Airport_ctx__flighting;
    }
}

void Airport__exclude_airplane(Airport_ctx__AIRPLANE aa)
{
    Airplane__remove(aa);
    Airport__status_airplane_i[aa] = Airport_ctx__out;
}

void Airport__can_landing(int32_t tt, bool *bb)
{
    {
        int32_t ii;
        int32_t nsz;
        
        ii = 0;
        (*bb) = false;
        nsz = Airport_ctx__sz_gates;
        while(((ii) < (Airport_ctx__sz_tracks)))
        {
            {
                Airport_ctx__AIRPLANE pp;
                
                pp = Airport__landing_i[ii];
                if((tt == ii) &&
                (Airport_ctx__plane_dummy == pp))
                {
                    (*bb) = true;
                }
            }
            ii = ii+1;
        }
    }
}

void Airport__query_status(Airport_ctx__AIRPLANE aa, Airport_ctx__STATUS *bb)
{
    (*bb) = Airport__status_airplane_i[aa];
}

void Airport__query_parked(Airport_ctx__AIRPLANE aa, int32_t *gg)
{
    {
        int32_t ii;
        int32_t nsz;
        Airport_ctx__AIRPLANE pp;
        
        ii = 0;
        (*gg) = Airport_ctx__sz_gates;
        nsz = Airport_ctx__sz_gates;
        pp = Airport__landing_i[ii];
        while(((ii) < (Airport_ctx__sz_gates)))
        {
            pp = Airport__parking_i[ii];
            if(aa == pp)
            {
                (*gg) = ii;
            }
            ii = ii+1;
        }
    }
}

