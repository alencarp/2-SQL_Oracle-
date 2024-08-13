--FUNCOES DE CONVERSAO

--TO_CHAR() - converte uma data de DATE para CARACTER=TEXTO

/*TO_CHAR(number) - tb pode ser aplicado para números. Converte um NUMBER em CARACTER

Posso enviar como o número será exibido. Ex.:
                
9 - Posição numérica - Ex: 9999 = 1234
0 - Zeros antes do número - Ex: 009999 = 001234
$ - Símbolo de moeda - Ex: $9999 = $1234
. - Usar o ponto como separador - Ex: 9999.99=1234.12
, - Usar a vírgula como separador - Ex.: 9999,99 = 1234,12
MI - Símbolo negativo do lado direito do número.
PR - Número negativo em parênteses.
EEEE - Notação científica
*/
SELECT TO_CHAR(1234) || ' Hello' FROM DUAL;
SELECT 1234 || ' Hello' FROM DUAL;
SELECT TO_CHAR(1234) + 5 FROM DUAL;
SELECT 1234 + 5 FROM DUAL;
SELECT TO_CHAR(1234.123, '9999') FROM DUAL;
SELECT TO_CHAR(1234.123, '9999.999') FROM DUAL;
SELECT TO_CHAR(1234.123, '9999,999') FROM DUAL;

--TO_DATE() - converte uma data de TEXTO para DATE
SELECT TO_DATE('12/08/2024', 'DD/MM/YYYY') FROM DUAL;

--EXTRACT() - extraio um pedaço da data (YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, TIMEZONE_HOUR, TIMEZONE_MINUTE, TIMEZONE_REGION, TIMEZONE_ABBR)
SELECT EXTRACT(MONTH FROM TO_DATE('12/11/2019','DD/MM/YYYY')) FROM DUAL;
SELECT EXTRACT(MONTH FROM TO_DATE('12/11/2019','MM/DD/YYYY')) FROM DUAL;

--TO_NUMBER() - converte um texto em número
SELECT '10' + 10 FROM DUAL;
SELECT TO_NUMBER('10') + 10 FROM DUAL;

--NVL(exp1, n) - testa se o valor é nulo e, se for, ele converte para um determinado valor
SELECT NVL(19,0) FROM DUAL;
SELECT NVL(NULL,10) FROM DUAL;

SELECT NVL(TV.NOME, 'NAO ENCONTRADO') AS NOME_VENDEDOR,
       NVL(TV.BAIRRO, 'NAO ENCONTRADO') AS BAIRRO_VENDEDOR,
       NVL(TC.NOME, 'NAO ENCONTRADO') AS NOME_CLIENTE,
       NVL(TC.BAIRRO, 'NAO ENCONTRADO') AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES TV
FULL JOIN TABELA_DE_CLIENTES TC
ON TV.BAIRRO = TC.BAIRRO

--GREATEST(expr) - retorna o maior de uma lista de números separados por vírgula
SELECT GREATEST(1,2,3,4,5) FROM DUAL;