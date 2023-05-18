--- AULA MAX (máximo) / MIN (mínimo / SUM (soma) / AVG (valor médio) ---

--- EXEMPLO DOM COMANDO SUM (soma) --- 
SELECT SUM (LineTotal) AS TOTAL_DA_LINE_COLUNA
FROM Sales.SalesOrderDetail


--- EXEMPLO DOM COMANDO MIN (mínimo) --- 
SELECT MIN (LineTotal) AS VALOR_MINIMO
FROM Sales.SalesOrderDetail


--- EXEMPLO DOM COMANDO MAX (máximo) --- 
SELECT MAX (LineTotal) AS VALOR_MÁXIMO
FROM Sales.SalesOrderDetail


--- EXEMPLO DOM COMANDO MIN (média) --- 
SELECT AVG (LineTotal) AS VALOR_MÉDIO
FROM Sales.SalesOrderDetail