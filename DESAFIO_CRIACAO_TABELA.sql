--- DESAFIO  ---
  --  1. CRIE UMA TABELA NOVA  --
  --  2. INSIRA UMA LINHA DE DADOS  --
  --  3. INSIRA 3 LINHAS DE DADOS AO MESMO TEMPO  --
  --  4. CRIE UMA SEGUNDA TABELA  --
  --  5. INSIRA UMA LINHA NESTA NOVA TABELA  --
  --  6. COPIE OS DADOS DA SEGUNDA TABELA PARA A PRIMEIRA  --

   --  1. CRIE UMA TABELA NOVA  --

   CREATE TABLE Cotacao (
   NomeAtivo VARCHAR(50) PRIMARY KEY,
   AberturaDia NUMERIC(38, 2) NOT NULL,
   FechamentoDia NUMERIC(38, 2) NOT NULL,
   MaximaDia NUMERIC(38, 2) NOT NULL,
   MinimaDia NUMERIC(38, 2) NOT NULL,
   Volume NUMERIC(38, 2) NOT NULL,
   DowndrawMaximo NUMERIC(38, 2) NOT NULL,
   GanhoMaximo NUMERIC(38, 2) NOT NULL,
   GanhosPorcentagem NUMERIC(38, 2) NOT NULL,
   PerdasPorcentagem NUMERIC(38, 2) NOT NULL,
)

SELECT *
FROM Cotacao


--  2. INSIRA UMA LINHA DE DADOS  --

INSERT INTO Cotacao(
   NomeAtivo,
   AberturaDia,
   FechamentoDia,
   MaximaDia,
   MinimaDia,
   Volume,
   DowndrawMaximo,
   GanhoMaximo,
   GanhosPorcentagem,
   PerdasPorcentagem)
VALUES('COGN3', 12.44, 13, 12.43, 11.22, 10000000, 2.1, 10.23, 91.3, 8.7)


SELECT *
FROM Cotacao



--  3. INSIRA 3 LINHAS DE DADOS AO MESMO TEMPO  --

INSERT INTO Cotacao(
   NomeAtivo,
   AberturaDia,
   FechamentoDia,
   MaximaDia,
   MinimaDia,
   Volume,
   DowndrawMaximo,
   GanhoMaximo,
   GanhosPorcentagem,
   PerdasPorcentagem)
VALUES
('VALE3', 12, 13, 12.43, 11.22, 10000000, 2.1, 10.23, 91.3, 8.7),
('PETR4', 12.44, 13, 12.43, 11.22, 10000000, 2.1, 10.23, 91.3, 8.7),
('CMIN', 12.44, 13, 12.43, 11.22, 10000000, 2.1, 10.23, 91.3, 8.7)

SELECT *
FROM Cotacao


 --  4. CRIE UMA SEGUNDA TABELA  --

 CREATE TABLE Investidor (
   NomeAtivo VARCHAR(50) PRIMARY KEY,
   AberturaDia NUMERIC(38, 2) NOT NULL,
   FechamentoDia NUMERIC(38, 2) NOT NULL,
   MaximaDia NUMERIC(38, 2) NOT NULL,
   MinimaDia NUMERIC(38, 2) NOT NULL,
   Volume NUMERIC(38, 2) NOT NULL,
   DowndrawMaximo NUMERIC(38, 2) NOT NULL,
   GanhoMaximo NUMERIC(38, 2) NOT NULL,
   GanhosPorcentagem NUMERIC(38, 2) NOT NULL,
   PerdasPorcentagem NUMERIC(38, 2) NOT NULL)
 



     --  5. INSIRA UMA LINHA NESTA NOVA TABELA  --

INSERT INTO Investidor(
   NomeAtivo,
   AberturaDia,
   FechamentoDia,
   MaximaDia,
   MinimaDia,
   Volume,
   DowndrawMaximo,
   GanhoMaximo,
   GanhosPorcentagem,
   PerdasPorcentagem)
VALUES('VALE2', 15.14, 11, 10.63, 15.20, 10000000, 2.4, 9.23, 90.3, 7.7)

SELECT *
FROM Investidor



--  6. COPIE OS DADOS DA SEGUNDA TABELA PARA A PRIMEIRA  --

INSERT INTO Cotacao SELECT * FROM Investidor

SELECT *
FROM Cotacao



--- EXEMPLO PARA APAGAR LINHA(S) ---

--INSERT INTO Cotacao(
--   NomeAtivo,
--   AberturaDia,
--   FechamentoDia,
--   MaximaDia,
--   MinimaDia,
--   Volume,
--   DowndrawMaximo,
--   GanhoMaximo,
--   GanhosPorcentagem,
--   PerdasPorcentagem)
--VALUES('COGN3', 12.44, 13, 12.43, 11.22, 10000000, 2.1, 10.23, 91.3, 8.7)
--VALUES('CCONGONHAS', 12.44, 13, 12.43, 11.22, 10000000, 2.1, 10.23, 91.3, 8.7)

DELETE FROM Cotacao
WHERE NomeAtivo = 'CONGONHAS'



--- EXEMPLO ALTERAR TIPO DE COLUNA ---

ALTER TABLE Cotacao	
ALTER COLUMN  PerdasPorcentagem NUMERIC(38, 2)

EXEC SP_COLUMNS Cotacao
