#!/bin/bash

test -d $1 && echo "É diretório" && exit
test -f $1 && echo "É um arquivo" && exit
echo "Nada :("

