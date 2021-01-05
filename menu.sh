#!/bin/bash
echo "Qué quieres hacer?"
echo "================================================================"
echo "1.Nº de veces que un usuario se ha logueado"
echo "2.Días en los que cualquier usuario se han conectado en un mes"
echo "3.Usuarios logueados en una fecha"
echo "4.Ultima fecha que un usuario se ha logueado"
echo "----------------------------------------------------------------"
read -p "Introduce el número: " num
case $num in
	1) ./Operacion1.sh;;
	2) ./Operacion2.sh;;
	3) ./Operacion3.sh;;
	4) ./Operacion4.sh;;
	*) echo "Debes introducir un número válido";;
esac
