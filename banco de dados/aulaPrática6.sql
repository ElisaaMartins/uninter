create index idxPessoa on pessoa (nome); -- feito para melhorar a consulta de um select

-- visualizar
show index from pessoa;
select * from pessoa where nome = 'Vitoria';

-- criar e executar uma view (ocultar dados de uma tabela)
select * from funcionario;

create view mostraFuncionario -- ve só o que a gente coloca aqui na view
as
	select nomeFunc as 'Nome Funcionario',
    emailFunc as 'email',
    nascimento
    from funcionario;

select * from mostraFuncionario;

-- TRANSAÇÕES (commit (sucesso) ou rollback(falha))
select autocommit = off; -- desabilitando o commit
start transaction;
insert into pessoa values ('zanana', 'teste@teste.com');
select * from pessoa
rollback; -- o que criou deixa de existir 

-- TRIGGERS 
-- ação disparada automaticamente em resposta a um comando de insert, updade ou delete
select * from funcionario;
select * from auditoria;

delimiter $$
create trigger alteraFuncionario after update
on funcionario
for each row
begin
	insert into auditoria values
	('alteracao', new.matricula,
    old.salario, -- ja estava na tabela
    new.salario, -- o que eu bou inserir
    curdate());
end$
delimiter $$

-- STORED PROCEDURE
-- procedimentos estruturados -- tarefas repetitivas
create table if not exists
cartela (concurso int, numero int);

delimiter $$
create procedure geraNumero(nroInicial int, nroFinal int, nroConcurso int)
begin
	declare nroGer int default 0;
    declare i int default 0;
    while i < 6 do
		set nroGerado = (select floor(rand() * nroFinal) + nroInicial);
		if not exists (select * from cartela where numero = nroGerado) then
			insert into cartela values (nroConcurso, nroGerado);
            set i = i +1; -- incrementador
		end if;
    end while;
end$$
delimiter $$

call geraNumeros(1, 60, 100); -- chamada
select * from cartela;

-- FUNCTION
-- funções criadas pelo usuario, com retornos e podem ser usadas com outros comandos
-- simples: retornam 1 valor
-- compostas: retornam um conjunto de valores

delimiter $$
create function parImpar(numero int)
returns char(05) deterministic 
begin
	declare tipo char(05) default null;
    set tipo = 'Impar';
    if nurmero mod 2 = 0 then
		set tipo = 'Par';
        end if;
        return(tipo);
end$$
delimiter $$

select parImpar(10), parImpar(23);

-- CURSOR
-- navegação no resultado de um select (leitura)
-- loop e sempre dentro de uma procedure

delimiter $$
create procedure sumulaReajuste()
begin
	declare done boolean default false; -- variavel para identificar o final do cursor
    declare vnome varchar(100);
    declare vsalario decimal(10, 2);
    declare vnovoSalario decimal(10, 2);
    declare vdepartamento int;
    
    declare cursorFuncionario cursor
    for select nome, departamento, salario
		from funcionario;
        
	declare continue handler
		for not found set done = true;
        
	open cursorFuncionario;
	
    leCursor: loop
		fetch cursorFuncionario
        into vnome, vdepartamento, vsalario;
        if done then -- testa se o cursor chegou ao final
			leave leCursor; -- sai do loop ao chegar no final
		end if;
        
        if vdepartamento = 1 then
			set vnovoSalario = vsalario * 1.10;
		elseif vdepartamento = 2 then
			set vnovoSalario = vsalario * 1.12;
		else
			set vnovoSalario = vsalario * 1.08;
		end if;
        
        insert into simulacao
			values (vnome, vsalario, vnovoSalario);
	end loop;
    
    close cursorFuncionario;

end $$
delimiter $$
        
call simulaReajsute();
select * from simulacao;