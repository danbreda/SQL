-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 Selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- 03 Selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'sao paulo'

-- COMMAND ----------

-- 04 Selecione produtos de perfumaria e beber com altura maior que 5cm

SELECT *

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes') 
AND vlAlturaCm > 5
