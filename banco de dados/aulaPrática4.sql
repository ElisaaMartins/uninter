create database aula;
use aula;

set SQL_SAFE_UPDATES = 0;

create table estado (
    id int,
    nome varchar(50),
    sigla char(02),
    primary key(id)
);

create table cidade (
	id int, 
    nome varchar(100) not null, 
    uf char(02), 
    constraint pkCidade primary key (id)
);

create table cliente(
	id int auto_increment,
    nome varchar(100),
    cidadeId int not null,
    constraint pkcliente primary key(id),
    constraint fkClienteCidade foreign key (cidadeId) references cidade(id)
);

-- insert sintaxe completa
insert into cidade (id, nome, uf) values (1, 'Bagé', 'RS');

-- reduzido
insert into cidade  values (2, 'Parnaiba', 'PI');

-- insert algumas colunas
insert into cidade (id, nome) values (3, 'Imperatriz');

-- vai dar erro
insert into cliente (nome, cidadeId) values ('Maria', 10);

-- varios inserts
insert into cliente (nome, cidadeId) values ('Maria', 1), ('Jose', 2), ('Pedro', 3);

create table funcionario(
	id int,
    nome varchar(100),
    cidadeId int not null,
    constraint fkFuncCidade foreign key (cidadeId) references cidade(id)
);

insert into funcionario (id, nome, cidadeId)
	select id, nome, cidadeId from cliente;

select * from funcionario;

insert into cidade values 
	(1, 'Curitiba', 'PR'),
    (2, 'Bagé', 'RS'),
    (3, 'Parnaíba', 'PI'),
    (4, 'Videira', 'SC'),
    (5, 'Imperatriz', 'MA'),
    (6, 'Belo Horizonte', 'MG'),
    (7, 'São Paulo', 'SP');
    
    
update cidade 
	set nome = 'Gramado'
    where id = 2;
    
update cidade
	set nome = 'Londrina',
    uf = 'PR'
    where id = 5;
    
delete from cidade where id = 7;

-- consultas
select * from cliente
	where cidadeid = 1
    and salario > 8000;
    
select * from cliente 
	where cidadeid = 1
    or 	cidadeid = 2
    or  cidadeid = 3;
    
select nome, salario from cliente 
	where cidadeid = 1
    or 	cidadeid = 2
    or  cidadeid = 3;
    
select nome, salario from cliente 
	where cidadeid in (1, 2, 3);
    
select nome, salario
from cliente
where salario >= 5000
and salario <= 10000;
    
select nome, salario
from cliente
where salario between 5000 and 10000;

select nome, salario
from cliente
order by nome asc ; -- asc/desc

-- junção de tabelas no select

-- inner join: igual nas duas tabelas
-- self join: tabela com ela mesmo
-- outer join
	-- left: tudo esquerda
    -- right: tudo direita
	-- full: tudo
-- cross join: cruza os dados da tabela sem especificação

-- inner join
select nomeCidade, nomeEstado
from cidade
inner join estado
on cidade.Estadoid =  estado.id;

select nomeCidade, nomeEstado
from cidade, estado
where cidade.Estadoid = estado.id;

-- left join
select nomeCidade, nomeEstado
from cidade left join estado -- todas as linhas da cidade
on cidade.Estadoid =  estado.id;

-- right join
select nomeCidade, nomeEstado
from cidade right join estado -- todas as linhas de estado
on cidade.Estadoid =  estado.id;

-- cross join 
select nomeCidade, nomeEstado
from cidade, estado
order by nomeCidade; 

-- self join
select funcionario.nomeFunc, gerente.nomeFunc
from funcionario
inner join funcionario gerente
on funcionario.gerente = gerente.matricula;

select funcionario.nomeFunc, gerente.nomeFunc
from funcionario
left join funcionario gerente
on funcionario.gerente = gerente.matricula;

-- full join

-- apelidos
select nomeFunc as 'Nome do funcionario' from funcionario f
where f.cidadeid = 1;

-- traz 3 primeiras linhas da tabela
select * from funcionario limit 3;

-- junção de mais de um select
select nomeFunc from funcionario
union
select nomeCidade from cidade;

select nomeFunc from funcionario
union all
select nomeCidade from cidade;

select nomeFunc 'Nome do Funcionario',
case
	when sexoFunc = 'F' then 'Feminino'
	when sexoFunc = 'M' then 'Masculino'
end as 'Genero'
from fucionario;





