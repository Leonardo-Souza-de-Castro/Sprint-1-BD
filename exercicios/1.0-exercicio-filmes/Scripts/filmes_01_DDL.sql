--Create

Create DataBase Catalogo;
Go

Use Catalogo;
Go

Create Table Genero(
IdGenero Tinyint Primary Key Identity(1,1),
NomeGenero Varchar(30)
);
GO

Create Table Filme(
IdFilme SmallInt Primary Key Identity(1,1),
IdGenero Tinyint Foreign Key References Genero(IdGenero),
tituloFilme Varchar(70)
);
Go
