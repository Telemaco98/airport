#ifndef _Airplane_h
#define _Airplane_h

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
extern void Airplane__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Airplane__add_plane(Airport_ctx__AIRPLANE aa);
extern void Airplane__remove(Airport_ctx__AIRPLANE aa);
extern void Airplane__remove_on(int32_t pp);
extern void Airplane__has_airplane(Airport_ctx__AIRPLANE aa, bool *bb);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Airplane_h */
