#!/bin/bash

    #Realizar un demonio llamado 'alerta' que cada 5 segundos revise si el archivo /home/pescado existe y escriba un log llamado '~/alerta.log' 
    #en donde se indique si existe o no incluyendo la fecha y hora de revisión.
FILE=/home/alumno/pescado.txt
while true; do
    now=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -f "$FILE" ]; then
      printf "Sí existe el archivo %s - %s \n" "$FILE" "$now" >> ./alerta.log
    else
      printf "No existe el archivo %s - %s \n" "$FILE" "$now" >> ./alerta.log
    fi
    sleep 5
done


