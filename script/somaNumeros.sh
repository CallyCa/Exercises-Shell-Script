#!/bin/bash
if [[ $1 && $2 = ?(+|-)+([0-9]) ]] ; then 
echo $(($1+$2))
else
echo "Algum parâmetro digitado não é um número"
fi
