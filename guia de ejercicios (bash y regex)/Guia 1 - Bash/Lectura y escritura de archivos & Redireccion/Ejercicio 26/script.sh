#!/bin/bash

echo "Introdusca su nombre: "
read nombre
echo "Introdusca se apellido: "
read apellido
echo "Introdusca su legajo: "
read legajo
echo "Introdusca su materia preferida"
read mat_pref
#"propuesta":
#echo "$nombre,$apellido,$legajo,$mat_pref">>datos_alumnos.csv
> datos_alumno.txt
echo "Nombre: $nombre" >> datos_alumno.txt
echo "Apellido: $apellido" >> datos_alumno.txt
echo "Legajo: $legajo" >> datos_alumno.txt
echo "Materia Preferida: $mat_pref" >> datos_alumno.txt
