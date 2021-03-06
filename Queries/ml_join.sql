ALTER TABLE actor
RENAME gender TO actor_gender;

ALTER TABLE actor
RENAME name TO actor_name;

ALTER TABLE director
RENAME gender TO director_gender;

ALTER TABLE director
RENAME name TO director_name;

ALTER TABLE director
RENAME actor_popularity TO director_popularity;

select * from director;

--Create Meta Table from all the table that will be used exported for machine learning.
CREATE TABLE Meta AS
SELECT
	movie_data.*
	,actor.actor_name
	,actor.actor_id
	,actor.actor_gender
	,actor.character
	,actor.actor_popularity
	,director.director_name
	,director.director_id
	,director.director_gender
	,director.director_popularity
	,studio.studio_id
	,studio.studio_name
	,studio.origin_country
FROM movie_data
LEFT JOIN actor ON movie_data.movie_id = actor.movie_id
LEFT JOIN director ON movie_data.movie_id = director.movie_id
LEFT JOIN studio ON movie_data.movie_id = studio.movie_id
ORDER BY movie_data.release_date ASC;

DROP TABLE meta;
