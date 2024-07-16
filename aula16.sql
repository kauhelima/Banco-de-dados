-- 1. Criar um banco de dados chaado IFSP
-- 2. Criar uma tab "Cidade",
--     com os seguintes campos: id (PK, AI), nome (NN) e estado (NN)
-- 3. Criar uma tab "Client",
--    com os seguintes campos: id (PK, AI), nome (NN), email (NN),
--    id da cidade (fk), endereço,
--    numero, bairro e data nascimento.
   
-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE IFSP;

-- SELECIONAR O BANCO DE DADOS
USE IFSP;

-- CRIAÇÃO DA TABELA
CREATE TABLE CIDADE (
    id int AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    PRIMARY KEY (id)
);

-- CRIAR TABELA CLIENTE
CREATE TABLE CLIENTE (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    id_cidade INT,
    numero INT,
    bairro varchar(100),
    data_nasc DATETIME,
    PRIMARY KEY(id),
    CONSTRAINT fk_cliente_cidade 
        FOREIGN KEY (id_cidade) REFERENCES cidade(id)
);