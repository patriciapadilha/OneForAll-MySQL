SELECT AR.nome AS artista, AL.nome AS album, COUNT(S.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS AR
INNER JOIN 
SpotifyClone.albuns AS AL 
ON AR.id = AL.artista_id
INNER JOIN 
SpotifyClone.artista_seguido AS S
ON AR.id = S.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;