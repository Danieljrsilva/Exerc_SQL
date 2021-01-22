USE `select`;

#Ordem Alfabética
#* siginifica todas colunas
SELECT * FROM cliente ORDER BY nome ASC;
SELECT codigo, nome FROM cliente ORDER BY sobrenome ASC;

#ASC sobe e desc desce
#Ordem decrescente
SELECT * FROM cliente ORDER BY nome DESC;

#Selecionando alguns campos
SELECT codigo, nome FROM cliente;

#Cláusula WHERE
#igual(=)
SELECT * FROM cliente WHERE sobrenome='Silva';
SELECT * FROM cliente WHERE sobrenome='Silva' ORDER BY nome ASC;

#diferente(!= ou <>)
SELECT * FROM cliente WHERE sobrenome !='Silva';
SELECT * FROM cliente WHERE sobrenome <>'Silva';

#maior(>) e maior ou igual(>=)
SELECT * FROM funcionario WHERE salario > 2.5;
SELECT * FROM funcionario WHERE salario >= 2.5;

#LIKE, campos que contem uma determinada
#sequencia
#------------------------------------------
#O caracter curinga %(porcentagem) deve
#ser usado para substituir um caracter ou
#grupo de caracter, náo importando a sua natureza.
SELECT * FROM cliente WHERE sobrenome LIKE 'S%';

SELECT * FROM cliente WHERE nome LIKE '%a';

SELECT * FROM cliente WHERE nome LIKE '%ria%';

#BETWEEN(entre) valores que estão em um intervalo
SELECT * FROM funcionario WHERE salario BETWEEN 2.5 AND 5.5;

#AND(e) Atenção: No AND, todas as condições devem ser VERDADEIRAS
SELECT * FROM funcionario WHERE salario >=2.5 AND idade > 30;

#OR(ou) Atenção: No OR,apenas uma ou mais devem ser VERDADEIRAS
SELECT * FROM funcionario WHERE salario >=2.5 OR idade > 30;

#IN(Lista inclusão)
SELECT * FROM setor WHERE setor in('Manutenção','Financeiro','Vendas');

SELECT * FROM setor WHERE setor='Manutenção' OR setor='Financeiro' OR setor='Vendas';

#NOT IN(Lista exclusão)
SELECT * FROM setor WHERE setor not in('Manutenção','Financeiro','Vendas');
