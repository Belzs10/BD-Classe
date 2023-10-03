-- Comentário 
# Comentário 
-- Precisa do ;(ponto e vírgula) no final de cada comentário. 

-- Comando para criar um banco de dados 
 CREATE DATABASE  Empresa;
 
 -- Procurar banco de dados no computador. 
 SHOW DATABASES;
 
 -- User, selecionar um banco de dados
 USE Empresa;
 
 -- Criar uma tabela com nome Cliente
 CREATE TABLE Empresa.Clientes (
 Id INT,
 Nome varchar(255) NOT NULL,
 Telefone varchar(22)not null,
 Email varchar(255) not null,
 PRIMARY KEY (Id) 
 );
 
 
-- Inserindo dados da tabela
INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Marta', '(71) 0000-1111', 'marta@senai.com');

INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Joseph', '(71) 1111-0000', 'joseph@senai.com');

INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Abigail', '', 'abigail@senai.com');

-- Selecionar/mostrar os dados da tabela
SELECT Nome, Telefone, Email
FROM Empresa.Clientes;

-- Atualizar um registro.
UPDATE Empresa.Clientes
SET Telefone = '(71) 0010-1101'
-- WHERE  ;

-- Apagar Tabela "Clientes".
DROP TABLE Empresa.Clientes;
