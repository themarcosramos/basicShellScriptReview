#!/usr/bin/env bash

echo "==== FOR 1"

for ((i=0; i<=10; i++)); do
    echo $i
done



echo "==== FOR 2 usando seq"

for i in $(seq 10); do
    echo $i
done
