--- DESAFIO 01 ---
--- QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMA QUE CUSTAM MAIS DE 1500 DOLARES? ---

SELECT COUNT (*)
FROM Production.Product
WHERE ListPrice > 1500


--- OU POSSO FAZER COM O SEGUINTE CODIGO ---

SELECT  ListPrice
FROM Production.Product
WHERE ListPrice > 1500