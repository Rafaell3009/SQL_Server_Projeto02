---- COMANDO SUBQUERY (SUBSELECT) ---

----- EXEMPLO 01 ---
-- MONTE UM RELATORIO EM QUE TODOS SO PRODUTOS CADSTRADOS TEM O PREÇO DE VENDA ACIMA DA MEDIA ---

-- SELECT AVG(listPrice) 
-- FROM Production.Product 
-- SELECT * 
-- FROM Production.Product 
-- WHERE ListPrice > 438.66 

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)


--- EXEMPLO 02 ---
--- QUAL O NOME DOS FUNCIONARIOS QUE TEM O CARGO DE DESING ENGINE? ---

--SELECT *
--FROM Person.Person
--WHERE BusinessEntityID IN (5,6,15)
--SELECT *
--FROM HumanResources.Employee
--WHERE JobTitle = 'Design Engineer'

SELECT Firstname
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

-- OU POSSO FAZER DA SEGUINTE FORMA  --

SELECT pp.FirstName, pp.LastName, he.JobTitle
FROM Person.Person PP
INNER JOIN HumanResources.Employee HE
ON pp.BusinessEntityID = he.BusinessEntityID
WHERE he.JobTitle = 'Design Engineer'



----- EXEMPLO 03 ---
-- ENCONTRE PARA MIM TODOS OS ENDEREÇOS QUE ESTÃO NO ESTADO DE 'Alberta' --
-- USAR TABELA Person.Address e Person.StateProvince --

--SELECT *
--FROM Person.Address
SELECT *
FROM Person.StateProvince

SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID
FROM Person.StateProvince
WHERE Name = 'Alberta')

--- OU POSSO FAZER DA SEGUINTE FORMA USANDO INNER JOIN ---

SELECT pa.AddressLine1, pa.AddressLine2, ps.Name
FROM Person.Address PA
INNER JOIN Person.StateProvince PS 
ON pa.StateProvinceID = ps.StateProvinceID
WHERE Name = 'Alberta'


--- TESTE PESSOAL ---
 --- QUERO O NOME, SOBRE NOME  E DATA DE ADMISSÃO DAS PESSOAS SOMENTE DO ANO DE 2009. ---
--SELECT *
--FROM HumanResources.Employee
--SELECT *
--FROM Person.Person

SELECT BusinessEntityID, FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009-01-01' AND '2009-12-31')

--- MESMO RESULTADO USANDO O INEER JOIN ---

SELECT he.BusinessEntityID, pp.FirstName, pp.LastName, he.HireDate
FROM HumanResources.Employee AS HE
INNER JOIN Person.Person PP ON he.BusinessEntityID = pp.BusinessEntityID 
AND HireDate BETWEEN '2009-01-01' AND '2009-12-31' -- POSSO POR QUANTOS 'AND' EU  QUISER
AND FirstName LIKE 'D%'
ORDER BY PP.BusinessEntityID




