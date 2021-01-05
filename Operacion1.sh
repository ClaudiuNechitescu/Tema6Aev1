#!/bin/bash
read -p "Introduce un usuario: " usuario
buscusu=`cat usuarios.txt | awk '{print $1}'`
contador=0
for i in $buscusu
do
	if [ $i = $usuario ]
		then
		contador=$((contador+1))
	fi
done
if [ $contador -eq 0 ]
	then
	echo "No se ha logueado"
	else
	echo "$usuario se ha conectado $contador veces"
fi
