## Tetris

#Objetivo

El proyecto de tetris tiene como propósito repasar la programación estructurada, para dar una buena base a la programación orientada objetos.

#Descripción del juego

El juego consiste en apilar bloques unitarios de tal forma que se configure una línea horizontal para que posteriormente desaparezca tal línea.

#Descripción del código

El código se desarrolla en el entorno de processing con el lenguaje de java. El código se empezó a realizar orientado a objetos con con los diferentes tetraminos y rotaciones sobre la cuadrícula. Posteriormente este se modifica totalmente con programación estructurada. 
La base del código es la creación de un loop de tal manera que se cree un arreglo que representa el bloque con el cual interactúa el usuario, cada vez que el bloque anterior cae hasta el final de la cuadrícula. 

Además el arreglo está asociado a una variable tipo boolean para que cuando tome el valor de true se detenga y quede en la cuadrícula, pero si se llega a configurar la linea para que desaparezca toma el valor de false.

#Características del juego

 -La sombra que causa cada bloque ayuda al jugador a predecir dónde cae el bloque, esta ayuda esta complementada gracias a una función que ubica un bloque gris con la configuración del bloque horizontalmente.
 
 -Con las flechas de izquierda tanto derecha dirigen al bloque según el jugador desee, con la ayuda de la funcón keyReleased.
 
 -Con la tecla P, se pone en pausa el juego. Esto se consigue gracias a declarar una variable en el principio con un valor false,y una función es creada para que cuando el usuario teclee la P tome el valor true la anterior variable y asi se detenga el bloque.
 
#Conclusiones 

-Al juego claramente le faltan los tetrominos definidos con sus respectivas rotaciones, pero al actualizar el código a programación estructurada toma más de tiempo el adaptarlo a esta. 

