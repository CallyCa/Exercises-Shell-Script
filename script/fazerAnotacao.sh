#!/bin/bash
echo "Informe sua anotação: "
read ANOTACAO
date >> $1
echo $ANOTACAO >> $1
echo
exit
