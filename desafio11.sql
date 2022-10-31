SELECT
  s.songs_name AS nome_musica,
  CASE
    WHEN s.songs_name LIKE '%Bard%' THEN REPLACE(s.songs_name, 'Bard', 'QA')
    WHEN s.songs_name LIKE '%Amar%' THEN REPLACE(s.songs_name, 'Amar', 'Code Review')
    WHEN s.songs_name LIKE '%Pais%' THEN REPLACE(s.songs_name, 'Pais', 'Pull Requests')
    WHEN s.songs_name LIKE '%SOUL%' THEN REPLACE(s.songs_name, 'SOUL', 'CODE')
    WHEN s.songs_name LIKE '%SUPERSTAR%' THEN REPLACE(s.songs_name, 'SUPERSTAR', 'SUPERDEV')
  END as novo_nome
FROM SpotifyClone.songs AS s
WHERE s.songs_name regexp 'Bard|Amar|Pais|SOUL|SUPERSTAR'
ORDER BY s.songs_name DESC;
