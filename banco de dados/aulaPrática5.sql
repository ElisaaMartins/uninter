-- SUBQUERIES
-- consulta simples
select * from cliente 
where cidadeid = (select id from cidade where nome = 'Bagé');

select * from cidade;

-- mais de um resultado
select * from cliente 
where cidadeid in (select id from cidade 
					where nome = 'Bagé' 
					or nome = 'Curitiba');

-- operador exist (existe ou não) - true or false
select nome, salario
from cliente
where salario < 7000
and exists (select * from cliente where salario > 11000);

-- not exists - para quando não existe

-- aby/ all (qualquer/todos)
select * from cliente
where id > any (select distinct clienteid from vendas);

select * from cliente
where id > all  (select distinct clienteid from vendas);

-- intersecção
-- onde o ID da cidade existe no cliente
select cidadeid from cliente
intersect
select id from cidade;

-- mesma coisa que >>
select cidadeid from cliente
inner join cidade
on cidade.id = cliente.cidadeid;

-- FORMATAÇÃO DE TEXTOS
select * from cliente;

-- tamanho do campo
select nome, length(nome), length(dataNasc) from cliente;

-- tudo em maiusculo, tudo em minusco
select upper(nome), lower(nome) from cliente;

-- remove espaço esquerda
select ltrim(nome) from cliente;

-- remove espaço direita
select rtrim(nome) from cliente;

-- remove todos os espaços
select trim(both from nome), nome from cliente;

-- pedaços de uma string
select substring(nome, 5), nome from cliente; -- aqui pegou os 5 primeiros caracteres

select substring(placa, 1, 3), placa from cliente; -- da primeira posição pega 3

select substring(placa, -5), placa from cliente; -- direita pra esquerda conta 5

-- substituir
select email, replace(email, '#', '@') from cliente;

-- conversão
select cast('2029-12-31' as date), cast('1000.9' as float);

-- FORMATAÇÃO DE DADOS NUMÉRICOS E TEMPORAIS
-- NUMEROS
select salario, round(salario, 2), -- arredondamento
truncate(salario, 2) -- elimina as casas
from cliente;

-- resto divisao
select mod(10, 2), -- resto
10 div 2; -- quociente

-- DATAS
select curdate(); -- data atual 
select day('2030-12-31'), month('2030-12-31'), year('2030-12-31'); -- partes de datas

select dayname('2030-12-31'),monthname('2030-12-31'); -- nome dia nome mes

select curtime(); -- hora atual

select hour('12:00:10'), minute('12:02:10'); -- partes hora

select adddate('2030-12-31', interval 30 day);
select adddate('2030-12-31', interval 1 month);

-- diferença entre datas
select datediff('2030-12-31', '2030-12-01'); -- em dias

-- AGREGAÇÃO/EXTRAÇÃO DE DADOS
select count(*), -- contando todas as linhas
count(genero) from funcionario; -- não considera null

select sum(salario) from funcionario
where departamento = 1;

select min(salario), max(salario) from funiconario;

select min(salario), nome from funiconario;

/* select nome, salario from funcionario
where salario = (select min(salario) from funcionario);*/

select avg(salario) from funcionario; -- media de salarios

select departamento, sum(salario) from funcionario
group by departamento;

select departamento, cargo, sum(salario) from funcionario
group by departamento, cargo;

select departamento, sum(salario) as 'soma dos salarios'
from funcionario
group by departamento
having sum(salario) > 20000 -- filtro
order by 2 desc;

-- INTEGRIDADE E SEGURANÇA DE DADOS
select * from funcionario;
create user 'aluno@localhost' identified by '123';
flush privileges;

show grants for 'aluno@localhost';

-- revoke
grant select, insert on aula.* to 'aluno@localhost';
flush privileges;





