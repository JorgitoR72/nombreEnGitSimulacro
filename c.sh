#!/bin/bash
suspensos=0-1
aprobados=0

while read linea; do
nota=$(echo $linea | awk '{print $3}')
if [[ $nota -lt 5 ]]; then
((suspensos++))
else
((aprobados++))
fi
done < notas.txt

echo "Número de Suspensos: $suspensos"
echo "Número de Aprobados: $aprobados"