create database delivery;
show databases;
use delivery;

CREATE TABLE cidade (
	id INTEGER unsigned NOT NULL AUTO_INCREMENT,
    estado_id INTEGER unsigned NOT NULL,
    descricao varchar(150) NULL,
    primary key(id),
    index cidade_FKIndex(estado_id)
);

CREATE table estado (
	id integer unsigned not null auto_increment,
    descricao varchar(100) null,
    sigla char(02) null,
    primary key(id)
);

create table pedido (
	id integer unsigned not null auto_increment,
    primary key(id)
);

create table pedidoProduto (
	id integer unsigned not null auto_increment,
    pedido_id integer unsigned not null,
    produto_id integer unsigned not null,
    quantidade integer unsigned null,
    valor decimal(10, 2) null,
    primary key(id),
    index pedidoProduto_FKIndex1(produto_id),
    index pedidoProduto_FKIndex2(pedido_id)
);
    