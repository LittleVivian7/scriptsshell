#!/bin/bash

#################################

#Nome do script: nome.sh
#Descrição: nome.sh
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################
#USA VARIAVEL PRA DEFINIR FUNÇÃO E ABRE CAIXA DE TEXTO
name=$(zenity --title="Name?" --text "What is your name?" --entry)
zenity --info --title="" --text=" $Name" --width="100" height="50"
