#!/bin/bash

# Configurações do banco de dados
DB_USER="vivian"
DB_PASS="654321"
DB_HOST="localhost"
DB_NAME="vivianbanco"

# Cria tabela "nome"
mysql -u $DB_USER -p$DB_PASS -h $DB_HOST $DB_NAME -e "
CREATE TABLE nome (
    id INT NOT NULL AUTO_INCREMENT,
    nome_completo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);"

# Cria tabela "telefone"
mysql -u $DB_USER -p$DB_PASS -h $DB_HOST $DB_NAME -e "
CREATE TABLE telefone (
    id INT NOT NULL AUTO_INCREMENT,
    nome_id INT NOT NULL,
    numero VARCHAR(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (nome_id) REFERENCES nome(id)
);"

# Cria tabela "e-mail"
mysql -u $DB_USER -p$DB_PASS -h $DB_HOST $DB_NAME -e "
CREATE TABLE email (
    id INT NOT NULL AUTO_INCREMENT,
    nome_id INT NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (nome_id) REFERENCES nome(id)
);"

# Cria tabela "aniversario"
mysql -u $DB_USER -p$DB_PASS -h $DB_HOST $DB_NAME -e "
CREATE TABLE aniversario (
    id INT NOT NULL AUTO_INCREMENT,
    nome_id INT NOT NULL,
    data DATE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (nome_id) REFERENCES nome(id)
);"

echo "Tabelas criadas com sucesso."
