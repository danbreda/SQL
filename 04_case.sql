-- Databricks notebook source
-- CASE WHEN seria pra usar algumas condições pra criar uma coluna com suas linhas pra cada caso
SELECT *,
       CASE 
         WHEN descUF = 'SP' THEN 'paulista' 
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade 
       -- O 'END AS' é o nome da minha coluna.
       
FROM silver_olist.cliente

-- COMMAND ----------


SELECT *,
       -- Esta é uma coluna nova 
       CASE 
         WHEN descUF = 'SP' THEN 'paulista' 
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade, 
       
       -- Esta é outra coluna nova
       CASE 
         WHEN descCidade LIKE '%sao%' THEN 'tem são no nome'
         ELSE 'não tem são no nome'
       END AS descCidadeSao
              
FROM silver_olist.cliente

-- O 'LIKE' com as % funciona pra pegar pedaços de string no meio de uma string.

-- COMMAND ----------

SELECT *,
       CASE
         WHEN descUF IN ('SP', 'RJ', 'MG', 'ES') THEN 'sudeste'
       END AS descRegiao
      
FROM silver_olist.vendedor
