CREATE OR REPLACE TABLE `laboratoria-projeto-02.laboratoria_projeto_02.track_quartis` AS
SELECT
  track_id,

  -- STREAMS
  NTILE(4) OVER (ORDER BY streams) AS quartil_streams,
  CASE
    WHEN NTILE(4) OVER (ORDER BY streams) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY streams) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_streams,

  -- BPM
  NTILE(4) OVER (ORDER BY bpm) AS quartil_bpm,
  CASE
    WHEN NTILE(4) OVER (ORDER BY bpm) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY bpm) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_bpm,

  -- DANCEABILITY
  NTILE(4) OVER (ORDER BY danceability_pct) AS quartil_danceability,
  CASE
    WHEN NTILE(4) OVER (ORDER BY danceability_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY danceability_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_danceability,

  -- VALENCE
  NTILE(4) OVER (ORDER BY valence_pct) AS quartil_valence,
  CASE
    WHEN NTILE(4) OVER (ORDER BY valence_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY valence_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_valence,

  -- ENERGY
  NTILE(4) OVER (ORDER BY energy_pct) AS quartil_energy,
  CASE
    WHEN NTILE(4) OVER (ORDER BY energy_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY energy_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_energy,

  -- ACOUSTICNESS
  NTILE(4) OVER (ORDER BY acousticness_pct) AS quartil_acousticness,
  CASE
    WHEN NTILE(4) OVER (ORDER BY acousticness_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY acousticness_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_acousticness,

  -- INSTRUMENTALNESS
  NTILE(4) OVER (ORDER BY instrumentalness_pct) AS quartil_instrumentalness,
  CASE
    WHEN NTILE(4) OVER (ORDER BY instrumentalness_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY instrumentalness_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_instrumentalness,

  -- LIVENESS
  NTILE(4) OVER (ORDER BY liveness_pct) AS quartil_liveness,
  CASE
    WHEN NTILE(4) OVER (ORDER BY liveness_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY liveness_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_liveness,

  -- SPEECHINESS
  NTILE(4) OVER (ORDER BY speechiness_pct) AS quartil_speechiness,
  CASE
    WHEN NTILE(4) OVER (ORDER BY speechiness_pct) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY speechiness_pct) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_speechiness,

  -- TOTAL PLAYLISTS
  NTILE(4) OVER (ORDER BY total_playlists) AS quartil_total_playlists,
  CASE
    WHEN NTILE(4) OVER (ORDER BY total_playlists) = 1 THEN 'Baixo'
    WHEN NTILE(4) OVER (ORDER BY total_playlists) IN (2, 3) THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_total_playlists

FROM
  `laboratoria-projeto-02.laboratoria_projeto_02.track_total_info`;