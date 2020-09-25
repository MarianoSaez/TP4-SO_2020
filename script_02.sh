# !/bin/bash

if [ $(date +%d) -eq 29 ]; 
then 
	echo "Bien! Hoy es 29.. hoy morfamos ñoquis!!"
elif [ $(( 29-$(date +%d) )) -gt 0 ];
then
	echo "Faltan $(( 29-$(date +%d) )) dias para comer ñoquis"
else
	echo "Comiste ñoquis hace $(( -1*(22-$(date +%d)) )) dias!"
fi
