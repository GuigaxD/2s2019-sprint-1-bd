CREATE DATABASE T_Gufos;

USE T_Gufos

CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL
	,Nome	VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE Eventos(
	IdEventos INT PRIMARY KEY IDENTITY NOT NULL
	,Titulo VARCHAR(255) NOT NULL
	,Descricao text
	,DataEvento DateTime NOT NULL
	,Ativo BIT NOT NULL DEFAULT(1)
	,Localizacao VARCHAR
	,IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
);
CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL
	,Nome VARCHAR(255) NOT NULL
	,Email VARCHAR(255) NOT NULL UNIQUE
	,Senha VARCHAR(255) NOT NULL
	,Permissao VARCHAR(255) NOT NULL
);
CREATE TABLE Presencas(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	,IdEvento	INT FOREIGN KEY REFERENCES Eventos(IdEventos)
);