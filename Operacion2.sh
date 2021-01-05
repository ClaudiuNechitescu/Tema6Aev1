#!/bin/bash
maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
contador=0
echo "Escribe un mes del año"
read mes
echo "Los dias del mes de $mes"
while [ $numlinea -le $maxlineas ]
do
	linea=`cat usuarios.txt | head -$numlinea | tail -1 | awk '{print $2 " " $3}'`
	dia=`echo $linea | awk '{print $1}'`
	meses=`echo $linea | awk '{print $2}'`
	if [ $meses = $mes ]
		then
		contador=$(($contador+1))
		echo $dia
	fi
	numlinea=$(($numlinea+1))
done
if [ $contador -eq 0 ]
	then
	echo "No se han logueado este mes"
fi
