#!/bin/bash
# alternativa sin if,else
FILE=/home/alumno/pescado.txt
while true; do
    now=$(date '+%d-%m-%Y %H:%M:%S')
    [ -f "$FILE" ] &&  printf "Sí existe el archivo %s - %s \n" "$FILE" "$now" >> ./alerta.log || printf "No existe el archivo %s - %s \n" "$FILE" "$now" >> ./alerta.log
    sleep 5
done