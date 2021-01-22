USE `select`;

/*1)Selecione o código e o nome de todos os clientes em ordem crescente(codigo)*/
SELECT codigo, nome FROM cliente ORDER BY codigo ASC;

/*2)Selecione todos os atributos de todos os funcioonários em ordem descrescente(pelo nome)*/
SELECT * FROM funcionario ORDER BY nome DESC;

/*3)Selecione todos os funcionários que tem o nome igual a 'Julian'*/
SELECT * FROM funcionario WHERE nome='Julian';

/*4)Selecione todos os clientes que tem o nome diferente de 'José'*/
SELECT * FROM cliente WHERE nome !='José';

/*5)Selecione todos os funcionários que tem a idade maior que 28, ordenando primeiro os mais novos até os mais velhos*/
SELECT * FROM funcionario WHERE idade > 28 ORDER BY idade ASC;

/*6)Selecione todos os funcionários que tem a idade menor ou igual a 30 ordenando primeiro os mais velhos até os mais novos*/
SELECT * FROM funcionario WHERE idade <= 30 ORDER BY idade DESC;

/*7)Selecione todos os funcionários que tem a idade entre 18 e 28 anos*/
SELECT * FROM funcionario WHERE idade BETWEEN 18 AND 28;

/*8)Selecione todos os clientes que tem o nome igual a 'José','Adriana','Eduarda'*/
SELECT * FROM cliente WHERE nome IN ('José','Adriana','Eduarda');

/*9)Selecione todos os clientes que tem o nome diferente de 'José','Adriana','Eduarda'*/
SELECT * FROM cliente WHERE nome not in('José','Adriana','Eduarda');

/*10)Selecione todos os clientes onde o sobrenome começa com a letra 'S'*/
SELECT * FROM cliente WHERE sobrenome LIKE 'S%';

/*11)Selecione todos os funcionários maiores de 25 anos, que tem um salário maior de $2.500*/
SELECT * FROM funcionario WHERE idade > 25 AND salario > 2.5;

/*12)Selecione todos os funcionários com idade entre 25 a 55 anos, que tem um salário maior ou igual a $2.500*/
SELECT * FROM funcionario WHERE idade BETWEEN 25 AND 55 AND salario >= 2.5;

/*13)Selecione todos os funcionários com idade entre 25 a 55 anos, que tem um salário maior ou igual a $2.500, que trabalhe no
setor 1(Desenvolvimento), mostre os resultados em ordem alfabética (nome)*/
SELECT * FROM funcionario WHERE IDADE BETWEEN 25 AND 55 AND salario >= 2.5 AND setor = 1 ORDER BY nome ASC;

/*14)Selecione todos os funcionários que trabalhe no setor 1(Desenvolvimento) ou 2(Manutenção), mostre o resultado
em ordem alfabética(nome)*/
SELECT * FROM funcionario WHERE setor =1 OR setor = 2 ORDER BY nome ASC;

/*15)Selecione todos os pedidos com valor acima de $5.0000, ordenado pelo valor decrescente*/
SELECT * FROM pedido WHERE valor > 5 ORDER BY valor DESC;

/*16-----------------------------------------------------------*/

SELECT pedido.codigo, cliente.nome AS 'Nome do cliente',
setor.`setor`,pedido.valor 
FROM pedido 
INNER JOIN cliente ON cliente.codigo = pedido.codigo 
INNER JOIN setor ON setor.codigo = pedido.`setor`
WHERE pedido.valor > 5.000 ORDER BY cliente.nome ASC;

#17------------------------------------------------------------------------------------------------------*/
SELECT p.codigo, c.nome AS 'Nome do cliente',
s.`setor`,p.valor 
FROM pedido p 
INNER JOIN cliente c ON c.codigo = p.codigo 
INNER JOIN setor s ON s.codigo = p.`setor`
WHERE p.valor > 5.000 ORDER BY c.nome ASC;


