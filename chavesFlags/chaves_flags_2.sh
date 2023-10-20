#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuários do /etc/passwd
#
# Site:       https://github.com/themarcosramos
# Autor:      Marcos Ramos
# Manutenção: Marcos Ramos
#
# ------------------------------------------------------------------------ #
#  Irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar
# em maiúsculo e em ordem alfabética.
#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo ficará em maiúsculo e em ordem alfabética
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Marcos Ramos:
#     -
# ------------------------------------------------------------------------ #
#  Testado em :
#     bash 5.1.16
#  ------------------------------------------------------------------------ #
#
# ------------------------------- VARIÁVEIS ----------------------------------------#
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)" # pegar todos os usuarios do sistema 
MENSAGEM_USO="
  $0 - [OPÇÕES]

      -h - Menu de ajuda
      -v - Versão do programa
      -s - Ordernar a saída
"
VERSAO="v1.1"
# ----------------------------------------------------------------------------------#

# ------------------------------- TESTES -------------------------------------------#

# ----------------------------------------------------------------------------------#

# ------------------------------- FUNÇÕES ------------------------------------------#

# ----------------------------------------------------------------------------------#

# ------------------------------- EXECUÇÃO -----------------------------------------#
if [ "$1" = "-h" ]; then
  echo "$MENSAGEM_USO" && exit 0
fi
if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi
if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi

echo "$USUARIOS"
# ----------------------------------------------------------------------------------#
