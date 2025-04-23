SELECT
  tis.track_id,
--  tis.track_name,precisa tratar caratereces especiais
  tis.artist_name,
  tis.artist_count,
  tis.in_spotify_playlists,
  tis.in_spotify_charts,
  tis.in_spotify_charts,
  tic.in_apple_playlists,
  tic.in_apple_charts,
  tic.in_deezer_charts,
  tic.in_deezer_playlists,
  tec.bpm,
-- tec.key,como vamos tratar nulos?
  tec.mode,
  tec.danceability_pct,
  tec.valence_pct,
  tec.energy_pct,
  tec.acousticness_pct,
  tec.instrumentalness_pct,
  tec.liveness_pct,
  tec.speechiness_pct,
FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_in_spotify` tis
   LEFT JOIN `laboratoria-projeto-02.laboratoria_projeto_02.track_in_competition` tic ON (tis.track_id = tic.track_id)
   LEFT JOIN laboratoria-projeto-02.laboratoria_projeto_02.track_technical_info tec ON (tec.track_id = tic.track_id)
LIMIT 20;