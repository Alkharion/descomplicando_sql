-- Databricks notebook source
-- Qual categoria tem mais produtos vendidos


SELECT T2.descCategoria,
       COUNT(*)
        --T1.idProduto,
        --count(*)              -- Contagem de linhas do produto

FROM silver_olist.item_pedido AS T1 -- Tabela de vendas

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY COUNT(*) DESC

LIMIT 1

--GROUP BY T1.idProduto            -- Group por produto 
--ORDER BY count(*) DESC

-- COMMAND ----------

-- Qual categoria tem mais produtos mais caros, em média?

SELECT T2.descCategoria,
       AVG(T1.vlPreco)
       

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY AVG(T1.vlPreco) DESC

