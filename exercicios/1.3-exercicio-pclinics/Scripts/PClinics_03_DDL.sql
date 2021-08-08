Create DataBase PClinica;
Go

Use PClinica;
Go

Create Table Clinica(
IdClinica Int Primary Key Identity(1,1),
Nome_Clinica Varchar(20) Not Null Unique
);
Go

Create Table Dono(
IdDono Int Primary Key Identity(1,1),
Nome Varchar(20)
);
Go

Create Table Tipo_Pet(
IdTipo_Pet Int Primary Key Identity(1,1),
Tipo_Pet Varchar(20)
);
Go

Create Table Veterinario(
IdVeterinario Int Primary Key Identity(1,1),
IdClinica Int Foreign Key References Clinica(IdClinica),
Nome_Veterinario Char(20) Not Null
);
Go

Create Table Raca(
IdRaca Int Primary Key Identity(1,1),
IdTipo_Pet Int Foreign Key References Tipo_Pet(IdTipo_Pet),
Nome_Raca Char(20) Not Null
);
Go

Create Table Pets(
IdPets Int Primary Key Identity(1,1),
IdDono Int Foreign Key References Dono(IdDono),
IdRaca int Foreign Key References Raca(IdRaca),
Nome_Pet Varchar(20),
Data_Nascimento Varchar(10)
);
Go

Create Table Consulta(
IdConsulta Int Primary Key Identity(1,1),
IdPet Int Foreign Key References Pets(IdPet),
IdVeterinario int Foreign Key References Veterinario(IdVeterinario),
Data_Consulta Varchar(10)
);
Go

Alter Table Clinica
Add Razao_Social Varchar(500) Not Null;
Go

Alter Table Veterinario
Add CRMV Varchar(15) Not Null;
Go

