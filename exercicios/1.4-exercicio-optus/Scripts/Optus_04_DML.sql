Use Optus;
Go

Insert Into Tipo_Usuario(Tipo_Permicao)
Values('Administrador'), ('Comum');
Go

Insert Into Estilo(Nome_Esilo)
Values('Gsopel'), ('Funk'), ('Pagode');
Go

Insert Into Usuario(Id_TipoUser, Nome, Email, Senha)
Values(1,'Leonardo','naosei@email.com', '1234'), (2, 'Saulo', 'naosei2@email.com', '12345');
Go

Insert Into Artista (Id_Usuario, Nome_Artistico, Descricao_Artista)
Values(1,'Leonardo', 'Cantor'), (2, 'Saulo', 'Cantor Lirico');
Go

Insert Into Album (Id_Artista, Nome_Album, Descricao_Album, Data_Lancamento)
Values(1, 'Remix', 'Só Remix top', '12/05/2021'), (1, 'Trap', 'Só Pedrada', '13/06/2019');
Go

Insert Into Estilo_Album (Id_Estilo, Id_Album)
Values(2,1), (2,2);
Go