#!/bin/bash

#Functions:
loginx(){
if [ -z $1 ]; then
        echo "Informe o usuário:"
        read USUARIO
        echo "Informe a senha: "
        read SENHA

	login
else
	if [ $1 = "joari" -a $2 = "123" ]; then
        echo "Bem-vindo ao sistema"
        else
        echo "Usuario e senha incorretos, encerrando script..."
        exit
        fi
fi
}

loginy(){
	if [ $USUARIO != "joari" -o $SENHA != "123" ]; then
        	echo "Usuário e senha incorretos, encerrando script..."
        	exit
	else
	        echo "Bem-vindo ao sistema"
	fi
}

one(){
	echo "Digite o nome da pasta: "
        read LEITURA
        mkdir $LEITURA
}

two(){
	echo "Digite o nome do arquivo: "
	read LEITURA
	touch $LEITURA
}

three(){
	echo "Digite o primeiro número: "
	read FIRST
	echo "Digite o segundo número: "
	read SECOND
	if [ $FIRST -gt $SECOND ]; then
		echo "O primeiro número é maior que o segundo"
	elif [ $FIRST -lt $SECOND ]; then
		echo "O segundo número é maior que o primeiro"
	else
		echo "Ambos números são iguais"

	fi
}

four(){
	exit
}
loginx $1 $2
loginy

echo "Painel de Controle do Usuário: "
echo "1) Criar uma pasta"
echo "2) Criar um arquivo"
echo "3) Que número é maior"
echo "4) Sair do programa"
read OPCAO
case $OPCAO in
1) 
	one;;
2) 
	two;;
3)
	three;;
4)
	four;;
esac
