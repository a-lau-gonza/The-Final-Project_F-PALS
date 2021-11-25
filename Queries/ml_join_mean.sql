--Create Meta Table from all the table that will be used exported for machine learning.
CREATE TABLE Meta AS
SELECT
	movie_data.*
	,actor.actor_popularity_mean
	,director.director_popularity_mean
FROM movie_data
LEFT JOIN actor ON movie_data.movie_id = actor.movie_id
LEFT JOIN director ON movie_data.movie_id = director.movie_id
ORDER BY movie_data.release_date ASC;

DROP TABLE meta;
