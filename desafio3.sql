SELECT U.nome AS usuario, COUNT(H.musica_id) AS qtde_musicas_ouvidas, ROUND(SUM(M.duracao_segundos / 60), 2) AS total_minutos
FROM 
SpotifyClone.usuarios AS U
INNER JOIN 
SpotifyClone.historico_reproducao AS H
ON U.id = H.usuario_id
INNER JOIN
SpotifyClone.musicas AS M
ON H.musica_id = M.id
GROUP BY usuario
ORDER BY usuario;