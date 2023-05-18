--- COMANDO UNION ---

--- ESTE OPERADOR COMBINA 2 OU MAIS RESULTADOS DE UM SELECT EM APENAS UM RESULTADO ---
  -- ESTRUTURA DO COMANDO UNION --
  /* SELECT coluna1, coluna2
     FROM tabela1
	 UNION
	 SELECT coluna1, coluna2
	 FROM tabela2  */



SELECT FirstName, LastName, EmailPromotion, PersonType
FROM Person.Person
WHERE EmailPromotion = '0'
UNION
SELECT FirstName, LastName, EmailPromotion, PersonType
FROM Person.Person
WHERE PersonType = 'IN'
ORDER BY EmailPromotion 



