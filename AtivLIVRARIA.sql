CREATE DATABASE Livraria;

SHOW DATABASES;

USE Livraria;

CREATE TABLE Livraria.livros(
Id INT AUTO_INCREMENT,
Livro VARCHAR(255) NOT NULL,
Autor VARCHAR(255) NOT NULL,
SexoAutor VARCHAR(255) NOT NULL,
NumeroPaginas VARCHAR(1000) NOT NULL,
Editora VARCHAR(255) NOT NULL,
ValorCAPACOMUM FLOAT NOT NULL,
ValorKINDLE FLOAT NOT NULL,
AnoPubli YEAR NOT NULL,
PRIMARY KEY(Id)
);

DROP TABLE livraria.livros;

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Pai Rico, Pai Pobre', 'Robert T. Kiyoashi', 'Masculino', '336', 'Alta Books', '61.43', '58.45', '2018');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Mindset', 'Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Como fazer amigos e influenciar pessoas', 'Dale Carnegie','Masculino','256','Sextane','38.99','33.24','2019');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('A Cabana','Willian P.Young','Masculino', '240', 'Arqueiro', '35.99', '17.9', '2008');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Maculino', '408', 'Objetiva', '42.99','29.9','2012');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Código Limpo','Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Essencialismo','Greg Mckeown', 'Masculino', '272', 'Sextane', '53.58', '33.24', '2015');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Me Poupe!','Nathalia Arcuri', 'Feminino', '176', 'Sextane', '32.86', '17.09', '2018');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('Comece pelo Porquê','Simon Sinek', 'Masculino', '256', 'Sextane', '50.58', '24.90', '2018');

INSERT INTO Livraria.livros(Livro, Autor, SexoAutor, NumeroPaginas, Editora, ValorCAPACOMUM, ValorKINDLE, AnoPubli)
VALUES ('O Alquimista','Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

Select * from Livraria.livros;

DELETE FROM Livraria.livros
WHERE Id = 2;

DELETE FROM Livraria.livros
WHERE Id = 10;

-- Mudando dados da tabela
UPDATE livraria.livros
SET Autor = 'Joselino' WHERE Id = 2;

UPDATE Livraria.livros SET Autor = 'Carol S. Dweck' WHERE Id = 2;

Select * from Livraria.livros;

-- Atividade

-- 1) Trazer o nome do livro, autor e valores do kindle menores que 40 reais

Select Livro, Autor, ValorKINDLE from Livraria.livros
WHERE ValorKINDLE < 40.00; 

-- 2)  Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora 
-- seja Sextante e o sexo do autor seja feminino
Select Livro, Autor, Editora, AnoPubli from Livraria.livros
WHERE Editora = 'Sextane' AND AnoPubli > 2017;

-- 3) Trazer o nome do livro e editora de livros com mais de 200 páginas
Select Livro, Editora, NumeroPaginas from Livraria.livros
WHERE NumeroPaginas > 200;

-- 4)  Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C"
Select Livro, NumeroPaginas, Autor from Livraria.livros
WHERE Autor LIKE 'C%'; -- Coloca-se "%" para dizer que o resto da senteça não importa.
                       -- LIKE = Sua utilização é bastante útil quando queremos encontrar uma correspondência exata de um determinado termo, como palavras iniciadas ou terminadas com uma letra específica.

-- 5) Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books
Select Autor, Editora, AnoPubli from Livraria.livros
WHERE SexoAutor = 'Masculino' AND Editora = 'Alta Books';

-- 6) Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00
Select Livro, Autor, NumeroPaginas, Editora, AnoPubli, ValorCAPACOMUM FROM livraria.livros
Where ValorCAPACOMUM > 50.00;

-- 7) Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia
Select Livro, Editora, ValorCAPACOMUM, Autor from Livraria.livros
WHERE Autor like 'Nathalia%';

-- 8) Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017
Select Livro, Autor, NumeroPaginas, AnoPubli from Livraria.livros
WHERE AnoPubli <= 2017;

-- 9) Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas
select Autor, Editora, NumeroPaginas from livraria.livros
WHERE Editora = 'Sextane' and NumeroPaginas > 200;

-- 10) Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante
select Livro, Autor, ValorCAPACOMUM, Editora from livraria.livros
WHERE Editora = 'Sextane' and ValorCAPACOMUM > 30.00;
