#!/usr/bin/env bash

#lynx instalado
[! -x "$(which lynx)"] && pintf "${AMARELO} Precisamos instalar ${VERDE} lynx ${AMARELO}, por favor, digite sua senha?${SEN_COR}\n" && sudo apt install lynx

#Sem parâmetros obrigatorios 
[ -z $l ] && printf "${VERMELHO}[ERRO] - Informe os parametros Obrigatórios. Consulte a opção -h .\n" && exit 1
