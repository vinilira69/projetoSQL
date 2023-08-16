-- Nome:Vinicius Lira


-- apagar banco de dados
drop database dbZoologico;
-- criando banco de dados
create database dbZoologico;
-- vizualizando banco de dados
show databases;
use dbZoologico;
-- criar tabelas no banco de dados
create table tbAnimais(
codigo int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

-- Vizualizando tabelas
show tables;
-- vizualizando estrutura das tabelas
desc tbAnimais;

-- inserindo registros nas tabelas
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(1,'cachorro','Djudi',3,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(2'cachorro','Sula',5,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(3,'cachorro','Sarina',7,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(4,'gato','Pipa',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(5,'gato','Sarangue',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(6,'gato','Clarences',1,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(7,'coruja','Agnes',0,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(8,'coruja','Arabela',1,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(9,'sapo','Quash',1,100.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(10,'peixe','Fish',0,100.00);

-- 3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS. 
desc tbAnimais;


-- 4. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, 
-- apresentando todos os registros da tabela.

select tipo,nome from tbAnimais;


-- 5. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
--ANIMAIS, apresentado todos os registros.

select tipo,nome,idade from tbAnimais;

-- 6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS
-- apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias
-- po de Animal] e a coluna nome com o alias [Nome do Animal].

select tipo,nome as 'Tipo de Animais' from tbAnimais;

-- 7. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
-- ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o 
-- alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna
-- IDADE com o alias [Tempo de Vida]. 

select tipo,nome as 'Tipo de Animiais' nome as 'Tipo de Animais' idade as 'Tempo de Vida' from tbAnimais;


-- 8. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:

select 'Animal Doméstico' as 'cachorro' as 'Djudi' as '3' from tbAnimais;

-- 9. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma: 

select 'cachorro' as 'Sula' as '5' as '300.00' as '330.00' from tbAnimais;


-- 10. Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, 
 select  'peixe' as '100.00' as '110.00' from tbAnimais;