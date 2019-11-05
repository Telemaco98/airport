/* Airplane
 * Author: ohara
 * Creation date: 04/11/2019
 */
MACHINE
    Airplane

SETS
    AIRPLANE
    
CONSTANTS
    sz, trash

PROPERTIES
     sz : NAT &
     trash : AIRPLANE

VARIABLES
    airplanes,  pointer
    
INVARIANT
    pointer : 0..sz
    & airplanes : 0..sz --> AIRPLANE 
    
INITIALISATION
    airplanes := (0..sz) * {trash}
    || pointer := 0
    
OPERATIONS
    add_plane(aa) =
        PRE aa : AIRPLANE &
            aa /: ran(airplanes) &
            pointer < sz
        THEN airplanes(pointer) := aa ||
             pointer := pointer + 1
        END;
    
    remove(pp) =
        PRE pp : 0..pointer
        THEN airplanes(pp) := airplanes(pointer)  ||
             pointer := pointer - 1
        END
END