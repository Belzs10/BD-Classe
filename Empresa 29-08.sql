CREATE DATABASE Empresa;

-- Selecionando banco de dados para inserir comandos
USE Empresa;

CREATE TABLE Clientes(
ID int auto_increment primary key,
Nome varchar(255) not null,
Email varchar(255) not null UNIQUE, 
Telefone varchar(22) not null,
ID_Endereco INT UNIQUE ,
FOREIGN KEY (ID_Endereco) references Enderecos(ID) -- foreign key = chave estrangeira - relações entre tabelas distintas
);
-- unique = garantir que não há valores duplicados inseridos em colunas específicas que não participam de uma chave primária.
-- Embora a restrição UNIQUE e a restrição PRIMARY KEY impõem exclusividade, use a restrição UNIQUE em vez da restrição PRIMARY KEY quando for impor a exclusividade de uma coluna, ou uma combinação de colunas, que não seja uma chave primária.
-- Diferente das restrições PRIMARY KEY, as restrições UNIQUE permitem o valor NULL. Porém, como com qualquer valor que participa de uma restrição UNIQUE, só um valor nulo é permitido por coluna. 

CREATE TABLE Enderecos(
ID int auto_increment primary key,
Logradouro varchar(255) not null,
CEP varchar(11) not null,
Numero varchar(5),
Complemento varchar(255),
Cidade varchar(255)
);
