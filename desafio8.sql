SELECT AR.nome AS artista, AL.nome AS album
FROM SpotifyClone.artistas AS AR
INNER JOIN 
SpotifyClone.albuns AS AL 
ON AR.id = AL.artista_id
WHERE AR.nome = "Walter Phoenix"
GROUP BY artista, album
ORDER BY album;