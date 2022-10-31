SELECT
  a.artist_name AS artista, album.album_name AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album
  ON a.artist_id = album.artist_id
  WHERE a.artist_name = 'Elis Regina'
ORDER BY album;
