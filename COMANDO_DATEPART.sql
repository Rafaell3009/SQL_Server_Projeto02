---  COMANDO DATEPART  ---


SELECT SalesOrderID, DATEPART(MONTH, OrderDate) as Mes
FROM Sales.SalesOrderHeader


SELECT AVG(TotalDue) AS Media, DATEPART(DAY, OrderDate) as Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)  --- POSSO TAMBEM POR YEAR, MONTH
ORDER BY Mes 