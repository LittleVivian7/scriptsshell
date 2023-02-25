#!/bin/bash

#################################

#Nome do script: login.sh
#Descrição: Login.
#Vesão: 1.0
#Licença:
#Autor:Viviane dos Santos
#E-mal:-

#################################

# Pede ao usuário para digitar o nome de usuário
(zenity --entry --title="Login" --text="Digite o nome de usuário:")

# Armazena o nome de usuário digitado na variável "username"
username=$?

# Pede ao usuário para digitar a senha
password=$(zenity --entry --title="Login" --text="Digite a senha:")
  
# Armazena a senha digitada na variável "password"
password=$?

# Verifica se o nome de usuário é "Vivian" e a senha é "123"
if [[ "$username" = "Vivian" && "$password" = "123456" ]]; then
    # Exibe uma caixa de mensagem informando que o login foi bem-sucedido
    zenity --info --title="Sucesso" --text="Login bem-sucedido!"
  else
    # Exibe uma caixa de mensagem informando que o login falhou
    zenity --error --title="Falha no login" --text="Nome de usuário ou senha incorretos."
fi
