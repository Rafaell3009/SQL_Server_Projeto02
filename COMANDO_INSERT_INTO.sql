----   COMANDO INSERT INTO   ----
---  ESTE COMANDO PODE SER USADO PARA INSERIR DADOS EM UMA TABELA OU QUANDO QUER CRIAR UMA NOVA TABELA USANDO OS COMANDOS DO INSERT INTO  ---

   -- SINTAXE --
--INSERT INTO NomeTabela(Coluna1, Coluna2)
--VALUES(Valor1, Valor2)



--SELECT *
--FROM Canal

INSERT INTO Canal(CanalId, Nome, DataCriacao)
VALUES (1,'RAFAEL FERNANDES DE PAULO', 2023-05-04)

SELECT *
FROM Canal



--- TRANSFERIR DADOS DE UMA TABELA PARA OUTRA ---

SELECT * INTO TabelaNova 
FROM Canal

SELECT *
FROM TabelaNova



