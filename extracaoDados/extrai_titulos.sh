#!/usr/bin/env bash
#
# extrai_titulos.sh - Extrai titulos do blog
#
# Site:       https://github.com/themarcosramos
# Autor:      Marcos Ramos
# Manutenção: Marcos Ramos
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair títulos do blog LXER, colocar em um arquivo de
#  texto e ler mostrando com cores na tela.
#
#  Exemplos:
#      $ ./extrai_titulos.sh
#      Neste exemplo o programa vai extrair os titulos e mostrar na tela.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2023, Marcos:
#       - Montamos a expressões regular com fator em comum
#   v1.1 10/10/2023, Marcos:
#       - Criado primeiro código com cores
# ------------------------------------------------------------------------ #
#  Testado em :
#     bash 5.1.16
#  ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ------------------------------- #
ARQUIVO_DE_TITULOS="titulos.txt"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
# ------------------------------------------------------------------------ #
# ------------------------------- TESTES --------------------------------- #
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ------------------------------- #
lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

while read -r titulo_lxer
do
  echo -e "${VERMELHO}Titulo: ${VERDE}$titulo_lxer"
done < "$ARQUIVO_DE_TITULOS"
# ------------------------------------------------------------------------ #
