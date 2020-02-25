#!/bin/bash

while :; do
	ls
	echo "Deseja executar novamente o script {ls}? [s ou n]"
	read answer
	if [ $answer = "s" ]; then
	continue
	elif [ $answer = "n" ]; then
	exit
	fi
done
