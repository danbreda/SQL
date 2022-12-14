-- Databricks notebook source
SELECT idPedido,
       descSituacao
       
FROM silver_olist.pedido

-- leia-se: selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

-- escolher quaisquer 5 pedidos, das colunas idPedido e descSituacao 
SELECT idPedido,
       descSituacao
       
FROM silver_olist.pedido

LIMIT 5

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido
