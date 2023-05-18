---- COMANDO ALTER TABLE   ----

�--- SERVE PARA ALTERAR A ESTRUTURA DE UMA TABELA  ---
  
  --- AS PRONCIPAIS COISAS QUE PODEM SER FEITAS COM ESTE COMANDO S�O: ---
     -- ADD, REMOVER, OU ALTERAR UMA COLUNA --
	 -- SETAR VALORES PADR�O PARA UMA COLUNA --
	 -- ADD OU REMOVER RESTRI��ES DE UMA COLUNA --
	 -- RENOMEAR UMA TABELA --

  -- SINTAXE  --
  --ALTER TABLE NomeTabela
  --Condi��o

  
  CREATE TABLE Deletar (
  id INT PRIMARY KEY,
  Nome VARCHAR(150) NOT NULL,
  Categoria VARCHAR(200) NOT NULL,
  DataCricacao DATETIME  NOT NULL
  )

  SELECT*
  FROM Deletar


  ---  ALTERAR TIPO DE COLUNA   ---

  ALTER TABLE Deletar
  ALTER COLUMN Nome VARCHAR(200) NOT NULL


  ---  ALTERAR NOME DE COLUNA   ---

  --EXEC sp_rename 'NomeTabela.NomeColunaAtual', 'NomeColunaNova', 'COLUMN'
    -- EX--
  EXEC sp_rename 'Deletar.Categoria', 'TipoDeFilme', 'COLUMN'


    ---  ALTERAR NOME DE COLUNA   ---

	--EXEC sp_rename 'NomeTabelaAtual', 'NomeTabelaNova'
	-- EX --
	EXEC sp_rename 'Deletar', 'Deletando'