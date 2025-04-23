CREATE TABLE `laboratoria-projeto-02.laboratoria_projeto_02.track_total_info` AS
SELECT 
  tis.track_id,
  REGEXP_REPLACE(tis.track_name, '[ï¿½]', '') AS track_name, -- remove caracteres especiais
  REGEXP_REPLACE(tis.artist_name, '[ï¿½]', '') AS artist_name, -- remove caracteres especiais
  tis.artist_count,
  DATE(CONCAT(CAST(tis.released_year AS STRING), "-", CAST(tis.released_month AS STRING), "-", CAST(tis.released_day AS STRING))) AS release_date, -- cria data formatada
  tec.bpm,
  IFNULL(tec.key,"Ausente") AS key_note,
  tec.mode,
  tec.danceability_pct,
  tec.valence_pct,
  tec.energy_pct,
  tec.acousticness_pct,
  tec.instrumentalness_pct,
  tec.liveness_pct,
  tec.speechiness_pct,
  tis.in_spotify_playlists,
  tis.in_spotify_charts,
  tic.in_apple_playlists,
  tic.in_apple_charts,
  tic.in_deezer_playlists,
  tic.in_deezer_charts,
  COALESCE(SAFE_CAST(tis.streams AS INT64), 0) AS streams, -- converte streams para interger e substitui NULL por 0
  SUM(COALESCE(tic.in_apple_playlists, 0) + COALESCE(tic.in_deezer_playlists, 0) + COALESCE(tis.in_spotify_playlists, 0)) AS total_playlists, -- soma de playlists
  SUM(COALESCE(tic.in_apple_charts, 0) + COALESCE(tic.in_deezer_charts, 0) + COALESCE(tis.in_spotify_charts, 0)) AS total_charts -- soma de charts
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify` AS tis
LEFT JOIN `laboratoria-projeto-02.laboratoria_projeto_02.track_technical_info` AS tec ON (tec.track_id = tis.track_id)
LEFT JOIN `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` AS tic ON (tis.track_id = tic.track_id)
WHERE tis.track_id NOT IN ('8173823', '3814670', '1119309', '7173596')
GROUP BY tis.track_id, tis.track_name, tis.artist_name, tis.artist_count, tis.released_year, tis.released_month, tis.released_day, tec.bpm, tec.key, tec.mode,tec.danceability_pct,tec.valence_pct,tec.energy_pct,tec.acousticness_pct,tec.instrumentalness_pct,tec.liveness_pct,tec.speechiness_pct,tis.in_spotify_playlists,tis.in_spotify_charts,tic.in_apple_playlists,tic.in_apple_charts,tic.in_deezer_playlists,tic.in_deezer_charts,tis.streams;

