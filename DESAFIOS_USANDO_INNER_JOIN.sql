--- COMANDO INNER JOIN + DESAFIOS ---
-- EXISTEM 3 TIPOS GERAIS DE JOINS --
 -- DESAFIO 01 --
---  QUEREMOS OS NOMES DOS PRODUTOS E AS INFORMAÇÕES DE SUAS SUBCATEGORIAS ---
    -- Preço(ListPrice), Nome do Produto, Nome da subcategoria --

	
SELECT *
FROM Production.product

SELECT *
FROM Production.ProductSubcategory

SELECT p.ListPrice, p.Name AS "NOME PRODUTO", ps.Name AS "NOME SUBCATEGORIA"
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS PS ON p.ProductSubcategoryID = ps.ProductSubcategoryID


 -- DESAFIO 02 --
---  QUEREMOS DAS TABELAS Person.PhonenumberType E TABELA Person.PersonPhone  ---
    -- BisnessEntityID, Name, PhoneNubmerTypeID, PhoneNumber --

SELECT *
	FROM Person.PhoneNumberType
SELECT *
	FROM Person.PersonPhone

SELECT pp.BusinessEntityID, pt.Name, pp.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PhoneNumberType AS pt
INNER JOIN Person.PersonPhone AS pp ON pp.PhoneNumberTypeID = pt.PhoneNumberTypeID
ORDER BY pt.Name ASC
	
	

	-- DESAFIO 03 --
---  TEMOS A TABELA Person.StateProvince E A ATBELA Person.Address ---
    -- FILTRE O AddressID, City, StateProvinceID e Nome do Estado EM APENAS 1 SELECT E USANDO JOIN--
	SELECT *
	FROM Person.StateProvince
	SELECT *
	FROM Person.Address

	SELECT  pa.AddressID, pa.City, ps.StateProvinceID, ps.Name 
	FROM Person.StateProvince AS PS
	INNER JOIN Person.Address AS PA ON ps.StateProvinceID = pa.StateProvinceID
	ORDER BY City ASC
