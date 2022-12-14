-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'delivered'

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue (delivered)

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja shipped e ano 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled') 
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja shipped ou canceled e ano 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja shipped ou canceled e ano 2018

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega, dtAprovado) AS diffDatasAprovadoPrevisao
        
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
