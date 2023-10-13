create database Empresa;

use Empresa;

create table Departamentos(
ID int auto_increment primary key,
Nome varchar(255) not null
);

create table Funcionarios(
ID int auto_increment primary key,
DepartID int,
Nome varchar(255) not null,
Cargo varchar(255) not null,
DataContratacao date not null,
Salario float,
foreign key (DepartID) references Departamentos(ID)
);

create table Dependentes(
ID int auto_increment primary key,
FuncID int,
Nome varchar(255) not null,
DataNascimento date not null,
foreign key (FuncID) references Funcionarios(ID)
);

-- A ordem das tabelas interfere no código. Ex: Chave Estrangeira(Ela precisa de uma tabela de referência, ou seja a que vem antes dela);

insert into Empresa.Departamentos(Nome)
values ('Informática'),
	   ('Financeiro');
       
       select*from Empresa.Departamentos;

insert into Empresa.Funcionarios(DepartID,Nome,Cargo,DataContratacao,Salario)
values ('1','Robert Marcio','Gerente','2015-06-15','3.500'),
	   ('2','Lara Croft','Analista Finaceiro','2017-01-09','4380');
       
       select*from Empresa.Funcionarios;

insert into Empresa.Dependentes(FuncID,Nome,DataNascimento)
values ('1','Aderbal','2001-05-15'),
       ('2','Alexandra','1997-02-23');
       
       select*from Empresa.Dependentes;
       
select 
F.Nome as "Nome do Funcionario",
D.Nome as "Nome do Dependendte",
De.Nome as "Nome do Departamento"
from Funcionarios F
inner join Departamentos De on F.DepartID = De.ID
inner join Dependentes D on F.ID = D.FuncID;
 




