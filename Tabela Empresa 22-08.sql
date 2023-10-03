-- Criando banco de dados.
CREATE DATABASE Empresa;

-- Mostrando banco de dados.
SHOW DATABASES;

-- Aessando banco de dados.
USE Empresa;

-- Criando tabela
CREATE TABLE Empresa.Clientes(
Id INT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL, -- not null: ñ permitir que o campo fique vazio.
Telefone VARCHAR(22) NOT NULL,
Email VARCHAR(255) NOT NULL,
PRIMARY KEY(Id) 
);

-- Inserindo registros na tabela.
INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Mabel','(71)9999-9999','mabel@email.com');

-- Mostrando registros da tabela.
SELECT * FROM Empresa.Clientes;

-- Monstrando nome e email do cliente.
SELECT Nome , email FROM Empresa.Clientes;

INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Mabel','(71)9999-0000','mabel@email.com');
SELECT * FROM Empresa.Clientes;

-- Apagando tabela.
DROP TABLE Empresa.Clientes;

-- Atualizar email.
UPDATE Empresa.Cliente
SET Email = 'mabel01@senai.com'
WHERE Id = 2;

-- Deletar um registro.
DELETE FROM Empresa.Clientes
WHERE Id = 2;

SELECT * FROM Empresa.Clientes;
