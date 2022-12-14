-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'canceled'

-- LIMIT 100

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'canceled'
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'canceled' OR descSituacao = 'shipped') 
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos cancelados ou enviados, de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('canceled','shipped') 
AND year(dtPedido) = '2018'

-- Mesma coisa do anterior, porém mais formal, mais bonito.

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado) AS diferenca

FROM silver_olist.pedido

WHERE descSituacao IN ('canceled','shipped') 
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
