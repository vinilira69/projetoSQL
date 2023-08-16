Nome:Vinicius Lira da Silva Oliveira


-- apagar banco de dados
drop database dbLoterica;
-- criando banco de dados
create database dbLoterica;
-- acessando banco de dados
use dbLoterica;
-- visualizando banco de dados
show databases;
-- criar tabelas no banco de dados
create table tbJogos(
id_Jogo int,
nome varchar(100),
valor decimal(9,2),
data date
);  

-- vizualizando tabelas
show tables;

-- vizualizando a estrutura da tabela
desc tbJogos;

-- inserindo registros nas tabelas
insert into tbJogos(id_Jogo,nome,valor,data)values(1,'Mega Sena',2,50,'2023/07/05');
insert into tbJogos(id_Jogo,nome,valor,data)values(2,'Quina',,'2023/04/06');
insert into tbJogos(id_Jogo,nome,valor,data)values(3,'Lotomania',3,50,'2023/03/08');
insert into tbJogos(id_Jogo,nome,valor,data)values(4,'Loteria Federal',20,'2023/09/10');
insert into tbJogos(id_Jogo,nome,valor,data)values(5,'Timemania',10,'2023/05/15');
insert into tbJogos(id_Jogo,nome,valor,data)values(6,'Dia de Sorte.',9,99,'2023/09/12');
insert into tbJogos(id_Jogo,nome,valor,data)values(7,'Super Sete',40,'2023/07/18');
insert into tbJogos(id_Jogo,nome,valor,data)values(8,'Jogo do Bicho',69,'2023/01/04');
insert into tbJogos(id_Jogo,nome,valor,data)values(9,'Loto Facil',75,'2023/04/06');
insert into tbJogos(id_Jogo,nome,valor,data)values(10,'Mega Sena',2,10,'2023/02/03');


-- vizualizar os registros inseridos
select * from tbJogos;

-- Alterando registros das tabelas
update tbJogos
	set nome = 'Triplo sena',
	 data = '16/12/2003' where id_Jogo= 6;
	 update tbJogos
	set nome = 'Jogo do Milhao',
	 data = '03/10/2013' where id_Jogo = 9;


-- Vizualizar os registros alterados
select * from tbJogos; 

-- deletando registros das tabelas
delete from tbJogos where id_Jogo = 4;
delete from tbJogos where id_Jogo = 3;
delete from tbJogos where id_Jogo = 2; 	

-- Vizualizar os registros excluidos

select * from tbJogos; 	