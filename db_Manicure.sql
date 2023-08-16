-- apagar banco de dados
drop database dbManicure;
-- criando banco de dados
create database dbManicure;
-- acessando banco de dados
use dbManicure;
-- visualizando banco de dados
show databases;
-- criar tabelas no banco de dados
create table tbProdutos(
codProd int,
descricao varchar(100),
quantidade decimal(9,2),
dataEntrada date,
valorUnit decimal(9,2)
);

-- vizualizando tabelas
show tables;

-- vizualizando a estrutura da tabela
desc tbProdutos;

-- inserindo registros nas tabelas
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(1,'Alicate de unha',10,'2023/08/01',5.50);
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(2,'Algodão',100,'2023/07/31',2.53);
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(3,'Esmalte',25,'2023/08/01',15.00);
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(4,'Acetona',35,'2023/07/30',3.50);
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(5,'Unha postiça',50,'2023/07/25',9.99);
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(6,'Unha',50,'2023/07/25',9.99);	
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit)values(7,'postiça',50,'2023/07/25',9.99);

-- vizualizar os registros inseridos
select * from tbProdutos;

-- Alterando registros das tabelas
update tbProdutos
    set descricao = 'Palitos de unha',
valorUnit = 1.35 where codProd = 6;
update tbProdutos
	set descricao = 'Mascara de proteção',
	valorUnit =2.23 where codProd = 7;


-- Vizualizar os registros alterados
select * from tbProdutos; 

-- Apagar registros das tabelas
delete from tbProdutos where codProd = 7;

-- Vizualizar os registros excluidos
select * from tbProdutos;	