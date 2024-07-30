/*
Para cada cliente, temos seus limites de crédito mensais. Liste somente os nomes dos clientes e os classifique por:

Acima ou igual a 150.000 de limite de crédito - Clientes grandes
Entre 150.000 e 110.000 de limite de crédito - Clientes médios
Menores que 110.000 de limite de crédito - Clientes pequenos
*/

SELECT * FROM TABELA_DE_CLIENTES WHERE ROWNUM <= 5;

SELECT NOME, LIMITE_DE_CREDITO FROM TABELA_DE_CLIENTES;
SELECT COUNT(*) FROM TABELA_DE_CLIENTES;

SELECT NOME, LIMITE_DE_CREDITO,
(CASE WHEN LIMITE_DE_CREDITO >= 150000 THEN 'CLIENTES GRANDES'
      WHEN LIMITE_DE_CREDITO >= 110000 AND LIMITE_DE_CREDITO < 150000 THEN 'CLIENTES MEDIOS'
 ELSE 'CLIENTES PEQUENOS'
 END) AS CLASSIFICACAO
FROM TABELA_DE_CLIENTES
ORDER BY CLASSIFICACAO;