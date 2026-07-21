-- 2 CONSULTAS
-- consulta para listar o total/quantidade de serviços cadastrados
select count(OrdemServico_Servico.idServico) as "Total de serviços cadastrados"
from OrdemServico_Servico;

/* consulta para listar a data de abertura, o equipamento e aprioridade de todas as ordens de serviço cujo estado seja “Aberta”. 
A lista obtidadeve ser mostrada em ordem crescente pela data de abertura. */ 
select dataAbertura, equipamento, prioridade /*, estado */
from OrdemServico
where estado = 'Aberta'
order by dataAbertura asc;

/* consulta para listar os serviços executados em cada ordem deserviço. A lista deve retornar à identificação da ordem de serviço, 
a descrição doserviço, a quantidade, o valor unitário e o subtotal (quantidade x valor unitário). 
Alista obtida deve ser mostrada em ordem crescente pela identificação da ordem deserviço. */
select OrdemServico_Servico.idOrdem as 'identificação', 
	   Servico.descricao, OrdemServico_Servico.quantidade, OrdemServico_Servico.valorUnitario,
	   (OrdemServico_Servico.quantidade * OrdemServico_Servico.valorUnitario) as "subtotal"	
from OrdemServico_Servico, Servico
where OrdemServico_Servico.idServico = Servico.idServico
order by OrdemServico_Servico.idOrdem asc;

/* consulta para listar a identificação de cada ordem de serviço e seu total, isto é, a soma de todos os subtotais de seus serviços executados, 
sendo que cada subtotal é a (quantidade x valor unitário). Os resultados devem sermostrados em ordem decrescente do valor total.*/ 
select  idOrdem as "identificação",
		sum(OrdemServico_Servico.quantidade * OrdemServico_Servico.valorUnitario) as "total"
from OrdemServico_Servico
group by OrdemServico_Servico.idOrdem
order by "total" desc;