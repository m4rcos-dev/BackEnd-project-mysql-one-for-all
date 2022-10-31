SELECT u.user_name AS usuario,
COUNT(h.user_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(s.song_duration)/60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history as h
  ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s
  ON h.song_id = s.song_id
GROUP BY u.user_name
ORDER BY user_name;
