--- FUN��O HAVING ---
--- O HAVING � BASICAMENTE MUITO USADO EM JUN��O COM O GROUP BY PARA FILTRAR RESULTADOS DE UM AGRUPAMENTO ---
--- ELE � BASICAMENTE UM WHERE PARA DADOS AGRUPADOS ---

  -- SELECT coluna1, fun��oAgrega��o --
  -- FROM nomeTabela --
  -- GROUP BY coluna1 --
  -- HAVING condi��o --

  --- A GRANDE DIFEREN�A ENTRE HAVING E WHERE: --- 
  --- O HAVING � APLICADO DEPOIS QUE OS DADOS JA FORAM AGRUPADOS ---
  --- O WHERE � APLCADO ANTES DOS DADOS SEREM AGRUPADOS ---

  -- EXEMPLO 01 --
  --- VAMOS DIZER QUE QUEREMOS SABER QUAIS NOMES NO SISTEMA TEM UMA OCORRENIA MAIOR DO QUE 10 VEZES  NA TABELA Person.Person. --

  SELECT FirstName, COUNT(FirstName) AS "NOMES COM MAIS DE 10 OCORRENCIAS"
  FROM Person.Person
  GROUP BY FirstName
  HAVING COUNT(FirstName) > 10
  ORDER BY COUNT(FirstName) DESC

  -- EXEMPLO 02 --
  --- QUEREMOS SABER QUAIS PRODUTOS, QUE NO TOTAL DE VENDAS, EST�O ENTRE 162K E 500K NA TABELA Sales.OrderDetail --

  SELECT ProductID, SUM(LineTotal) AS "TOTAL DE VENDAS ENTRE 162K E 500K"
  FROM Sales.SalesOrderDetail
  GROUP BY ProductID
  HAVING SUM(LineTotal) BETWEEN 162000 AND 500000
  ORDER BY SUM(LineTotal) DESC
  

  -- EXEMPLO 03 --
  --- QUAIS NOMES NO SISTEMA TEM UMA OCORRENCIA MAIR QUE 10 VEZES, POR�M SOMENTE ONDE O T�TULO � "Mr" NA TABELA Person.Person ---
  
  SELECT FirstName, COUNT(FirstName) AS "NOMES COM MAIS DE 10 OCORRENCIAS"
  FROM Person.Person
   WHERE Title = 'Mr.'
  GROUP BY FirstName
  HAVING COUNT(FirstName) > 10
  ORDER BY COUNT(FirstName) DESC

