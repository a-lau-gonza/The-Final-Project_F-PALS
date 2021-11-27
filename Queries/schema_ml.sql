-- Creating tables for Movie_Test DB
CREATE TABLE movie_data (
    movie_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
	release_date DATE,
	movie_popularity FLOAT8,
	vote_average FLOAT8,
	vote_count INT,
	budget INT8,
	revenue INT8,
	ratings VARCHAR(7),
    studios VARCHAR(150),
    genres VARCHAR(100),
    PRIMARY KEY (movie_id)
);

CREATE TABLE actor (
    movie_id INT NOT NULL,
	actor_popularity_mean FLOAT8,
    FOREIGN KEY (movie_id) REFERENCES Movie_Data (movie_id)
);

CREATE TABLE director (
    movie_id INT NOT NULL,
	director_popularity_mean FLOAT8,
    FOREIGN KEY (movie_id) REFERENCES Movie_Data (movie_id)
);

DROP TABLE director;
DROP TABLE actor;
DROP TABLE movie_data;