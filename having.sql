-- Databricks notebook source
-- Leia-se: Selecione os estados, contando quantidade de vendedores, pegando da tabela silver_olist.vendedor, agrupando pelo descUF, HAVING seria um filtro após o agrupamento, ordenando a quantia de vendedores decrescente.

SELECT descUF,
  COUNT(idVendedor) AS qtVendedorUF
  
FROM silver_olist.vendedor

WHERE descUF IN ('ES', 'SP', 'RJ', 'MG')

GROUP BY descUF

HAVING qtVendedorUF >= 100

ORDER BY qtVendedorUF ASC



-- COMMAND ----------



-- COMMAND ----------


