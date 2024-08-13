--FUNCOES NUMERICAS

--ROUND(number) - arredonda para cima ou para baixo 
--TRUNC(number) - sempre arredonda para baixo
--CEIL(n) - arredonda sempre pra cima
--FLOOR(n) - traz o mesmo resultado do TRUNC(), pega o primeiro numero inteiro antes da casa decimal
--POWER(m,n) - 'm' elevado a 'n'
--EXP(n) - traz o número exponencial(e = 2.71828183...) elevado a 'n' 
--SQRT(n) - calcula a raiz quadrada de n
--SIGN(n) - Se n<0, retorna -1. Se n=0, retorna 0. Se n>0 retorna 1.
--ABS(n) - o valor absoluto, sempre vai deixar o número positivo.
--MOD(m,n) - resto da divisao. m%n

SELECT 3.4 FROM DUAL;
SELECT ROUND(3.4) FROM DUAL;
SELECT ROUND(3.6) FROM DUAL;
SELECT ROUND(3.5) FROM DUAL;

SELECT TRUNC(3.4) FROM DUAL;
SELECT TRUNC(3.6) FROM DUAL;
SELECT TRUNC(3.5) FROM DUAL;

SELECT CEIL(3.4) FROM DUAL;
SELECT CEIL(3.6) FROM DUAL;
SELECT CEIL(3.5) FROM DUAL;

SELECT FLOOR(3.4) FROM DUAL;
SELECT FLOOR(3.6) FROM DUAL;
SELECT FLOOR(3.5) FROM DUAL;

SELECT POWER(7,2) FROM DUAL;
SELECT POWER(34,4) FROM DUAL;
SELECT POWER(2,10) FROM DUAL;

SELECT EXP(4) FROM DUAL; 

SELECT SQRT(144) FROM DUAL;
SELECT SQRT(1024) FROM DUAL;
SELECT SQRT(9) FROM DUAL;

SELECT SIGN(-3) FROM DUAL;
SELECT SIGN(3) FROM DUAL;
SELECT SIGN(0) FROM DUAL;

SELECT ABS(-403) FROM DUAL;
SELECT ABS(403) FROM DUAL;
SELECT ABS(0) FROM DUAL;

SELECT MOD(10, 6) FROM DUAL;


--LOG(M,N) - Logaritmo de base m de n
--SIN(n) - Seno de n
--SINH(n) - Seno hiperbolico de n
--TAN(n) - Tangente de n
--TANH(n) - Tangente hiperbolica de n
--COS(n) - Cosseno de n
--COSH(n) - Cosseno hiperbolico de n