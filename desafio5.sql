 SELECT M.nome AS cancao, COUNT(H.musica_id) AS reproducoes
 FROM SpotifyClone.musicas AS M
 INNER JOIN
 SpotifyClone.historico_reproducao AS H
 ON M.id = H.musica_id
 GROUP BY cancao
 ORDER BY reproducoes DESC, cancao
 LIMIT 2;