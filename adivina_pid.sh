#!/bin/bash


intentos=10
pid_script=$$


while [[ $intentos -gt 0 ]]; do
	clear
	read -p "Indica el PID: " user_pid
	intentos=$(( intentos - 1 ))
	if [[ $user_pid -lt $pid_script ]]; then
		echo -e "Ops, has fallado $(( 10 - intentos ))"
          	echo -e "Te quedan $intentos intentos"
          	read -n1 -p "El PID es mayor"
	elif [[ $user_pid -gt $pid_script ]]; then
		echo -e "Ops, has fallado $(( 10 - intentos ))"
            	echo -e "Te quedan $intentos intentos"
            	read -n1 -p "El PID es menor"
	elif [[ $user_pid -eq $pid_script ]]; then
		read -n1 -p "🥸️Has adivinado el PID $user_pid🥸️"
	fi
	
	if [[ $user_pid -eq 0 ]]; then
            clear
            echo -e "\nNO TE QUEDAN INTENTOS\n"
            echo -e "El número buscado es $numero_aleatorio"
            read -n 1 -p "Pulsa una tecla para volver al menú principal"
            break
        fi
		
	
done	
