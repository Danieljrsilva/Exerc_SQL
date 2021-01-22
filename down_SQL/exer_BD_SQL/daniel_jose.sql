#1
SELECT ID_cliente, UPPER(nome)  FROM clientes WHERE cidade='NYC';

#2
SELECT telefone, cidade, pais, CONCAT(nome,'-',sobrenome) AS nome, CONCAT(endereco_linha1,'-',endereco_linha2) AS endereco  FROM clientes WHERE pais='Australia';

#3
SELECT * FROM escritorios WHERE estado IS NULL;

#4
SELECT * FROM clientes WHERE CHARACTER_LENGTH(nome)=7;

#5
SELECT MAX(limite_credito) FROM clientes;

#6
SELECT MIN(limite_credito) FROM clientes;

#7
SELECT AVG(limite_credito) FROM clientes; 

#8

#9

#10
SELECT * FROM funcionario WHERE cargo='Sales Rep';