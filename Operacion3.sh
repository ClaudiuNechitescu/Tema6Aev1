#!/bin/bash
read -p "Introduce el dia: " dia
read -p "Introduce el mes: " mes
maxlineas=`cat usuarios.txt | wc -l`
contador=1
while [ $contador -le $maxlineas ]
do
	diafich=`cat usuarios.txt | head -$contador | tail -1 | awk '{print $2}'`
	mesfich=`cat usuarios.txt | head -$contador | tail -1 | awk '{print $3}'`
	if [[ $diafich = $dia && $mesfich = $mes ]]
		then
		cat usuarios.txt | head -$contador | tail -1 | awk '{print $1}'
	fi
	contador=$((contador+1))
done
