INSERT INTO Artista (nome_artista, pais_origem, data_formacao) VALUES
('Queen', 'Reino Unido', '1970-07-27'),
('The Beatles', 'Reino Unido', '1960-08-12'),
('Michael Jackson', 'Estados Unidos', '1964-01-01');

INSERT INTO Album (titulo_album, ano_lancamento, id_artista) VALUES
('A Night at the Opera', 1975, 1),
('Thriller', 1982, 3),
('Abbey Road', 1969, 2),
('Sheer Heart Attack', 1974, 1);

INSERT INTO Musica (titulo_musica, duracao_segundos, id_album) VALUES
('Bohemian Rhapsody', 355, 1),
('You''re My Best Friend', 170, 1),
('Thriller', 357, 2),
('Billie Jean', 294, 2),
('Come Together', 259, 3),
('Something', 182, 3),
('Let It Be', 243, 3),
('Killer Queen', 181, 4),
('Stone Cold Crazy', 132, 4);