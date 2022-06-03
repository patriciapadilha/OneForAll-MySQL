SELECT COUNT(H.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao AS H
INNER JOIN SpotifyClone.usuarios As U
ON U.id = H.usuario_id
WHERE U.nome = "Bill";