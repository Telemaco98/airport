/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Airplane.h"

/* Clause SEES */
#include "Airport_ctx.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Airport_ctx__AIRPLANE Airplane__airplanes_i[Airport_ctx__sz_airplanes+1];
static int32_t Airplane__pointer_i;
/* Clause INITIALISATION */
void Airplane__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Airport_ctx__sz_airplanes;i++)
    {
        Airplane__airplanes_i[i] = Airport_ctx__plane_dummy;
    }
    Airplane__pointer_i = 0;
}

/* Clause OPERATIONS */

void Airplane__add_plane(Airport_ctx__AIRPLANE aa)
{
    Airplane__airplanes_i[Airplane__pointer_i] = aa;
    Airplane__pointer_i = Airplane__pointer_i+1;
}

void Airplane__remove(Airport_ctx__AIRPLANE aa)
{
    {
        int32_t ii;
        int32_t nsz;
        Airport_ctx__AIRPLANE plane_current;
        
        ii = 0;
        nsz = Airplane__pointer_i;
        plane_current = Airplane__airplanes_i[ii];
        while(((ii) < (Airplane__pointer_i)))
        {
            plane_current = Airplane__airplanes_i[ii];
            if(aa == plane_current)
            {
                Airplane__airplanes_i[ii] = Airplane__airplanes_i[Airplane__pointer_i-1];
                Airplane__airplanes_i[Airplane__pointer_i-1] = Airport_ctx__plane_dummy;
                Airplane__pointer_i = Airplane__pointer_i-1;
            }
            ii = ii+1;
        }
    }
}

void Airplane__remove_on(int32_t pp)
{
    Airplane__airplanes_i[pp] = Airplane__airplanes_i[Airplane__pointer_i-1];
    Airplane__pointer_i = Airplane__pointer_i-1;
}

void Airplane__has_airplane(Airport_ctx__AIRPLANE aa, bool *bb)
{
    {
        int32_t ii;
        int32_t nsz;
        Airport_ctx__AIRPLANE plane_current;
        
        ii = 0;
        nsz = Airplane__pointer_i;
        (*bb) = false;
        plane_current = Airplane__airplanes_i[ii];
        while(((ii) < (Airplane__pointer_i)))
        {
            plane_current = Airplane__airplanes_i[ii];
            if(aa == plane_current)
            {
                (*bb) = true;
            }
            ii = ii+1;
        }
    }
}

