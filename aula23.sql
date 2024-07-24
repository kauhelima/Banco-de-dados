CREAT DATABASE mercado_lima;

use mercado_lima;

CREAT TABLE fornecedor (
    codigo_fornec int NOT NULL,
    nome varchar(50) not null,
    fone varchar(25),
    endereço varchar(50),
    cidade varchar(25) default "Birigui",
    estado varchar(2) default "SP",
    primary key(codigo_fornec)
);

CREAT TABLE produto (
    cod_produto int AUTO_INCREMENTE NOT NULL,
    nome varchar(50) NOT NULL,
    cod_fornecedor int NOT NULL,    
    preco_unitario numeric(10,2),
    quantidade int,
    primary key(cod_produto),
    foreign key(cod_fornecedor) references fornecedor(codigo_fornec)
);

INSERT INTO fornecedor(codigo_fornec,nome,fone,endereco, cidade,estado)
values
    (344, "ALIMENTOS DO BEM", "3345666", "Rua Fundadores", "São Paulo", "SP"),
    (78, "Comidas", "8664545", "Av dos Estados", "Araçatuba", "SP"),
    (952, "Rango Quente", "1327790", "av aclimação", "Birigui", "SP"),
    (111, "Quentinhas", "5644234", "rua teste", "Belo horizonte", "MG")

INSERT INTO produto (cod_produto, nome, cod_fornecedor, preco_unitario, quantidade)
values
    (1, "Arroz", 344, 20, 55),
    (2, "Feijão", 78, 16.5, 60),
    (3, "Macarrão", 78, 5, 15),
    (4, "Leite", 344, 3.5, 20),
    (5, "Farinha", 952, 5, 8)

update fornecedor
set nome = "foods"
where codigo_fornec = 78;

alter table fornecedor add column email varchar(40);

update fornecedor
    set email = "Produtos@de.qualidade"
where codigo_fornec = 344

update fornecedor
    set email = "quiente@food.com"
where codigo_fornec = 111

alter table fornecedor drop column endereço;

update Produtos
    set quantidade = 15
where cod_produto = 1

select * from fornecedor;

-- Procurar o nome dos produtos onde o preço seja maior que 15 reais. 

select * from produto
where preco_unitario > 15

-- Ditar os nomes e os códigos dos fornecedores que são do estado de SP.
select nome, codigo_fornec from fornecedor
where estado = "SP"

-- Apresentar o nome dos produtos e o total de cada produto (preço x quatidade) com o 
-- nome da coluna de total.

select nome, preco_unitario * quantidade as total from produto;

-- Apresentar o código do produto, o nome do produto do fornecedor de código 78.
select nome, codigo_fornec from fornecedor 
    where codigo_fornec = 78

-- Apresentar o código e o nome dos fornecedores que possuem o código menor que 
-- 100 e que seja do estado de SP.

select codigo_fornec, nome from fornecedor 
where codigo_fornec < 100 and estado = "SP"

-- Alterar na tabela produto o nome do leite para leite desnatado.
update produto
    set nome = "Leite desnatado"
where cod_produto = 4

-- Alterar a quantidade de todos os produtos subtraindo em uma unidade cada um.
update produto
    set quantidade = quantidade - 1

-- Adicionar um campo na tabela fornecedor chamado país (varchar(35)).

alter table fornecedor add column país varchar(35);

update table fornecedor
    país = "brasil";

-- k) Cadastrar um fornecdedor estrangeiro.

insert into fornecedor(codigo_fornec, nome, fone, cidade, estado)
values (655, "Health foods inc", "999888", "Austin", "TX" );]

-- l) Excluir os fornecedores brasileiros que não são do estado de SP.

delete from fornecedor 
    where pais = "brasil" and estado != "SP"

--     m) Apresentar todos os fornecedores cadastrados (só devem aparecer os do estado
-- de SP e o estrangeiro). 

select * from fornecedor