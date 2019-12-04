#ifndef _Airport_h
#define _Airport_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Airport_ctx.h"

/* Clause INCLUDES */
#include "Gate.h"
#include "Track.h"
#include "Airplane.h"

/* Clause IMPORTS */
#include "Airplane.h"
#include "Track.h"
#include "Gate.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Airport__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Airport__add_airplane(Airport_ctx__AIRPLANE aa);
extern void Airport__land(Airport_ctx__AIRPLANE aa, int32_t tt);
extern void Airport__park(Airport_ctx__AIRPLANE aa, int32_t gg);
extern void Airport__board(Airport_ctx__AIRPLANE aa);
extern void Airport__take_track(Airport_ctx__AIRPLANE aa, int32_t tt);
extern void Airport__depart(Airport_ctx__AIRPLANE aa);
extern void Airport__exclude_airplane(Airport_ctx__AIRPLANE aa);
extern void Airport__can_landing(int32_t tt, bool *bb);
extern void Airport__query_status(Airport_ctx__AIRPLANE aa, Airport_ctx__STATUS *bb);
extern void Airport__query_parked(Airport_ctx__AIRPLANE aa, int32_t *gg);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Airport_h */
