SELECT COUNT(DISTINCT tabela_musicas.id) AS cancoes, COUNT(DISTINCT tabela_artistas.id) AS artistas, COUNT(DISTINCT tabela_albuns.id) AS albuns
FROM SpotifyClone.musicas AS tabela_musicas, SpotifyClone.artistas AS tabela_artistas, SpotifyClone.albuns AS tabela_albuns;