#!/bin/bash

: "
/*
 * EJERCICIO:
 * Entiende el concepto de recursividad creando una función recursiva que imprima
 * números del 100 al 0.
 *
 * DIFICULTAD EXTRA (opcional):
 * Utiliza el concepto de recursividad para:
 * - Calcular el factorial de un número concreto (la función recibe ese número).
 * - Calcular el valor de un elemento concreto (según su posición) en la
 *   sucesión de Fibonacci (la función recibe la posición).
 */
"

function contador() {
    local num=$1

    if ((num==0)); then
        echo "$num"
        return
    else
        echo "$num"
        contador $((num - 1))
    fi
}

contador 100

function factorial() {
    local num=$1

    if ((num <= 1)); then
        echo 1
        return
    else
        echo $((num * $(factorial $((num - 1)))))
    fi
}

factorial 10


function Fibonacci(){
    local n=$1

    if ((n <= 0)); then
        echo 0
    elif ((n == 1)); then
        echo 1
    else
        echo $(( $(Fibonacci $((n - 1))) + $(Fibonacci $((n - 2))) ))
    fi
}

Fibonacci 13