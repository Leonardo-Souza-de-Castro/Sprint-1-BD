Use PClinica;
Go

Insert Into Clinica(Nome_Clinica)
Values('VetPlus'), ('VetMais');
Go

Insert Into Dono(Nome)
Values('Mauricio'), ('Leonardo');
Go

Insert Into Tipo_Pet(Tipo_Pet)
Values('Cachorro'), ('Gato');
Go

Insert Into Veterinario(IdClinica, Nome_Veterinario)
Values(2,'Cleber'), (2, 'Roberto');
Go

Insert Into Raca(IdTipo_Pet, Nome_Raca)
Values(1,'Poodle'), (2,'Siames');
Go

Insert Into Pets(IdDono, IdRaca, Nome_Pet, Data_Nascimento)
Values(1,2,'Robertinho', '02/06/2018'), (1,1,'Totó', '08/09/2018');
Go

Insert Into Consulta(IdPet, IdVeterinario, Data_Consulta)
Values(1, 2, '05/08/2021'), (2,1,'06/08/2021');
Go