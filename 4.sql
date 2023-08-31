-- SQL query to determine the number of movies with an IMDb rating of 10.0.
SELECT count(*)
FROM movies
JOIN ratings
ON movies.id = ratings.movie_id
WHERE rating = 10.0;