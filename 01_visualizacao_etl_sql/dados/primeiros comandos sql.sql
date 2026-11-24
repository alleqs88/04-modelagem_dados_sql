
SELECT * FROM vendas;

SELECT produto, quantidade, valor_unitario FROM vendas;

SELECT DISTINCT produto, valor_unitario FROM vendas WHERE valor_unitario >= 500 ORDER BY valor_unitario DESC;

SELECT max( valor_total) AS maior_valor FROM vendas;

SELECT produto As prod_vendas, max(valor_total) As maior_valor FROM vendas;

--A query abaixo seleciona dois produtos
SELECT produto, sum(valor_total) As valor_total FROM vendas GROUP BY produto;

SELECT produto, sum(valor_total) As valor_total FROM vendas WHERE produto = 'Monitor' GROUP BY produto;

SELECT produto, sum(valor_total) As valor_total FROM vendas WHERE produto IN ('Monitor', 'Mouse') GROUP BY produto;