-- UNION - Une o resultado de duas consultas
-- Requisito: O resultado das duas consultas devem trazer o mesmo n�mero de campos e corresponderem ao mesmo tipo

-- Pegar os c�digos de cliente e fornecedor e cidades e estados em uma unica selecao.
/*
SELECT ID_CLIENTE AS CLI_FOR, CIDADE, ESTADO FROM TABELA_CLIENTE
UNION
SELECT ID_FORNECEDOR AS CLI_FOR, CIDADE, ESTADO FROM TABELA_FORNECEDOR
*/

-- Quando fazemos o UNION s� com CIDADE e ESTADO, ele faz um DISTINCT ap�s o UNION e d� o resultado.
-- Ele pega tudo e depois somente o DISTINCT, pq n�o tem coluna de PK, que faz o result n�o vir com linhas duplicadas
/*
SELECT CIDADE, ESTADO FROM CLIENTE 
UNION
SELECT CIDADE, ESTADO FROM FORNECEDOR
*/

-- Se eu quisesse exibir tudo teria que usar o UNION ALL
/*
SELECT CIDADE, ESTADO FROM CLIENTE 
UNION ALL
SELECT CIDADE, ESTADO FROM FORNECEDOR
*/

SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES;  -- 12
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES; -- 4

SELECT BAIRRO FROM TABELA_DE_CLIENTES;  -- 16
SELECT BAIRRO FROM TABELA_DE_VENDEDORES; -- 4

SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;
-- 13

SELECT BAIRRO FROM TABELA_DE_CLIENTES
UNION
SELECT BAIRRO FROM TABELA_DE_VENDEDORES;
-- 13

SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;
-- 16

SELECT BAIRRO FROM TABELA_DE_CLIENTES
UNION ALL
SELECT BAIRRO FROM TABELA_DE_VENDEDORES;
-- 20

SELECT DISTINCT BAIRRO, 'CLIENTE' AS ORIGEM FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO, 'VENDEDOR' AS ORIGEM FROM TABELA_DE_VENDEDORES;
-- 16

-- COM MAIS 1 COLUNA, A LINHA AS LINHAS QUE TEM O MESMO BAIRRO, N�O T�M A MESMA ORIGEM, PORTANTO, S�O DIFERENTES
SELECT DISTINCT BAIRRO, 'CLIENTE' AS ORIGEM FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO, 'VENDEDOR' AS ORIGEM FROM TABELA_DE_VENDEDORES;
