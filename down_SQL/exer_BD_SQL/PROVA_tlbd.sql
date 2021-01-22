

SELECT * FROM clientes WHERE estado = 'NY' ORDER BY UPPER ('nome');


SELECT * FROM clientes WHERE 	pais = 'Australia' BETWEEN CONCAT nome,SPACE(2),sobrenome AND telefone IN ('endereco_linha1',SPACE(2),'endereco_linha2') AND cidade AND pais;

SELECT * FROM escritorios WHERE estado = null;




SELECT * FROM clientes ORDER BY nome ASC;
SELECT * FROM clientes;
SELECT * FROM escritorios;