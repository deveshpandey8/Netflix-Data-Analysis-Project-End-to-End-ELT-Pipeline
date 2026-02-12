-- WITH raw_ratings AS (
--   SELECT * FROM MOVIELENS.RAW.RAW_RATINGS
-- )
-- SELECT 
-- userId as user_id
-- movieId as movie_id,
-- TO_TIMESTAMP_LTZ(timestamp) AS rating_timestamp
-- FROM raw_ratings

{{ config(materialized = 'table')}}
WITH raw_ratings AS (
  SELECT * FROM MOVIELENS.RAW.RAW_RATINGS 
)

SELECT 
  userId AS user_id,
  movieId AS movie_id,
  rating,
  TO_TIMESTAMP_LTZ(timestamp) AS rating_timestamp
FROM raw_ratings  