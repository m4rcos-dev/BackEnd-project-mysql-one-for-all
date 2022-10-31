SELECT
  a.artist_name AS artista,
  album.album_name AS album,
  COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS album
  ON a.artist_id = album.artist_id
INNER JOIN SpotifyClone.following AS f
  ON a.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
