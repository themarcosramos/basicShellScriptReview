#!/usr/bin/env bash

NOME="Marcos Ramos"

echo "$NOME"


NUMERO_1=23

NUMERO_2=32


TOTAL=$(($NUMERO_1+$NUMERO_2))

echo "$TOTAL"

SAIDA_CAT="$(cat /etc/passwd | grep marcos)"

echo "$SAIDA_CAT"

echo "-----------------------------------------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"


echo "todos os paramentros enviados foram: $*"
 
echo "O Número de parametros enviados foram : $#"

echo "Saída do último comando foi onde  0 não teve erro e 1 erro ,mas isso é a criterio do app : $?"

echo "Pegando PID ou número do processo do script : $$"

echo $0
