#ifndef _Gate_h
#define _Gate_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Airport_ctx.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Gate__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Gate__occupy_gate(int32_t gg, Airport_ctx__AIRPLANE aa);
extern void Gate__vacate_gate(int32_t gg);
extern void Gate__is_gate_occupied(int32_t gg, bool *bb);
extern void Gate__gate_belongs_to(int32_t gg, Airport_ctx__AIRPLANE *aa);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Gate_h */
