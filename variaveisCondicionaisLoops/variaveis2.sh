#!/usr/bin/env bash

NOME="Marcos Ramos"

echo "$NOME"


NUMERO_1=23

NUMERO_2=32


TOTAL=$(($NUMERO_1+$NUMERO_2))

echo "$TOTAL"

SAIDA_CAT="$(cat /etc/passwd | grep marcos)"

echo "$SAIDA_CAT"
