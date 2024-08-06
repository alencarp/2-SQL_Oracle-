--SUBCONSULTAS
-- Lista o movimento de Clientes cujo NUM_FUNC seja = 10
/*
SELECT C.CLIENTE, M.VALOR_VENDA
FROM CLIENTE C 
INNER JOIN MOVIMENTO M
ON C.CLIENTE = M.CLIENTE
WHERE C.NUM_FUNC = 10;
*/

-- Outra forma de fazer (sem INNER JOIN)
/*
SELECT CLIENTE, NUM_FUNC FROM CLIENTE WHERE NUM_FUNC = 10;  -- Resp.: CLIENTE1
SELECT * FROM MOVIMENTO WHERE CLIENTE IN ('CLIENTE1');
*/

-- O resultado da primeira consulta é um array, que coloco dentro da segunda consulta. 
-- É o que fiz manualmente acima, porém isso pode ser feito dinamicamente. Desta maneira:
/*
SELECT * FROM MOVIMENTO WHERE CLIENTE IN (
                SELECT CLIENTE, NUM_FUNC FROM CLIENTE WHERE NUM_FUNC = 10)
*/

-- COM UMA CONDIÇÃO: O SELECT QUE É COLOCADO DENTRO DO IN, SÓ PODE TER COMO RESPOSTA UM CAMPO.

-- Se tiver mais de um campo, o IN não vai entender que isso é um array de valores,
-- vai entender que isso é uma matriz, pq vai ter mais duas colunas e N linhas, e daí vai dar erro.

SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN ('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');


SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN 
(SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);