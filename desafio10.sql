SELECT M.nome AS nome, COUNT(H.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico_reproducao AS H
ON H.musica_id = M.id
INNER JOIN SpotifyClone.usuarios AS U
ON U.id = H.usuario_id

WHERE U.plano_id IN(1, 3)
GROUP BY M.nome
ORDER BY nome ASC;