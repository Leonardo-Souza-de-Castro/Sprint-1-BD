Create Database Unidas;
Go

Use Unidas;
Go

Create Table Pessoas(
IdPessoas Int Primary Key Identity (1,1),
Nome_Pessoas Varchar(20) Not Null
);
Go

Create Table Telefone(
IdTelefone Int Primary Key Identity (1,1),
IdPessoas Int Foreign Key References Pessoas(IdPessoas),
Telefone Char(13) Not Null
);
Go

Create Table Email(
IdEmail Int Primary Key Identity (1,1),
IdPessoas Int Foreign Key References Pessoas(IdPessoas),
End_Email Varchar(256) Not Null Unique
);
Go

Create Table CNH(
IdCNH Int Primary Key Identity (1,1),
IdPessoas Int Foreign Key References Pessoas(IdPessoas),
descricao Char(11) Not Null Unique
);
Go