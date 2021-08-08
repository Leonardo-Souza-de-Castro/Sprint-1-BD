Use PClinica;
Go

Insert Into Clinica(Nome_Clinica, Razao_Social)
Values('VetPlus', 'Buscamos sempre atender bem o seu pet, com amor respeito e atenção'), ('VetMais','Buscamos sempre atender bem o seu pet, com amor respeito e atenção');
Go

Insert Into Dono(Nome)
Values('Mauricio'), ('Leonardo');
Go

Insert Into Tipo_Pet(Tipo_Pet)
Values('Cachorro'), ('Gato');
Go

Insert Into Veterinario(IdClinica, Nome_Veterinario, CRMV)
Values(3,'Cleber', '123456'), (4, 'Roberto', '1234567');
Go

Insert Into Raca(IdTipo_Pet, Nome_Raca)
Values(1,'Poodle'), (2,'Siames');
Go

Insert Into Pets(IdDono, IdRaca, Nome_Pet, Data_Nascimento)
Values(1,2,'Robertinho', '02/06/2018'), (1,1,'Totó', '08/09/2018');
Go

Insert Into Consulta(IdPet, IdVeterinario, Data_Consulta)
Values(1, 3, '05/08/2021'), (2,4,'06/08/2021');
Go

Delete From Clinica
Where IdClinica = 2;
Go

Delete From Veterinario

Delete From Consulta