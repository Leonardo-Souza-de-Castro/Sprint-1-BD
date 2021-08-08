Use PClinica;
Go

Select * From Clinica
Select * From Dono
Select * From Pets
Select * From Raca
Select * From Tipo_Pet
Select * From Veterinario
Select * From Consulta

Select Nome_Veterinario, CRMV, Nome_Clinica, Razao_Social
From Veterinario
Right Join Clinica
On Veterinario.IdClinica = Clinica.IdClinica;
Go

Select Nome_Raca
From Raca
Where Raca.Nome_Raca Like 'S%';
Go

Select Tipo_Pet
From Tipo_Pet
Where Tipo_Pet.Tipo_Pet Like '%O';
Go

Select Nome_Pet, Nome 
From Pets
Inner Join Dono
On Pets.IdDono = Dono.IdDono;
Go

Select Nome_Pet, Data_Nascimento, Data_Consulta, Tipo_Pet, Nome_Raca, Nome_Veterinario, Nome
From Consulta
Inner Join Pets
On Consulta.IdPet = Pets.IdPet
Inner Join Raca
On Raca.IdRaca = Pets.IdRaca
Inner Join Tipo_Pet
On Raca.IdTipo_Pet = Tipo_Pet.IdTipo_Pet
Inner Join Veterinario
On Consulta.IdVeterinario = Veterinario.IdVeterinario
Inner Join Dono
On Pets.IdDono = Dono.IdDono;
Go