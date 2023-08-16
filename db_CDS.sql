-- Apagando o banco de dados


drop database dbCDS;

-- criando bancop de dados
create database dbCDS;
use dbCDS;


--  Crie as tabelas especificadas a seguir com as respectivas constraints

create table tbArtistas(
cod_art int not null auto_increment,
nome_art varchar(100)not null unique,
primary key(cod_art)
);


create table tbGravadores(
cod_grav int not null auto_increment,
nome_grav varchar(50)not null unique,
primary key(cod_grav)
);


create table tbCategorias(
cod_cat int not null auto_increment,
nome_cat varchar(50) not null unique,
primary key(cod_cat)
);


create table tbEstados(
sigla_est int not null auto_increment,
nome_est varchar(50)not null unique,
primary key(sigla_est)
);



create table tbCidades(
cod_cid int not null auto_increment,
sigla_est char(2)not null foreign key(sigla_est)references siglaEstados(sigla_est),
nome_cid varchar(50)not null,
primary key (cod_cid)
);


create table tbClientes(
cod_cli int  not null auto_increment,
cod_cid int not null foreign key(cod_cid) references tbCidades(cod_cid),
nome_cli  varchar(50) not null,
end_cli  varchar(100)not null,
renda_cli decimal(9,2)not null check >=0 default 0,
sexo_cli char(1)not null check ('F','M') default 'F',
primary key(cod_cli)
);


create table tbConjuge(
cod_conj int not null auto_increment foreign key(cod_conj) references tbClientes(cod_cli),
nome_conj varchar(50) not null,
renda_conj decimal(9,2)not null check >=0 default 0,
sexo_conj char(1) not null check ('F','M') default 'F',
primary key(cod_conj)
);



create table tbFuncionarios(
cod_func int not null auto_increment,
nome_func varchar(50)not null,
end_func varchar (500)not null,
sal_func decimal(9,2)not null check >=0 default 0,
sexo_func char(1) not null check('F','M') default 'F',
primary key(cod_func)
);


create table tbDependentes(
cod_dep int not null auto_increment,
cod_func int not null auto_increment foreign key(cod_func) references tbFuncionarios(cod_func),
nome_dep varchar(100)not null,
sexo_dep char(1)not null check('F','M') default 'F',
primary key(cod_dep)
); 



create table tbTitulos(
cod_tit int not null auto_increment,
cod_cat int not null auto_increment foreign key(cod_dep) references tbCategorias(cod_cat),
nome_dep int not null foreign key(cod_dep) references tbGravadores(cod_grav),
nome_cd varchar(50) not null unique,
val_cd decimal(9,2) not null check >0,


);































