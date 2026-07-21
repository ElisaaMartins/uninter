create database negocio;
use negocio;

create table farmacia (
	CNPJ varchar(20) not null,
    nome varchar(50) not null,
    endereco varchar(100) not null,
    telefone varchar(20) not null,
    primary key (CNPJ)
);

create table produto (
	codProduto int not null,
    descricao varchar(50) not null,
    quantidade int not null,
    valor decimal(5,2) not null,
    CNPJ varchar(20) not null, 
    primary key (codProduto),
    foreign key (CNPJ) references farmacia (CNPJ)
);

create table farmaceutico (
	CPF varchar(20) not null,
    nome varchar(50) not null,
    CNPJ varchar(20) not null,
    primary key (CPF),
    foreign key (CNPJ) references farmacia (CNPJ)
);

/*create table cliente (
	CPF varchar(20) not null,
    nome varchar(50) not null,
    enderecoRua varchar(50) not null,
    enderecoNumero int not null,
    enderecoComplemento varchar(50),
    enderecoBairro varchar(50) not null,
    primary key (CPF)
);*/

/* populando as tabelas */
insert into farmacia (CNPJ, nome, endereco, telefone) values
	('12.345.678/0001-01', 'FarMais', 'Avenida Sete de Setembro, 3050, Curitiba - PR', '(41) 99748-1545'),
	('23.456.789/0001-02', 'Pague Menos', 'Avenida Brasil, 1234, Brasília - DF', '(61) 99874-1485'),
	('34.567.890/0001-03', 'Mais Saúde', 'Avenida Buenos Aires, 250, São Luiz - MA', '(98) 99874-9462');

insert into farmaceutico (CPF, nome, CNPJ) values
	('123.456.789-01', 'Marta da Silva', '12.345.678/0001-01'),
	('234.567.890-02', 'Murilo Queiroz', '12.345.678/0001-01'),
	('345.678.901-03', 'Daiane de Lima Soares', '23.456.789/0001-02'),
	('456.789.012-04', 'Vicente de Jesus', '23.456.789/0001-02'),
	('567.890.123-05', 'Ana Paula Munhoz', '34.567.890/0001-03'),
	('678.901.234-06', 'Hélio Machado', '34.567.890/0001-03');

insert into produto (codProduto, descricao, quantidade, valor, CNPJ) values
	(1, 'Xarope para tosse', 10, 22.89, '12.345.678/0001-01'),
	(2, 'Sabonete antialérgico', 25, 10.49, '12.345.678/0001-01'),
	(3, 'Creme para assadura', 14, 28.10, '12.345.678/0001-01'),
	(4, 'Remédio para dor de cabeça', 50, 9.70, '23.456.789/0001-02'),
	(5, 'Shampoo para cabelos secos', 21, 14.35, '23.456.789/0001-02'),
	(6, 'Pomada cicatrizante', 18, 17.12, '23.456.789/0001-02'),
	(7, 'Atadura', 9, 8.04, '34.567.890/0001-03'),
	(8, 'Pasta de dente', 27, 7.59, '34.567.890/0001-03'),
	(9, 'Escova de dente', 25, 16.45, '34.567.890/0001-03');

select * from farmacia;
select * from produto;
select * from farmaceutico;

/* implemente uma consulta que retorne o total de produtos cadastrados*/
select count(produto.codProduto) as "Total de produtos cadastrados"
from produto;

/* implemente uma consulta que retorne o CNPJ da farmacia, o nome da farmacia e seus respectivos farmaceutico*/
select 
	farmacia.CNPJ as "CNPJ",
    farmacia.nome as "Farmácia",
    farmaceutico.nome as "Farmacêutico"
from farmacia, farmaceutico
where farmacia.CNPJ = farmaceutico.CNPJ
order by farmaceutico.nome asc;

/* implemente uma consulta que retorne o nome da farmacia, a descricao do produto e a quantidade de produto em estoque. 
A lista deve ser ordenada em crescente pelo nome da farmacia e em ordem decrescente pela quantidade de produto*/
select
	farmacia.nome as "Farmácia",
    produto.descricao as "Descrição do produto",
    produto.quantidade as "Quantidade em estoque"
from farmacia, produto
where farmacia.CNPJ =  produto.CNPJ
order by farmacia.nome asc,
		produto.quantidade desc;

/* implemente uma consulta que retorne o nome da famacia e o total de produtos em estoque de cada farmacia.
	A lista deve ser ordenada em ordem decrescente pelo total de produtos*/
select 
	farmacia.nome as "Farmácia",
    sum(produto.quantidade) as "Total em estoque"
from farmacia, produto
where farmacia.CNPJ =  produto.CNPJ
group by farmacia.CNPJ
order by "Total em estoque" desc;

/* implemente uma consulta que retorne o nome da farmacia e o total em dinheiro que a mesma possui em produtos.
   A lista deve ser ordenada em ordem decrescente pelo total em dinheiro*/ 
select
	farmacia.nome as "Farmácia",
    sum(produto.quantidade * produto.valor) as "Total em dinheiro"
from farmacia, produto
where farmacia.CNPJ = produto.CNPJ
group by farmacia.CNPJ
order by "Total em dinheiro" desc;




