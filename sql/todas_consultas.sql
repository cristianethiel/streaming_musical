-- começa inspeciona as tabelas

SELECT * FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` LIMIT 10;

SELECT * FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify` LIMIT 10;

SELECT * FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_technical_info` LIMIT 10;

-- fim inspeciona as tabelas

-- verifica os nulos exemplo com os que encontrei nulos

SELECT * 
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` 
WHERE in_shazam_charts IS NULL;

SELECT * 
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_technical_info` 
WHERE key IS NULL;

-- fim verifica os nulos 

SELECT 
  track_name,
  artist_name,
  COUNT (*)
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`
GROUP BY track_name, artist_name
HAVING COUNT (*) >1

-- comando EXCEPT

SELECT * EXCEPT (released_year,released_month,released_day)
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`

-- comando EXCEPT

-- LIKE

SELECT track_name
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`
WHERE track_name LIKE 

-- LIKE

-- REGEXPREPLACE

SELECT 
  track_name,
  REGEXP_REPLACE(track_name, r'[^a-zA-Z0-9 ]', '') AS string_limpa
FROM `laboratoria_projeto_02.track_in_spotify`;

/*
a-z → todas as letras minúsculas
A-Z → todas as letras maiúsculas
0-9 → todos os números
(espaço) → o espaço em branco entre as palavras
[^...] → tudo que NÃO está dentro dos colchetes será removido
*/

-- REGEXPREPLACE

-- máximos e mínimos 

SELECT  
  track_id,
  streams,
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`;
ORDER BY streams DESC LIMIT 10;

SELECT 
track_id,
artist_name,
released_year
FROM laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify
ORDER BY released_year LIMIT 30;

SELECT 
track_id,
released_year
FROM laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify
ORDER BY released_year DESC LIMIT 10;

-- máximos e mínimos 

-- tipo de dados -- 

SELECT SAFE_CAST(streams AS INT64) AS streams2
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`;

SELECT IFNULL(SAFE_CAST(streams AS INT64), 0) AS streams2
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`;

-- tipo de dados

-- CONCAT NA DATA

SELECT
DATE(CONCAT(CAST(released_year AS STRING),"-",CAST(released_month AS STRING),"-",CAST(released_day AS STRING)))
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify`

-- CONCAT NA DATA

-- total de playlists

SELECT 
  tis.track_id,
  SUM(COALESCE(tic.in_apple_playlists, 0) +
      COALESCE(tic.in_deezer_playlists, 0) +
      COALESCE(tis.in_spotify_playlists, 0)) AS total_playlists
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify` AS tis
INNER JOIN `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` AS tic 
ON tis.track_id = tic.track_id
GROUP BY tis.track_id;

-- total de playlists

-- total de charts

SELECT 
  tis.track_id,
  SUM(COALESCE(tic.in_apple_charts, 0) +
      COALESCE(tic.in_deezer_charts, 0) +
      COALESCE(tis.in_spotify_charts, 0)) AS total_charts
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify` AS tis
INNER JOIN `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` AS tic 
ON tis.track_id = tic.track_id
GROUP BY tis.track_id;

-- total de charts

-- inner join 

SELECT
  tis.track_id,
  tis.track_name,
  tic.in_apple_playlists,
  tic.in_apple_charts
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify` tis
   INNER JOIN `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` tic ON (tis.track_id = tic.track_id)

-- inner join


-- deletar ids

DELETE FROM `laboratoria_projeto_02.track_total_infos`
WHERE track_id IN ('8173823', '3814670', '1119309', '7173596'); -- Substitua pelos track_ids que deseja excluir

-- deletar ids

