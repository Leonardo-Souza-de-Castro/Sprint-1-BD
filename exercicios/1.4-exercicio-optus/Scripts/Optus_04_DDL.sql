Create Database Optus;
Go

Use Optus;
Go

Create Table Tipo_Usuario(
Id_TipoUser Int Primary Key Identity,
Tipo_Permicao Varchar(15) Not Null
);
Go

Create Table Estilo(
Id_Estilo Int Primary Key Identity,
Nome_Esilo Varchar(30) Not Null
);
Go

Create Table Usuario(
Id_Usuario Int Primary Key Identity,
Id_TipoUser Int Foreign Key References Tipo_Usuario(Id_TipoUser),
Nome Varchar(30) Not Null,
Email Varchar(50) Not Null Unique,
Senha Varchar(30) Not Null Unique
);
Go

Create Table Artista(
Id_Artista Int Primary Key Identity,
Id_Usuario Int Foreign Key References Usuario(Id_Usuario),
Nome_Artistico Varchar(30) Not Null,
Descricao_Artista Varchar(60) Not Null Unique
);
Go

Create Table Album(
Id_Album Int Primary Key Identity,
Id_Artista Int Foreign Key References Artista(Id_Artista),
Nome_Album Varchar(50) Not Null,
Descricao_Album Varchar(70) Not Null Unique,
Data_Lancamento Date Not Null
);
Go

Create Table Estilo_Album(
Id_EstiloAlbum Int Primary Key Identity,
Id_Album Int Foreign Key References Album(Id_Album),
Id_Estilo Int Foreign Key References Estilo(Id_Estilo)
);
Go