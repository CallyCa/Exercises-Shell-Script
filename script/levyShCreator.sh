#!/bin/bash
count=0
for ((i = 1; i <= $1; i++));  do
	echo "Informe o nome do arquivo $i:"
	read arq
	touch $arq
	chmod u+rwx $arq
done

