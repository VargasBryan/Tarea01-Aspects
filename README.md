# Tarea01-Aspects
Aspects - Observer - GUI

La acción de los botones funcionan como sujeto observado, al realizarse la acción se llama al método changeColor().

El botón del color azul es observado por el aspecto callChange2()
El botón del color amarillo es observado por el aspecto callChange2() y callChange3();
El botón del color verde es observado por el aspecto callChange3();

El aspecto callChange2 incrementará 10 puntos al número mostrado en pantalla.
El aspecto callChange3 incrementará 5 puntos al número mostrado en pantalla.

Por lo que el botón del color azul incrementará 10 puntos, el del amarillo 15 puntos y el del verde 5 puntos.

