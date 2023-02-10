#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Error: debes pasar un nombre y un módulo como parámetros"
  exit 1
fi

nombre=$1
modulo=$2

nota=$modulo

if [ $nota -lt 5 ]; then
  calificacion="Suspendido"
elif [ $nota -ge 5 ] && [ $nota -lt 8 ]; then
  calificacion="Aprobado"
else
  calificacion="Sobresaliente"
fi

echo "$nombre tiene una calificación de $calificacion en el módulo $modulo"