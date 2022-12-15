-- Databricks notebook source
-- agrupar por UF para saber quantos clientes tem em cada UF (definir pelo que quer agrupar):

SELECT
  descUF,
  COUNT(*)
  
FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------

-- agrupar por UF para saber quantos clientes UNICOS (usando distinct) tem em cada UF:

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
  
FROM silver_olist.cliente

GROUP BY descUF
