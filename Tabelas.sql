create database musica
default character set utf8mb4
default collate utf8mb4_general_ci;

CREATE TABLE Artista (
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(100) NOT NULL,
    pais_origem VARCHAR(50),
    data_formacao DATE
);

CREATE TABLE Album (
    id_album INT PRIMARY KEY AUTO_INCREMENT,
    titulo_album VARCHAR(150) NOT NULL,
    ano_lancamento INT,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES Artista(id_artista)
);

CREATE TABLE Musica (
    id_musica INT PRIMARY KEY AUTO_INCREMENT,
    titulo_musica VARCHAR(150) NOT NULL,
    duracao_segundos INT,
    id_album INT,
    FOREIGN KEY (id_album) REFERENCES Album(id_album)
);