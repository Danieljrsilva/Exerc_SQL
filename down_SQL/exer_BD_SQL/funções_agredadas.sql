/*
-----------------------------------------------------
CONVERT E CAST
-----------------------------------------------------
As funções de transmissão e os operadores permitem a 
conversão de valores de um tipo de dado para outro:
*/
SELECT CONVERT(_latin1'MÜller' USING utf8);

SELECT (CAST(10 AS DECIMAL)) + 10; #resulta em:20
SELECT (CONVERT(10,DECIMAL)) + 10; #resulta em:20

#Mas se queremos juntar os dois valores como se se
#tratassem de texto:
SELECT CONCAT(CAST(10 AS CHAR),10); # resulta em: 1010
SELECT CONCAT(CONVERT(10,CHAR),10); # resulta em: 1010

SELECT codigo, CONCAT(nome,SPACE(1),sobrenome) AS 'Nome completo'
FROM cliente ORDER BY nome DESC;

/*
--------------------------------------------------------------
LENGTH(str)
--------------------------------------------------------------
Retorna o comprimento da string, medido em bytes
*/
SELECT LENGTH('texto');

/*
----------------------------------------------------------------------
Lower()
--------------------------------------------------------------------

Retorna a string com todos os caracteres alterados para minusculas
*/
SELECT LOWER('QuAdRadO');

/*
----------------------------------------------------------------------
Upper()
---------------------------------------------------------------------
Retorna o comprimento da string, medido em bytes
*/
SELECT UPPER('QuAdRaDo');

/*
----------------------------------------------------------------------
Space()
----------------------------------------------------------------------
Adiciona espaços
*/
SELECT CONCAT('teste',SPACE(7),'teste2');

/*
----------------------------------------------------------------------
SUBSTRING()
--------------------------------------------------------------------
"Recorta Strings"
2 quantas strings será recortado,3 ate qual letra será recortado
-5 é de tras para frente e 4 quantas será recortado.
*/
SELECT SUBSTRING('Testando',2,3); #saida: est
SELECT SUBSTRING('Testando',-5,4); #saida: tand

/*
------------------------------------------------------------------------
RIGHT(str,len)
-----------------------------------------------------------------------
Retorna os caracteres mais á direita da string.
*/
SELECT RIGHT('Testando', 4);

/*
--------------------------------------------------------------------------
LEFT(str,Len)
------------------------------------------------------------------------
Retorna os caracteres mais á esquerda da string.
*/
SELECT LEFT('Testando', 5);

/*
--------------------------------------------------------------------------
LTRIM(str)
-------------------------------------------------------------------------
Retorna a string str com caracteres do espaço
#final removidos.
*/
SELECT RTRIM('computador  ');

/*
---------------------------------------------------------------------------
REVERSE(str)
---------------------------------------------------------------------------
Retorna a string com a ordem dos caracteres invertidos.
*/
SELECT REVERSE('abc');

/*
----------------------------------------------------------------------------
DATE_DAY()
---------------------------------------------------------------------------
Retorna uma data após um determinado
intervalo de tempo / data ter sido adicionado.
*/
SELECT DATE_ADD("2019-03-18", INTERVAL 23 DAY);
SELECT DATE_ADD("2019-03-18", INTERVAL 23 YEAR);

/*
-------------------------------------------------------------------------------
ROUND()
------------------------------------------------------------------------------
Arredonda o valor
*/
SELECT ROUND(1.298, 1);
SELECT CEILING(10.5)

/*
--------------------------------------------------------------------------------
ISNULL
--------------------------------------------------------------------------------
Verifica se o campo está nulo
*/
SELECT ISNULL(NULL);
SELECT ISNULL(28);

/*
-----------------------------------------------------------------------------------
MAX()
-----------------------------------------------------------------------------------
Retorna o maior valor
*/
SELECT * FROM funcionario;
SELECT MAX(salario) from funcionario;

/*
-----------------------------------------------------------------------------------
MAX()
-----------------------------------------------------------------------------------
Retorna o menor valor
*/
SELECT * FROM funcionario;
SELECT MIN(salario) from funcionario;

/*
---------------------------------------------------------------------------------------
AVG() - AVERAGE
------------------------------------------------------------------------------------
calcula a média
*/
SELECT AVG(salario) from funcionario;
SELECT ROUND(AVG(salario),1) from funcionario;

/*
----------------------------------------------------------------------------------------
SUM
-----------------------------------------------------------------------------------------
Soma todas as colunas
*/
SELECT SUM(salario) from funcionario;

/*
---------------------------------------------------------------------------------------
COUNT
---------------------------------------------------------------------------------------
Contar as linhas
*/
SELECT COUNT(idade) from funcionario
WHERE idade >=30;


use `select`;
SELECT * FROM cliente;