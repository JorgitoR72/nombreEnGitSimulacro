#!bin/bash
if [ $1 -gt 50 ];then
    coste=100
    echo "Se recomienda:- Tarifa 1: Importe es: $coste por $1 llamadas"
elif [ $1 -gt 10 ] && [ $1 -lt 51 ];then
    coste=$((50+$1*1))
    echo "Se recomienda:- Tarifa 2: Importe es: $coste por $1 llamadas"
else
    coste=$((20+$1*2))
    echo "Se recomienda:- Tarifa 3: Importe es: $coste por $1 llamadas"
fi