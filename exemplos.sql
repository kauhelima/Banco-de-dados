CREATE DATABASE banco;

CREATE TABLE caixa_postal (
    codigo_postal VARCHAR(8) NOT NULL,
    localidade VARCHAR(45) NOT NULL,
    PRIMARY KEY (codigo_postal)
);

-- INSERT

INSERT into caixa_postal (codigo_postal, localidade)
values (17830000, 'Adaantina');

INSERT into caixa_postal (codigo_postal, localidade)
values (16204278, 'Birigui');

INSERT into caixa_postal (codigo_postal, localidade)
values (17800000, 'Flórida Paulista');


-- TABELA PESSOA

CREATE TABLE pessoa (
    codigo INT NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    nome INTEGER CHECK (idade > 0),
    codigo_postal VARCHAR(8) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_postal) REFERENCES
                                caixa_postal (codigo_postal)
);