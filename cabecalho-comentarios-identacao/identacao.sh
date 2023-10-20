#!/usr/bin/env bash

PARAMETRO=1

if [ $PARAMETRO -gt 0 ]; then
  echo "Parâmetro é maior que 0."

  if [ $PARAMETRO -gt 1 ]; then
    echo "Parâmetro é maior que 1." # Valida numero 1?

    if [ $PARAMETRO -gt 2 ]; then
      echo "Parâmetro é maior que 2."
      echo "Oi"
    fi

  fi

fi
