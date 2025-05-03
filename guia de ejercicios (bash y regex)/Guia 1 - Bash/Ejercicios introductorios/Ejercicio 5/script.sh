#!/bin/bash

base=$1
altura=$2
area=$(($base*$altura))
echo "El rectangulo de base $base y altura $altura tiene un area de $area"

#simplificado: echo "$(($1*$2))"
