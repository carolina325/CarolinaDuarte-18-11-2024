#!/bin/bash

# Crear 100 archivos en el directorio personal
for i in $(seq 1 100); do
    echo "Archivo número $i" > /CarolinaDuarte-2772878/CarolinaDuarte-2772878$i.txt
done

# Confirmar la creación de los archivos
echo "Se han creado 100 archivos en /CarolinaDuarte-2772878"
