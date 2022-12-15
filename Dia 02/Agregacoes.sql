-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas-- linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClientesNaoNulos -- id de clientes nao nulos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClientesNaoNulos, -- id de clientes nao nulos
    COUNT(DISTINCT idCliente) AS nrIdClientesDistintos, -- id de clientes distintos
   
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes unicos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS qtLinhas,
    COUNT(DISTINCT idCliente) AS qtClientes,
    COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
    ROUND( AVG(vlPreco) ,2) AS avgPreco, -- Media da coluna vlPreco
    
    INT(PERCENTILE(vlPreco, 0.5)) AS MedianPreco, -- Preco mediano dos produtos
    
    MAX(vlPreco) AS maxPreco, -- Maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- Media da coluna vlFrete
    MAX(vlFrete) AS maxFrete, -- Maximo da coluna vlFrete
    MIN(vlFrete) AS minFrete -- Minimo da coluna vlFrete

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente

WHERE descUF = 'MT'
