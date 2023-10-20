#!/usr/bin/env bash

VAR=""
VAR2=""

if [ "$VAR" = "$VAR2" ]; then
   echo "São iguais." 
fi

echo "-----------------------------------------------"

if [ "$VAR" = "$VAR2" ]; 
then
   echo "Sim ." 
fi

echo "-----------------------------------------------"


if test "$VAR" = "$VAR2"; then
   echo "yes." 
fi

echo "-----------------------------------------------"

if test "$VAR" = "$VAR2";
 then
   echo "ok." 
fi

echo "-----------------------------------------------"

[ "$VAR" = "$VAR2" ] && echo "certo" 

echo "-----------------------------------------------"

[ "$VAR" != "$VAR2" ] || echo "condição falsa" 
