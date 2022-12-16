-- Databricks notebook source
-- sempre definir a tabela referente, e busca os dados na outra tabela
-- LEFT JOIN a tabela referencia é a da esquerda, então os dados filtrados e agregados são os da direita pra da esquerda (e os dados ficam na da esquerda unificados)

-- RIGHT JOIN é a mesma coisa, porém agrega os dados da tabela da esquerda pra da direita: se mantém os dados da tabela referencia e tras os dados da tabela da esquerda pra da direita

-- A diferença é: 
-- LEFT JOIN, tras os dados da tabela da direita pra da esquerda e todos os dados da tabela da esquerda se mantém
-- RIGHT JOIN, tras os dados da tabela da esquerda pra da direita e todos os dados da tabela da direita se mantém

--INNER JOIN os dados se casam no centro, porém não há dados sozinhos, como no left join ou right join. Há apenas dados combinados.

-- COMMAND ----------

SELECT T1.*,      -- da T1 quero todas as colunas
       T2.descUF  -- da T2 quero só o UF

FROM silver_olist.pedido AS T1

LEFT JOIN silver_olist.cliente AS T2
ON T1.idCliente = T2.idCliente -- dessa maneira se amarra as 2 tabelas


