-- Databricks notebook source
SELECT
    COUNT(*) AS nrLinhasNaoNulas, -- conta linhas nao nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- conta os ids de clientes nao nulos
    COUNT(distinct idCliente) AS nrIdClienteDistintos, -- conta id de clientes distintos
    
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes unicos
    
FROM silver_olist.cliente

-- COMMAND ----------

-- selecione a contagem de pessoas que são de presidente prudente:

SELECT 
    COUNT(*)
FROM silver_olist.cliente
WHERE descCidade = 'presidente prudente'

-- COMMAND ----------

SELECT 
    COUNT(*) AS atLinhas,
    COUNT(distinct idCliente) AS qtdClientes,
    COUNT(distinct idClienteUnico) AS qtdClientesUnicos
    
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 

    
    PERCENTILE(vlPreco, 0.5) AS medianPreco, -- preço mediano dos produtos 
    AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco 
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlfrete) AS avgFrete, -- media da coluna vlFrete
    MAX(vlFrete) AS maxFrete, 
    MIN(vlFrete) AS minFrete
    
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 

    
    ROUND( PERCENTILE(vlPreco, 0.5), 2) AS medianPreco, -- ROUND arredonda após a virgula pela quantia la colocada no 'ROUND( xxxx(), 2)' <- o 2.
    
    INT(AVG(vlPreco)) AS avgPreco, -- INT arredonta tudo em inteiro
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlfrete) AS avgFrete, -- media da coluna vlFrete
    MAX(vlFrete) AS maxFrete, 
    MIN(vlFrete) AS minFrete
    
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'
