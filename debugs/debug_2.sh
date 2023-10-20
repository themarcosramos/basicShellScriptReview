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
#     - Adicionado -s, -h & -v
#   v1.1 03/10/2018, Marcos Ramos:
#     - Trocamos IF pelo CASE
#     - Adicionamos basename
#   v1.2 03/10/2018, Marcos Ramos:
#     - Adicionado -m
#     - Adicionado 2 flags
#   v1.3 03/10/2018, Marcos Ramos:
#     - Adicionado while com shift e teste de variável
#     - Adicionado 2 flags
# ------------------------------------------------------------------------ #
#  Testado em :
#     bash 5.1.16
#  ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ------------------------------- #
CHAVE_DEBUG=0
NIVEL_DEBUG=0
# ------------------------------------------------------------------------- #

# ------------------------------- FUNÇÕES --------------------------------- #
Debugar () {
  [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* ------"
}

Soma () {
  local total=0

  for i in $(seq 1 25); do
      Debugar 1 "Entrei no for com o valor: $i"
      total=$(($total+$i))
      Debugar 2 "Depois da soma: $total"
  done
}
# ------------------------------------------------------------------------ #
case "$1" in
  -d) [ $2 ] && NIVEL_DEBUG=$2 ;;
   *) Soma                     ;;
esac

Soma
# ------------------------------------------------------------------------ #
