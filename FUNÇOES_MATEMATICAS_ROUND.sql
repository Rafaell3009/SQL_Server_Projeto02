--- FUNÇÕES MATEMÁTICAS ---
-- FUNÇÃO ROUND (ARREDONDA CASAS DECIMAIS) --

SELECT LineTotal, ROUND(LineTotal, 2)
FROM Sales.SalesOrderDetail