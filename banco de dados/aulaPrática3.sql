show databases;

create database aula3;
use aula3;
select database (); -- ver se eu estou no banco correto

create table exemplo (
	id int,
    nome varchar(100)
);

show tables;

insert into exemplo (id, nome) value (1, 'Ana');

select * from exemplo;

create table cidade (
	id int primary key,
    nome varchar(100),
    sigla char(03) unique
);

insert into cidade (id, nome, sigla) values (1, 'Indaiatuba', 'Ind');

select * from cidade;

insert into cidade (id, nome, sigla) values (2, 'Curitiba', 'cwd');

insert into cidade (id, nome, sigla) values (3, 'Natal', 'ntd');

-- FK
create table cliente(
	id int primary key,
    nome varchar(100),
    idcidade int,
    constraint fkclienteCidade foreign key (idcidade)
    references cidade(id)
);

insert into cliente values (1, 'João', 1);
insert into cliente values (2, 'José', 10);

create table aluno (
	id int primary key,
    nome varchar(100) not null,
    gereno char(01), -- F e M
    estadoCivil char(01) check (estadoCivil in ('S', 'C', 'V')),
    renda decimal (10,2) default 0
);

insert aluno (id, nome, gereno, estadoCivil) values (1, 'Maria', 'M', 'S');
select * from aluno;

describe aluno;

create table cidade2 (
	id int primary key auto_increment,
    nome varchar(100) not null,
    cepgeral int unsigned zerofill
);

select * from cidade2;

alter table cidade2 -- add, modify, change, drop
add dddd char(05);

describe cidade2;

alter table cidade2 change dddd ddd char(05);

alter table cidade2 modify ddd char(03);

insert into cidade2 (nome, cepgeral, ddd) values ('Minas Gerais', 133455600, 045);

select * from cidade2;

insert into cidade2 (nome, cepgeral, ddd) values ('Rio de Janeiro', 123467898, 011);

select * from cidade2;

alter table cidade2 drop cepgeral;
describe cidade2;




