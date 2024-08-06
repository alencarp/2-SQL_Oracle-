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

-- O resultado da primeira consulta � um array, que coloco dentro da segunda consulta. 
-- � o que fiz manualmente acima, por�m isso pode ser feito dinamicamente. Desta maneira:
/*
SELECT * FROM MOVIMENTO WHERE CLIENTE IN (
                SELECT CLIENTE, NUM_FUNC FROM CLIENTE WHERE NUM_FUNC = 10)
*/

-- COM UMA CONDI��O: O SELECT QUE � COLOCADO DENTRO DO IN, S� PODE TER COMO RESPOSTA UM CAMPO.

-- Se tiver mais de um campo, o IN n�o vai entender que isso � um array de valores,
-- vai entender que isso � uma matriz, pq vai ter mais duas colunas e N linhas, e da� vai dar erro.

SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN ('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');


SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN 
(SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);