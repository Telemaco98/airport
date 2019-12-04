/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Airplane.h"

/* Clause SEES */
#include "Airport_ctx.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Airport_ctx__AIRPLANE Airplane__airplanes_i[Airport_ctx__sz_airplanes+1];
static int32_t Airplane__pointer;
/* Clause INITIALISATION */
void Airplane__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Airport_ctx__sz_airplanes;i++)
    {
        Airplane__airplanes_i[i] = Airport_ctx__plane_dummy;
    }
    Airplane__pointer = 0;
}

/* Clause OPERATIONS */

void Airplane__add_plane(Airport_ctx__AIRPLANE aa)
{
    if((Airplane__pointer) < (Airport_ctx__sz_airplanes))
    {
        {
            int32_t ii;
            int32_t nsz;
            bool bb;
            
            ii = 0;
            nsz = Airplane__pointer;
            bb = false;
            while((ii) < (Airplane__pointer))
            {
                {
                    Airport_ctx__AIRPLANE cc;
                    
                    cc = Airplane__airplanes_i[ii];
                    if(cc == aa)
                    {
                        bb = true;
                    }
                }
                ii = ii+1;
            }
            if(bb == false)
            {
                Airplane__airplanes_i[Airplane__pointer] = aa;
                Airplane__pointer = Airplane__pointer+1;
            }
        }
    }
}

void Airplane__remove(Airport_ctx__AIRPLANE aa)
{
    if((Airplane__pointer) > (0))
    {
        {
            int32_t ii;
            int32_t nsz;
            
            ii = 0;
            nsz = Airplane__pointer;
            while((ii) < (Airplane__pointer))
            {
                {
                    Airport_ctx__AIRPLANE cc;
                    
                    cc = Airplane__airplanes_i[ii];
                    if(cc == aa)
                    {
                        Airplane__airplanes_i[ii] = Airplane__airplanes_i[Airplane__pointer-1];
                        Airplane__airplanes_i[Airplane__pointer-1] = Airport_ctx__plane_dummy;
                        Airplane__pointer = Airplane__pointer-1;
                    }
                }
                ii = ii+1;
            }
        }
    }
}

void Airplane__has_airplane(Airport_ctx__AIRPLANE aa, bool *bb)
{
    {
        int32_t ii;
        int32_t nsz;
        
        ii = 0;
        nsz = Airplane__pointer;
        (*bb) = false;
        while((ii) < (Airplane__pointer))
        {
            {
                Airport_ctx__AIRPLANE cc;
                
                cc = Airplane__airplanes_i[ii];
                if(cc == aa)
                {
                    (*bb) = true;
                }
            }
            ii = ii+1;
        }
    }
}

