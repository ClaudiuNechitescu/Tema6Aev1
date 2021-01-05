#!/bin/bash
read -p "Introduce un usuario: " usu
contador=1
lineas=`cat usuarios.txt | grep $usu`
maxlineas=`echo "$lineas" | wc -l`
comparador=0
dias=0
while [ $contador -le $maxlineas ]
do
	linea=`echo "$lineas" | head -$contador | tail -1`
	mes=`echo "$linea" | awk '{print $3}'`
	dia=`echo "$linea" | awk '{print $2}'`
	case $mes in
		enero) if [ 1 -gt $comparador ]
			then
				comparador=1
				numlinea=$contador
				dias=$dia
			elif [ 1 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
					then
					numlinea=$contador
				fi
			fi;;
		febrero) if [ 2 -gt $comparador ]
			then
				comparador=2
				numlinea=$contador
				dias=$dia
			elif [ 2 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		marzo) if [ 3 -gt $comparador ]
			then
				comparador=3
				numlinea=$contador
				dias=$dia
			elif [ 3 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		abril) if [ 4 -gt $comparador ]
			then
				comparador=4
				numlinea=$contador
				dias=$dia
			elif [ 4 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		mayo) if [ 5 -gt $comparador ]
			then
				comparador=5
				numlinea=$contador
				dias=$dia
			elif [ 5 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		junio) if [ 6 -gt $comparador ]
			then
				comparador=6
				numlinea=$contador
				dias=$dia
			elif [ 6 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		julio) if [ 7 -gt $comparador ]
			then
				comparador=7
				numlinea=$contador
				dias=$dia
			elif [ 7 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		agosto) if [ 8 -gt $comparador ]
			then
				comparador=8
				numlinea=$contador
				dias=$dia
			elif [ 8 -eq $comparador ]
			then
				if [ $dia -gt $dias ]
				then
					numlinea=$contador
				fi
			fi;;
		septiembre) if [ 9 -gt $comparador ]
				then
					comparador=9
					numlinea=$contador
					dias=$dia
				elif [ 9 -eq $comparador ]
				then
					if [ $dia -gt $dias ]
					then
						numlinea=$contador
				fi
				fi;;
		octubre) if [ 10 -gt $comparador ]
				then
					comparador=10
					numlinea=$contador
					dias=$dia
				elif [ 10 -eq $comparador ]
				then
					if [ $dia -gt $dias ]
					then
						numlinea=$contador
					fi
			fi;;
		noviembre) if [ 11 -gt $comparador ]
				then
					comparador=11
					numlinea=$contador
					dias=$dia
				elif [ 11 -eq $comparador ]
				then
					if [ $dia -gt $dias ]
					then
						numlinea=$contador
					fi
				fi;;
		diciembre) if [ 12 -gt $comparador ]
				then
					comparador=12
					numlinea=$contador
					dias=$dia
				elif [ 12 -eq $comparador ]
				then
					if [ $dia -gt $dias ]
					then
						numlinea=$contador
					fi
			fi;;
	esac
	contador=$((contador+1))
done
ultdia=`echo "$lineas" | head -$numlinea | tail -1 | awk '{print $2}'`
ultmes=`echo "$lineas" | head -$numlinea | tail -1 | awk '{print $3}'`
echo "Para $usu la última conexión fue el $ultdia de $ultmes"
