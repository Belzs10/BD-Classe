create database Gerenciamento2;

use Gerenciamento2;

create table Cursos(
ID int auto_increment primary key,
NomeCurso varchar(255),
Professor varchar(255),
DataInicio date,
DataFim date
);

create table Alunos(
Matricula int auto_increment primary key,
NomeAluno varchar(255) not null,
dataNascimento date,
Endereco text,
Telefone varchar(22) unique
);

create table Inscricoes(
ID int auto_increment primary key,
CursoID int,
MatriculaAluno int,
foreign key(CursoID) references Cursos(ID),
foreign key(MatriculaAluno) references Alunos(Matricula)
);

insert into Cursos(NomeCurso,Professor,DataInicio,DataFim)
values  ('Matemática Básica', 'Prof. Silva', '2023-01-15', '2023-03-30');
insert into Cursos(NomeCurso,Professor,DataInicio,DataFim)
values  ('História Antiga', 'Prof. Santos', '2023-02-10', '2023-04-25');
insert into Cursos(NomeCurso,Professor,DataInicio,DataFim)
values ('Programação em Python', 'Prof. Oliveira', '2023-03-05', '2023-06-15');
insert into Cursos(NomeCurso,Professor,DataInicio,DataFim)
values ('Inglês Intermediário', 'Prof. Johnson', '2023-02-20', '2023-05-10');
insert into Cursos(NomeCurso,Professor,DataInicio,DataFim)
values ('Artes Plásticas', 'Prof. Garcia', '2023-01-25', '2023-04-05');

select*from Gerenciamento2.Cursos;

insert into Alunos(NomeAluno,dataNascimento,Endereco,Telefone)
values  ('Maria Silva', '2000-05-12', 'Rua A, 123', '555-1234'),
    ('João Santos', '1999-08-20', 'Avenida B, 456', '555-5678'),
    ('Lucia Oliveira', '2001-03-30', 'Rua C, 789', '555-7890'),
    ('Pedro Johnson', '2002-01-15', 'Avenida D, 101', '555-2345'),
    ('Camila Garcia', '2000-11-05', 'Rua E, 987', '555-6789'),
    ('Anabeth Corrêa','2005-03-03','Vila Tal,990', '000-111');
    
    select*from Gerenciamento2.Alunos;
    
insert into Inscricoes(CursoID, MatriculaAluno)
values (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (5,2);
    
select*from Gerenciamento2.Inscricoes;

SELECT
C.NomeCurso AS 'Nome do Curso',
A.NomeAluno AS 'Nome Aluno'
FROM Cursos C
Inner Join Inscricoes I on C.ID = I.CursoID
Inner join Alunos A on I.MatriculaAluno = A.Matricula;








    
