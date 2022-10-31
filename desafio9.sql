SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
  ON u.user_id = h.user_id
WHERE u.user_name = 'Barbara Liskov';
