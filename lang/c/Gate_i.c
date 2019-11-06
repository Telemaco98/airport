/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Gate.h"

/* Clause SEES */
#include "Airport_ctx.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Airport_ctx__AIRPLANE Gate__gates_i[Airport_ctx__sz_gates+1];
/* Clause INITIALISATION */
void Gate__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Airport_ctx__sz_gates;i++)
    {
        Gate__gates_i[i] = Airport_ctx__plane_dummy;
    }
}

/* Clause OPERATIONS */

void Gate__occupy_gate(int32_t gg, Airport_ctx__AIRPLANE aa)
{
    Gate__gates_i[gg] = aa;
}

void Gate__vacate_gate(int32_t gg)
{
    Gate__gates_i[gg] = Airport_ctx__plane_dummy;
}

void Gate__is_gate_occupied(int32_t gg, bool *bb)
{
    {
        Airport_ctx__AIRPLANE aa;
        
        aa = Gate__gates_i[gg];
        if(aa == Airport_ctx__plane_dummy)
        {
            (*bb) = false;
        }
        else
        {
            (*bb) = true;
        }
    }
}

void Gate__gate_belongs_to(int32_t gg, Airport_ctx__AIRPLANE *aa)
{
    (*aa) = Gate__gates_i[gg];
}

