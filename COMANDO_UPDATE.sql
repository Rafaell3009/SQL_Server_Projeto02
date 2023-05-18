----    COMANDO UPDATE    ----

---  ESTE COMANDO PERMITE VOCE ATUALIZAR INFORMAÇÕES DE UMA LINHA DO BANCO DE DADOS ( CASO JA TENHA INSERIDO DADOS E QUEIRA AUTERAR) --
  -- OU DE TODAS AS LINHA DE UMA VEZ  ---

      -- SINTAXE --
--UPDATE NomeTabela
--SET Coluna1 = Valor1
--    Coluna2 = Valor2
--WHERE Condição

 --- EXEMPLO EM AUTERAR APENAS UMA LINHA ---

--INSERT INTO Investidor(
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
--VALUES('TESTE1', 15.14, 11, 10.63, 15.20, 10000000, 2.4, 9.23, 90.3, 7.7),
--('TESTE2', 15.14, 11, 10.63, 15.20, 10000000, 2.4, 9.23, 90.3, 7.7),
--('TESTE3', 15.14, 11, 10.63, 15.20, 10000000, 2.4, 9.23, 90.3, 7.7)

SELECT *
FROM Investidor

UPDATE Investidor
SET NomeAtivo = 'MUDAR UMA LINHA'
WHERE NomeAtivo = 'TESTE1'



 --- EXEMPLO EM ALTERAR TODAS AS LINHAS ---

 UPDATE Investidor
SET AberturaDia = 0

SELECT *
FROM Investidor
