-- Databricks notebook source
SELECT 
  descUF,
  COUNT(*) AS nrClientes
  
FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) -- AS nrClientes
  
FROM silver_olist.cliente

GROUP BY descUF
