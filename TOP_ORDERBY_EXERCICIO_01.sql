--- TOP / ORDER BY---
--- EXERCICIO 01 ---
--- OBTER O ProductID DOS 10 PRODUTOS MAIS CAROS CADASTRADOS NO SISTEMA, LISTANDO DO MAIS CARO PARA O MAIS BARATO. ---

SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC