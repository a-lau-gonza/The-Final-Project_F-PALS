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
    PRIMARY KEY (movie_id)
);

CREATE TABLE actor (
    name VARCHAR(40) NOT NULL,
    actor_id FLOAT8,
	gender FLOAT8,
	character VARCHAR(60),
	actor_popularity FLOAT8,
	movie_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie_Data (movie_id)
);

CREATE TABLE director (
    name VARCHAR(40) NOT NULL,
    director_id FLOAT8,
	gender FLOAT8,
	actor_popularity FLOAT8,
	movie_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie_Data (movie_id)
);

CREATE TABLE studio (
    studio_id FLOAT8,	
    studio_name VARCHAR(60) NOT NULL,
	origin_country VARCHAR(3),
	movie_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie_Data (movie_id)
);

DROP TABLE director;
DROP TABLE studio;
DROP TABLE actor;
DROP TABLE movie_data;
