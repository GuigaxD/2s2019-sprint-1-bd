--T_02_SeuNome_DML.sql

USE T_Gufos

INSERT INTO Usuarios (Nome,Email,Senha,Permissao)
VALUES ('Clayton','c.y@gmai.com','123456','ADMINISTRADOR')

INSERT INTO Usuarios (Nome,Email,Senha,Permissao)
VALUES ('Rayssa','rayssa@gmai.com','r123456','Aluno')

SELECT * FROM Usuarios;
SELECT * FROM Eventos;
SELECT * FROM Categorias;

INSERT INTO Categorias(Nome)
VALUES('Jogos'),('Meetup'),('Futebol');
SELECT * FROM Categorias order by IdCategoria asc;

INSERT INTO Eventos(Titulo,Descricao,DataEvento,Ativo,Localizacao,IdCategoria)
VALUES	('Campeonato de Ping-Pong','Campeonati entre as turmas de tec. de redes e dev',GETDATE(), 1, 'Alameda Barão de Limeira, 539',1)

INSERT INTO Eventos(Titulo,Descricao,DataEvento,Localizacao,IdCategoria)
VALUES	('Meetup','BD Relacionais','2019-08-06T18:00:00','Alameda Barão de Limeira, 539',2)

INSERT INTO Eventos(Titulo,Descricao,DataEvento,Localizacao,IdCategoria)
VALUES	('futebol no terraço','Do núcleo de desenvolvimento SENAI','2019-08-06T18:00:00','Alameda Barão de Limeira, 539',2)

INSERT INTO Presencas(IdEvento,IdUsuario) VALUES (1,2),(1,1),(2,2)
SELECT * FROM Presencas

update Eventos set IdCategoria = 3 where IdEventos = 3

SELECT * FROM Eventos
