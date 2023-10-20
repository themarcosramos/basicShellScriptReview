#!/usr/bin/env bash

echo "==== FOR  com array"

Frutas=(
'Maçã'
'Manga'
'Caju'
'Melancia'
'Acerola'
)

for i in "${Frutas[@]}"; do
    echo $i
done


echo "==== While"

contador=0

while [ $contador -lt "${#Frutas[@]}" ]; do

     echo "$contador"

     contador="$(($contador+1))"

done
