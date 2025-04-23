-- streams
SELECT
  CORR(streams, bpm) AS corr_streams_bpm,
  CORR(streams, danceability_pct) AS corr_streams_danceability,
  CORR(streams, valence_pct) AS corr_streams_valence,
  CORR(streams, energy_pct) AS corr_streams_energy,
  CORR(streams, acousticness_pct) AS corr_streams_acousticness,
  CORR(streams, instrumentalness_pct) AS corr_streams_instrumentalness,
  CORR(streams, liveness_pct) AS corr_streams_liveness,
  CORR(streams, speechiness_pct) AS corr_streams_speechiness,
  CORR(streams, total_playlists) AS corr_streams_total_playlists
FROM
  `laboratoria-projeto-02.laboratoria_projeto_02.track_total_info`

  -- charts
SELECT
  CORR(in_spotify_charts, in_apple_charts) AS corr_spotify_apple,
  CORR(in_spotify_charts, in_deezer_charts) AS corr_deezer_apple,
FROM
  `laboratoria-projeto-02.laboratoria_projeto_02.track_total_info`

-- correção qtd de streams por artista e qtd de gtracks por artista 

SELECT 
    CORR(qtd_streams_artist, qtd_tracks_artist) AS correlation
FROM (
    SELECT
        artist_name,
        COUNT(track_name) AS qtd_tracks_artist,
        SUM(streams) AS qtd_streams_artist
    FROM `laboratoria-projeto-02.laboratoria_projeto_02.track_total_info`
    GROUP BY artist_name
) AS artist_stats;
