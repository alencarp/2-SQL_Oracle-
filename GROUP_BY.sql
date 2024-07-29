/* SELECT DISTINCT 
   <Lista de campos> ou * 
   FROM <Nome da Tabela> 
   WHERE <Filtro> 
   AND ROWNUM <= <VALOR> 
   GROUP BY <CAMPOS> 
   ORDER BY <CAMPOS> (ASC,DESC)
*/

/* QUANDO UTILIZAR O 'GROUP BY', NA LISTA DE CAMPOS NUM�RICOS QUE VOC� EST� ESCOLHENDO PARA AGRUPAR,
   COLOCAR A F�RMULA MATEM�TICA QUE VAI DIZER SE VOU SOMAR, CALCULAR A M�DIA, ETC.:(SUM, AVG, MIN, MAX, COUNT)
*/

-- VOC� S� P�E NO 'GROUP BY' OS CAMPOS N�O NUM�RICOS
-- E PARA FAZER A 'SUM, AVG, MIN, MAX' VOC� S� P�E CAMPOS NUM�RICOS

SELECT * FROM TABELA_DE_CLIENTES;

SELECT ESTADO, 
       SUM(VOLUME_DE_COMPRA) SOMA
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO;

SELECT ESTADO, 
       MIN(VOLUME_DE_COMPRA) MINIMO
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO;

SELECT ESTADO, 
       MAX(VOLUME_DE_COMPRA) MAXIMO
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO;

SELECT ESTADO, 
       AVG(VOLUME_DE_COMPRA) MEDIA
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO;

SELECT ESTADO, 
       ROUND(AVG(VOLUME_DE_COMPRA), 2) MEDIA
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO;
--------------------------------------------------------------------------------

SELECT * FROM TABELA_DE_CLIENTES;

SELECT CIDADE,
       SUM (IDADE)     
FROM TABELA_DE_CLIENTES
GROUP BY CIDADE;

SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES ORDER BY CIDADE, IDADE;
SELECT DISTINCT CIDADE, IDADE FROM TABELA_DE_CLIENTES ORDER BY CIDADE, IDADE;

/* OS CAMPOS QUE N�O ESTAO NO CRIT�RIO DE AGREGA��O, OU SEJA, NO 'GROUP BY', DEVEM SER NUM�RICOS, 
 QUE NESTE CASO � A 'IDADE', ENT�O APLICA-SE 'a formula' DE AGREGA��O NELE (SUM, AVG, MIN, MAX, COUNT)
 E NO ORDER BY, N�O SE COLOCA O CAMPO NUM�RICO QUE EST� SENDO USADO PARA FAZER A AGREGA��O (NESTE CASO 'IDADE')
*/
SELECT CIDADE, SUM(IDADE) FROM TABELA_DE_CLIENTES GROUP BY CIDADE ORDER BY CIDADE;
SELECT CIDADE, AVG(IDADE) FROM TABELA_DE_CLIENTES GROUP BY CIDADE ORDER BY CIDADE;
SELECT CIDADE, ROUND(AVG(IDADE),2) FROM TABELA_DE_CLIENTES GROUP BY CIDADE ORDER BY CIDADE;

SELECT CIDADE, SUM(LIMITE_DE_CREDITO), SUM(IDADE) FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

-- QUAL � O PRODUTO MAIS CARO DE CADA EMBALAGEM?
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM;