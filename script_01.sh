# !/bin/bash

active=1
src="$(pwd)"
check_time=$(( 1 + $(date +%S) ))

while [ "${active}" -eq 1 ];
do
	if [ $(date +%S) -eq $check_time ]; 
	then	
		
		if [ -f "${src}/demonio.txt" ];
		then
			echo "Demonio encontrado! - $(date)" >> alerta.log
	
		else
			echo "No se encontro ningun demonio... - $(date)" >> alerta.log
		fi
		
		check_time=$(( 1 + $check_time ))
	
	fi
done
