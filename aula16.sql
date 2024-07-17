-- 1. Criar um banco de dados chaado IFSP
-- 2. Criar uma tab "Cidade",
--     com os seguintes campos: id (PK, AI), nome (NN) e estado (NN)
-- 3. Criar uma tab "Client",
--    com os seguintes campos: id (PK, AI), nome (NN), email (NN),
--    id da cidade (fk), endereço,
--    numero, bairro e data nascimento.
   
-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE IFSP;
Default charset = utf8;
default collate = utf8_general_ci;
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

--  INSERIR DADOS
INSERT INTO cidade (id,nome,estado) values (2,'birigui', 'SP');
INSERT INTO cidade (id,nome,estado) values (6,'Araçatuba', 'SP');
INSERT INTO cidade (id,nome,estado) values (4,'Bilac', 'SP');
INSERT INTO cidade (id,nome,estado) values (5,'Paris', 'FR');


--SELECIONAR DA TABELA

select * from cidade;

-- DESCREVER TABELA

describe cidade;

insert into cliente (nome, email, id_cidade, numero , bairro, data_nasc)
values ('murilo Silva', 'murilo@gmail.com', 5, 666, 'portal', '1999/01/15');

--Atualizar valor

UPDATE cidade SET
    nome = 'londres',
    estado = 'EN'
 where id = 2;

 -- UPDATE TABELA CLIENTE

UPDATE cliente SET
    nome = 'Sebastião',
    email = 'sebo#gmail.dot'
 where id = 1;

 -- DELETA REGISTRO(S) DA TABELA

 DELETE FROM cidade
 where id = 6;
