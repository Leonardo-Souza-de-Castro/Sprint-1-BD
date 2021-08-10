Use Optus;
Go

Select Tipo_Permicao, Nome, Email
From Tipo_Usuario
Inner Join Usuario
On Usuario.Id_TipoUser = 1;
Go

Select * From Album
Where Data_Lancamento > 2020;
Go

Select * From Usuario
Where Email = 'naosei@email.com';
Go

Select Nome_Artistico As [Nome], Nome_Album As [Nome do Album], Nome_Esilo As [Estilo do Album] 
From Album
Inner Join Estilo_Album
On Album.Id_Album = Estilo_Album.Id_Album
Inner Join Estilo
On Estilo.Id_Estilo = Estilo_Album.Id_Estilo
Inner Join Artista
On Artista.Id_Artista = Album.Id_Artista;
Go
