--- AULA MAX (m�ximo) / MIN (m�nimo / SUM (soma) / AVG (valor m�dio) ---

--- EXEMPLO DOM COMANDO SUM (soma) --- 
SELECT SUM (LineTotal) AS TOTAL_DA_LINE_COLUNA
FROM Sales.SalesOrderDetail


--- EXEMPLO DOM COMANDO MIN (m�nimo) --- 
SELECT MIN (LineTotal) AS VALOR_MINIMO
FROM Sales.SalesOrderDetail


--- EXEMPLO DOM COMANDO MAX (m�ximo) --- 
SELECT MAX (LineTotal) AS VALOR_M�XIMO
FROM Sales.SalesOrderDetail


--- EXEMPLO DOM COMANDO MIN (m�dia) --- 
SELECT AVG (LineTotal) AS VALOR_M�DIO
FROM Sales.SalesOrderDetail