#ifndef _Airport_ctx_h
#define _Airport_ctx_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Airport_ctx__AIRPLANE__max Airport_ctx__sz_airplanes
/* Clause SETS */
typedef int Airport_ctx__AIRPLANE;
typedef enum
{
    Airport_ctx__out,
    Airport_ctx__flighting,
    Airport_ctx__alighting,
    Airport_ctx__parked,
    Airport_ctx__boarding,
    Airport_ctx__departing
    
} Airport_ctx__STATUS;
#define Airport_ctx__STATUS__max 6
typedef enum
{
    Airport_ctx__occupied,
    Airport_ctx__unoccupied
    
} Airport_ctx__OCCUPATION;
#define Airport_ctx__OCCUPATION__max 2

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define Airport_ctx__sz_gates 100
#define Airport_ctx__sz_tracks 5
#define Airport_ctx__sz_airplanes 1000
#define Airport_ctx__plane_dummy 1000
/* Array and record constants */




extern void Airport_ctx__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Airport_ctx_h */
