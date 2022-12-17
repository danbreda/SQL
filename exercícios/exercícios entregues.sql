-- Databricks notebook source
-- Qual categoria tem mais produtos vendidos?

SELECT T2.descCategoria,
    COUNT(idPedido)
  

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY COUNT(idPedido) DESC

LIMIT 1

-- COMMAND ----------

-- Qual categoria tem produtos mais caros em média?

SELECT T2.descCategoria,
    AVG(T1.vlPreco)
FROM silver_olist.item_pedido AS T1
LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY AVG(T1.vlPreco) DESC

-- COMMAND ----------

-- Os clientes de qual estado pagam mais frete? Quais os maiores que 40?

SELECT   
        AVG(T1.vlFrete) AS avgFrete,
        
        T3.descUF

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCLiente

GROUP BY T3.descUF

HAVING avgFrete > 40

ORDER BY avgFrete DESC
