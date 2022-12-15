-- Databricks notebook source
SELECT *,

        CASE WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade
        
        
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
        -- Isso é uma coluna nova
        CASE 
          WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade,
        
        -- Isso aqui é outra coluna nova
        CASE 
          WHEN descCidade LIKE '%sao%' THEN 'Tem sao no nome'
          ELSE 'Não tem sao no nome'
        END as descCidadeSao
        
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
        CASE WHEN descUF IN ('SP','MG','RJ','ES') THEN 'sudeste'
        END AS descRegiao

FROM silver_olist.vendedor
