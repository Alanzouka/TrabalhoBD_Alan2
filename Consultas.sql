USE musica;

SELECT M.titulo_musica, M.duracao_segundos
FROM Musica M
JOIN Album A ON M.id_album = A.id_album
WHERE A.titulo_album = 'Thriller';

SELECT A.titulo_album, A.ano_lancamento
FROM Album A
JOIN Artista AR ON A.id_artista = AR.id_artista
WHERE AR.nome_artista = 'Queen';

SELECT AR.nome_artista, A.titulo_album
FROM Album A
JOIN Artista AR ON A.id_artista = AR.id_artista
ORDER BY AR.nome_artista, A.ano_lancamento;

SELECT A.titulo_album, COUNT(M.id_musica) AS total_musicas
FROM Album A
LEFT JOIN Musica M ON A.id_album = M.id_album
GROUP BY A.titulo_album
ORDER BY total_musicas DESC;

SELECT AR.nome_artista, A.titulo_album, A.ano_lancamento
FROM Album A
JOIN Artista AR ON A.id_artista = AR.id_artista
ORDER BY A.ano_lancamento ASC
LIMIT 1;

SELECT A.titulo_album, SUM(M.duracao_segundos) / 60 AS duracao_minutos
FROM Musica M
JOIN Album A ON M.id_album = A.id_album
WHERE A.titulo_album = 'A Night at the Opera'
GROUP BY A.titulo_album;