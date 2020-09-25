# !/bin/bash

# CALCULADORA

flag=1

div() {
	echo $(bc <<< "scale=3; $1/$2")
}

mult() {
	echo $(bc <<< "scale=3; $1*$2")
}

resta() {
	echo $(bc <<< "scale=3; $1-$2")
}

suma() {
	echo $(bc <<< "scale=3; $1+$2")
}


until [ ${flag} -eq 0 ];
do
	clear
	echo -e "Calculadora simple - Ahora con decimales!\n"

	echo "Ingrese dos valores a operar (separados por espacio): "
	read val1 val2
	echo "Seleccione la operacion a realizar:"
	echo "1. Sumar"
	echo "2. Restar"
	echo "3. Multiplicar"
	echo "4. Dividir"
	read opc	
	case $opc in
		1*)
			echo "$val1 + $val2 = $(suma $val1 $val2)"
			;;
		2*)
			echo "$val1 - $val2 = $(resta $val1 $val2)"
			;;
		3*)
			echo "$val1 * $val2 = $(mult $val1 $val2)"
			;;
		4*)
			echo "$val1 / $val2 = $(div $val1 $val2)"
			;;

		*)
			echo Opcion invalida!
			;;
	esac
	echo "Desea realizar otra operacion? [y/n]"
	read yn
	if [ $yn == "n" ];
	then
		clear
		echo "Adios!"
		flag=0
	fi
done

