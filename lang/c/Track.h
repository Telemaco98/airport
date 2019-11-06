#ifndef _Track_h
#define _Track_h

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
extern void Track__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Track__occupy_track(int32_t tt, Airport_ctx__AIRPLANE aa);
extern void Track__vacate_track(int32_t tt);
extern void Track__is_track_occupied(int32_t tt, bool *bb);
extern void Track__track_belongs_to(int32_t tt, Airport_ctx__AIRPLANE *aa);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Track_h */
