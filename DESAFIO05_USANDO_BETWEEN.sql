--- DESAFIO 05 ---
--- QUANTOS PRODUTOS VERMELHOS TEMOS ENTRE 500 A 1000 DOLARES? ---

SELECT COUNT(*)
FROM Production.Product
WHERE ListPrice BETWEEN 500 AND 1000 and Color = 'red'


--- OU POSSO USAR O SEGUINTE COMANDO ---

SELECT ListPrice, Color
FROM Production.Product
WHERE ListPrice BETWEEN 500 AND 1000 and Color = 'red'
