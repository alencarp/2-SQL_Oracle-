SELECT * FROM TABELA_DE_PRODUTOS WHERE CODIGO_DO_PRODUTO = '290478';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';

--(IDADE >= 18 OR FORMADO_INGLES = TRUE)  => ESCOLA DE ESTUDOS ASTRONOMICOS
-- OR (IDADE < 18 AND FORMADO_ALEMAO = TRUE) => ESCOLA DE ESTUDOS SUPERSONICOS

--JUNTANDO AS DUAS EXPRESSOES
--(IDADE >= 18 OR FORMADO_INGLES = TRUE) OR (IDADE < 18 AND FORMADO_ALEMAO = TRUE)
--  (    F     OR          V    )       OR      (    V   AND    F   )
--              V                   OR              F
--                              V
-- Ex: idade = 17 anos, formado = inglês => resposta da expressão para este caso é Verdadeira (V)
--                                          Pode ir para a escola de estudos astronomicos pq eh formado em ingles


SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Limao%';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Limao%' AND EMBALAGEM = 'PET';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Limao%' OR SABOR LIKE '%Maca%';