--- TIPOS DE DADOS ---

-- 1. BOLEANOS --
-- 2. CARACTERE --
-- 3. NUMEROS --
-- 4. TEMPORAIS --

--- 1. BOLEANOS ---
  -- POR PADR�O ELE � INICIALIZADO COMO NULO, E PODE RECEBER TANTO 1 OU 0 --
   -- ELE PODE SER REPRESENTADO POR 'BIT' --

---- 2. CARACTERES ---
  -- TAMANHO FIXO - 'CHAR' (PERMITE INSERIR AT� UMA QUANTIDADE FIXA DE CARACTERES E SEMPRE OCUPA TODO ESPA�O RESERVADO 10/50) --
  -- TAMANHO VARIAVEL 'VARCHAR' OU 'NVARCHAR' (PERMITE INERIR AT� UMA QUANTIDADE QUE FOR DEFINIDA, POREM SO USA O ESPA�O QUE FOR PREENCHIDO) --

--- 3. M�MEROS ---
  --VALORES EXATOS --
    -- 1. 'TINYINT' (N�O TEM PARTE, VALOR FRACIONADO (EX: 1.43, 24.23), SOMENTE 1, 234234, 34, 44, ETC...) --
    -- 2. 'SMALLINT' (MESMA COISA POREM LIMITE MAIOR) --
    -- 3. 'INT' (MESMA COISA POREM LIMITE MAIOR) --
    -- 4. 'BIGINT' (MESMA COISA PODEM LIMITE MAIOR) --
    -- 5. 'NUMERIC' OU 'DECIMAL' (VALORES EXATOS, POREM PERMITE TER PARTE FRACIONADA, QUE TAMBEM PODE SER ESPECIFICADA A --
    --     PRECIS�O E ESCALA (ESCALA � O MUMERO DE DIGITOS NA PARTE FRACIONAL. EX: 5.2, 10.34, ETC...)) --
  
  -- VALORES APROXIMADOS --
    -- 1. 'REAL' (TEM PRECIS�O APROXIMADA DE AT� 15 DIGITOS) --
	-- 2. 'FLOAT' (MESMO CONCEITO DE REAL) --

  -- TEMPORAIS --
    -- 'DATE' (ARMAZENA DATA NO FORMATO AAAA/MM/DD) -- 
	-- 'DATETIME' (ARMAZENA DATA E HORA NO FORMATO AAAA/MM/DD/HH/MM/SS) -- 
	-- 'DATETIME2' (ARMAZENA DATA E HORA NO FORMATO AAAA/MM/DD/HH/MM/SSSSSSS) -- 
	-- 'SMALLDATETIME' (ARMAZENA DATA E HORA RESPEITANDO O LIMITE ENTRE '1900-01-01:00:00:00' TO '2079-06-06:23:59:59') -- 
	-- 'TIME' (ARMAZENA DATA E HORA RESPEITANDO O LIMITE ENTRE '1900-01-01:00:00:00.000000' TO '2079-06-06:23:59:59.9999999') -- 
	-- 'DATETIMEOFFSET' (PERMITE ARMAZENAR INFORMA��ES DE DATA E HORA INCLUINDO O FUSO HORARIO) --






