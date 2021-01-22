#DDL - DATA DEFINITION LANGUAGE
#linguagem de Definição de dados
#CREATE, ALTER, DROP

#Cria um banco de dados
CREATE DATABASE bd_select;

#Seleciona o banco de dados
USE bd_select; 

#Cria uma tabela
CREATE TABLE funcionario(
	cod INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(150) NOT NULL,
	idade INT(3) NOT NULL,
	salario DOUBLE NOT NULL 
);

#DML - DATA MANIPULATION LANGUAGE
#Linguagem de manipulação de dados
#INSERT , UPDATE, DELETE

#Inserir um funcionario
INSERT INTO funcionario(nome, salario, idade)
VALUES('Jõao da silva', 3500, 29),
      ('José da silva', 2000, 23),
      ('Geraldo Cunha', 9890, 49);
      
#DML - UPDATE
UPDATE funcionario
SET salario = 5000
WHERE cod = 1;

#DDL - ALTER
ALTER TABLE funcionario
ADD COLUMN data_nasc DATE;

UPDATE funcionario
SET data_nasc = '1990-01-01'
WHERE cod = 1;

UPDATE funcionario
SET data_nasc = '1996-01-01'
WHERE cod = 2;

UPDATE funcionario
SET data_nasc = '1970-01-01'
WHERE cod = 3;

SELECT * FROM funcionario;      