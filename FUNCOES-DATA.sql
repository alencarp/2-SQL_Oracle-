--FUNCOES DATA
/* O Oracle armazena a data assim:
Como um n�mero de 7 bytes onde a parte inteira �: ANO + M�S + DIA = 20240812
E a parte decimal: HORAS + MINUTOS + SEGUNDOS = 123235
12/08/2024 as 12:32:35 = 20240812,123235

Pelo fato de armazenar as datas como n�meros decimais posso fazer operacoes matematicas com elas:
DATA + NUMERO = Adiciona um n�mero de dias � data
DATA - NUMERO = Diminui o n�mero de dias da data
DATA - DATA = Subtrai uma data da outra produzindo o n�mero de dias
DATA + (NUMERO/24) = Adiciono horas � data

COMO REPRESENTAR DIA, MES, ANO, S�mbolo de separa��o, HORA, MINUTO, SEGUNDO (s�o 7 simbolos)
D - Dia da semana, DD- Dia do m�s, DDD - N�mero do dia no ano, DAY - Dia por extenso
MM - M�s do ano, MON - M�s abreviado, MONTH - M�s por extenso
YYYY - Ano com 4 d�gitos, YY - Ano com dois d�gitos]

Simbolo de separador de data - / * , ; ou um texto qualquer

HH- Hora com dois digitos, HH12- Hora de 0 a 12, HH24- Hora de 0 a 24
MI - Minuto
SS - Segundo
*/

--TO_CHAR
--pega um dado no tipo data e passa para uma string
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS') FROM DUAL;
SELECT NOME, IDADE, TO_CHAR(DATA_DE_NASCIMENTO, 'DD MONTH YYYY, DAY') FROM TABELA_DE_CLIENTES;
SELECT SYSDATE, TO_CHAR(SYSDATE, 'YYYY') FROM DUAL; --Pega s� o ano da data

--TO_DATE
--pega uma string que representa uma data e converte para o tipo Date
--tenho que passar os s�mbolos de como o string est� representando a data
SELECT TO_DATE('31/10/1965', 'DD-MM-YYYY') FROM DUAL;
--    

--SYSDATE
SELECT SYSDATE FROM DUAL;
SELECT SYSDATE + 127 FROM DUAL;
SELECT NOME, IDADE, (SYSDATE - DATA_DE_NASCIMENTO)/365 FROM TABELA_DE_CLIENTES;

--MONTHS_BETWEEN
SELECT NOME, IDADE, MONTHS_BETWEEN(SYSDATE, DATA_DE_NASCIMENTO)/12 FROM TABELA_DE_CLIENTES;

--ADD_MONTHS
SELECT ADD_MONTHS(SYSDATE, 10) FROM DUAL;

--NEXT_DAY
SELECT NEXT_DAY(SYSDATE, 'QUARTA') FROM DUAL;

--LAST_DAY() - pega o �ltimo dia do ano
SELECT LAST_DAY(SYSDATE) FROM DUAL;

--TRUNC()
--Consigo tirar a hora, minuto e segundo de uma data se eu quero s� dia, mes e ano.
SELECT SYSDATE, TRUNC(SYSDATE, 'DAY') FROM DUAL;

SELECT SYSDATE, TRUNC(SYSDATE, 'YEAR') FROM DUAL;
SELECT SYSDATE, SYSDATE + 200, TRUNC(SYSDATE + 200, 'YEAR') FROM DUAL; --pega o primeiro dia do ano da data que est� sendo especificada
SELECT SYSDATE, SYSDATE + 200, TRUNC(SYSDATE + 200, 'MONTH') FROM DUAL; --pega o primeiro dia do mes da data que est� sendo especificada

--ROUND()
--� como se arredondasse a data dependendo do per�odo especificado
SELECT SYSDATE, ROUND(SYSDATE, 'YEAR') FROM DUAL; --se j� passei do meio do ano, vai retornar o primeiro dia do outro ano
SELECT SYSDATE + 200, ROUND(SYSDATE + 200, 'YEAR') FROM DUAL; --Se ainda n�o passei do meio do ano, o ROUND() vai retornar o primeiro dia do ano especificado.

SELECT SYSDATE, ROUND(SYSDATE, 'MONTH') FROM DUAL; --ainda n�o passei da metade do m�s, ent�o mostra o primeiro dia daquele mesmo m�s
SELECT SYSDATE + 5, ROUND(SYSDATE + 5, 'MONTH') FROM DUAL; --vai mostrar o primeiro dia do pr�x m�s, pq j� passou do dia 15 do mes especificado.


--Exercicio: Calcular o n�mero de dias que uma pessoa viveu desde o nascimento
SELECT * FROM TABELA_DE_CLIENTES;
SELECT CPF, NOME, DATA_DE_NASCIMENTO FROM TABELA_DE_CLIENTES WHERE CPF = '1471156710';
SELECT CPF, NOME, DATA_DE_NASCIMENTO FROM TABELA_DE_CLIENTES WHERE CPF = '1471156710';

SELECT SYSDATE FROM DUAL;

SELECT CPF, NOME, DATA_DE_NASCIMENTO, (SYSDATE - DATA_DE_NASCIMENTO) AS DIAS_VIVIDOS FROM TABELA_DE_CLIENTES WHERE CPF = '1471156710';
SELECT CPF, NOME, DATA_DE_NASCIMENTO, (SYSDATE - DATA_DE_NASCIMENTO)/365 AS ANOS_VIVIDOS FROM TABELA_DE_CLIENTES WHERE CPF = '1471156710';


--Exercicio: Como seria uma consulta que retorne o nome do cliente e sua data de nascimento por extenso?
SELECT NOME, DATA_DE_NASCIMENTO, TO_CHAR(DATA_DE_NASCIMENTO, 'dd "de" MONTH "de" YYYY') FROM TABELA_DE_CLIENTES;

SELECT NOME, TO_CHAR(DATA_DE_NASCIMENTO, 'dd/MM/YYYY') FROM TABELA_DE_CLIENTES;
