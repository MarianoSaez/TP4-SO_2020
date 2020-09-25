# !/bin/bash

flag=1


while [ ${flag} -eq 1 ];
do
	echo ******PROCESOS DEL SISTEMA******
	ps aux
	echo "Desa eliminar algun proceso? [y/n]"
	read yn
	if [ "${yn}" = "y" ];
	then
		echo "Ingrese PID del proceso a matar: "
		read killpid
		kill -9 ${killpid}
	else
		flag=0
	fi
done

