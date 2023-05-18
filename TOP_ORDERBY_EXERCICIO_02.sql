--- TOP / ORDER BY---
--- EXERCICIO 02 ---
--- OBTER O NOME E O NÚMERO DO PRODUTO, DOS PRODUTOS QUE TEM O ProductID ENTRE 1 ~ 4 ---

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID ASC


--- OU POSSO LOCALIZAR TAMBEM FAZENDO O SEGUINTE CODIGO ---

SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE ProductID > 0 AND ProductID < 5
ORDER BY ProductID ASC
