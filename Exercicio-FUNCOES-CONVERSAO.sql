-- SQL cujo resultado para cada cliente:
-- O cliente NOME DO CLIENTE comprou QUANTIDADE no ano de ANO
-- Fa�a isso somente para o ano de 2016

SELECT 'O cliente ' || TC.NOME || ' comprou ' || TO_CHAR(ROUND(SUM(INF.QUANTIDADE * INF.PRECO),2)) || ' no ano de ' || TO_CHAR(DATA_VENDA, 'YYYY') AS FRASE
FROM TABELA_DE_CLIENTES TC
INNER JOIN NOTAS_FISCAIS NF ON TC.CPF = NF.CPF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = INF.NUMERO
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY TC.NOME, TO_CHAR(DATA_VENDA, 'YYYY')
ORDER BY TC.NOME;
