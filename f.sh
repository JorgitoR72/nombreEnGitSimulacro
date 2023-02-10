#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Error: debes pasar un nombre como parámetro"
  exit 1
fi

nombre=$1

echo "Introduce la calificación del módulo 1: "
read modulo1

echo "Introduce la calificación del módulo 2: "
read modulo2

echo "Introduce la calificación del módulo 3: "
read modulo3

if [ $modulo1 -lt 5 ] || [ $modulo2 -lt 5 ] || [ $modulo3 -lt 5 ]; then
  echo "$nombre no tiene todo aprobado"
else
  echo "$nombre tiene todo aprobado"
fi