--Ranking de vendas por tamanho
--Resposta ALURA  

SELECT CONSULTA_RELATORIO.tamanho,
       CONSULTA_RELATORIO.ano,
       CONSULTA_RELATORIO.quantidade_total,
       Round(
       ( CONSULTA_RELATORIO.quantidade_total /
         CONSULTA_RELATORIO.quantidade_geral ) * 100, 2) AS
       PERCENTUAL_PARTICIPACAO
FROM   (SELECT TP.tamanho,
               Extract(year FROM NF.data_venda)
               AS ANO,
               SUM(INF.quantidade)
               AS
                      QUANTIDADE_TOTAL,
               (SELECT TOTAL_ANO.quantidade_geral
                FROM   (SELECT Extract(year FROM NF.data_venda) AS ANO,
                               SUM(INF.quantidade)              AS
                               QUANTIDADE_GERAL
                        FROM   notas_fiscais NF
                               inner join itens_notas_fiscais INF
                                       ON NF.numero = INF.numero
                        WHERE  Extract(year FROM NF.data_venda) = 2016
                        GROUP  BY Extract(year FROM NF.data_venda)) TOTAL_ANO)
               AS
               QUANTIDADE_GERAL
        FROM   tabela_de_produtos TP
               inner join itens_notas_fiscais INF
                       ON TP.codigo_do_produto = INF.codigo_do_produto
               inner join notas_fiscais NF
                       ON INF.numero = NF.numero
        WHERE  Extract(year FROM NF.data_venda) = 2016
        GROUP  BY TP.tamanho,
                  Extract(year FROM NF.data_venda)
        ORDER  BY SUM(INF.quantidade) DESC) CONSULTA_RELATORIO; 