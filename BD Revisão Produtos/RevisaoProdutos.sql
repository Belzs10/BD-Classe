CREATE DATABASE Revisao;

USE Revisao;

CREATE TABLE Produtos(
ID int auto_increment primary key,
NomeProduto varchar(255),
Descricao text,
Preco varchar(22)
);
CREATE TABLE Comentarios(
ID int auto_increment primary key,
ProdutosID int,
foreign key (ProdutosID) references Produtos(ID),
Autor varchar(255),
TextoComentario text,
Datacomentario varchar(25)
);

INSERT INTO Revisao.Produtos(NomeProduto,Descricao,Preco)
values('Salto 15', 'Para ficar alta', '45.99');
 INSERT INTO Revisao.Produtos(NomeProduto,Descricao,Preco)
values('Headphones', 'Para ouvir música', '110,90');
INSERT INTO Revisao.Produtos(NomeProduto,Descricao,Preco)
values('UNO', 'Jogar com ozamigo', '15,99');

select*from Revisao.Produtos;


insert into Revisao.Comentarios(ProdutosID,Autor,TextoComentario,DataComentario)
values('1','Amandinha','Confortavél e pesado. Dá pra tacar na cara do povo','8/09/2023');
insert into Revisao.Comentarios(ProdutosID,Autor,TextoComentario,DataComentario)
values('2','Perla','Rapaz, meio baixo o volume, mesmo aumentando','15/05/2021');
insert into Revisao.Comentarios(ProdutosID,Autor,TextoComentario,DataComentario)
values('3','ROBROB','Jogo bom pra desfazer amizades :)','05/02/2019');
insert into Revisao.Comentarios(ProdutosID,Autor,TextoComentario,DataComentario)
values('3','Isadora.mo','Um Divertimento legal mas que gera guerras','11/02/2019');

select*from Revisao.Comentarios;

delete from Revisao.Comentarios
where ID = 1;

select Produtos.NomeProduto, count(Comentarios.ID)
from Produtos
inner join Comentarios
on Produtos.ID = Comentarios.ProdutosID
group by Produtos.NomeProduto;


