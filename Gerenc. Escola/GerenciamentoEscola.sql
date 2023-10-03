CREATE DATABASE Gerenciamento;

USE Gerenciamento;

CREATE TABLE Escola(
ID int auto_increment primary key,
NomeEscola varchar(255) not null,
Endereco text not null unique,
Telefone varchar(22)
);

CREATE TABLE Alunos(
Matricula int auto_increment primary key,
NomeAluno varchar(255) not null,
DataNascimento varchar(22) not null,
Endereco text not null unique,
Telefone varchar(22),
EscolaID int,
foreign key (EscolaID) references Escola(ID)
);

INSERT INTO Gerenciamento.Escola(NomeEscola, Endereco, Telefone)
VALUES ('Colégio Marininha',
'Rua Em Tal Lugar',
'713300-2244'
);
INSERT INTO Gerenciamento.Escola(NomeEscola, Endereco, Telefone)
VALUES ('Colégio Mirante',
'Rua Algum Lugar',
'713440-0009'
);
INSERT INTO Gerenciamento.Escola(NomeEscola, Endereco, Telefone)
VALUES ('Colégio Seu Antonio',
'Avenida Passagem de Narnia',
'710000-2222'
);
INSERT INTO Gerenciamento.Escola(NomeEscola, Endereco, Telefone)
VALUES ('Escola ABC',
'Rua Luz do Túneo',
'713300-2222'
);
INSERT INTO Gerenciamento.Escola(NomeEscola, Endereco, Telefone)
VALUES ('Escola Para Aprender',
'Vale do Fim do Mundo',
'715555-0000'
);

Select*from Gerenciamento.Escola;



INSERT INTO Gerenciamento.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
VALUES ('Leandrinho Salamandra',
'15/09/2018',
'Vila Romana 125', 
'7192222-9999', 
'4'
);

INSERT INTO Gerenciamento.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
VALUES ('Anabel Silvinha',
'14/12/2009',
'Rua Lugar Algum', 
'718686-8686', 
'1'
);
INSERT INTO Gerenciamento.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
VALUES ('Beto da Mangabeira',
'11/01/2015',
'Rua da Passagem', 
'7190000-3333', 
'5'
);
INSERT INTO Gerenciamento.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
VALUES ('Alexandra da Costa',
'15/09/2010',
'Avenida Penhasco', 
'7197070-0707', 
'3'
);
INSERT INTO Gerenciamento.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
VALUES ('Albertinho da Vila',
'15/09/2007',
'Rua Chico', 
'713333-0000', 
'3'
);
INSERT INTO Gerenciamento.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
VALUES ('Betania Costa',
'15/09/2006',
'Rua Alguma', 
'713333-0111', 
'2'
);

Select*from Gerenciamento.Alunos full join Gerenciamento.Escola;
-- Full join = selecionar todas as informações de todas as tabelas

select 
Escola.NomeEscola as 'Nome da Escola',
count(Alunos.Matricula) as 'Matrículas'
from Escola
inner join Alunos
on Escola.ID = Alunos.EscolaID
group by Escola.NomeEscola;











