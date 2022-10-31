SELECT s.songs_name AS nome,
  COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
  ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
  ON u.user_id = h.user_id
  AND (u.plan_id = 1 OR u.plan_id = 4)
GROUP BY s.songs_name
ORDER BY nome;
