# F-PALS: The Final Project
Selected Topic: __Profitibility of Movies Through Machine Learning__

Our final project will be based on a machine learning algorithm for __*MOVIES*__ and if we can predict the earnings for movies past and future!

Reasons that we picked __*MOVIES*__: Movies are a cornerstone of culture worldwide as well as being one of the most lucrative businesses in media. They are a subject in which all of us within the group could relate with the sheer volume and appeal of which, there's a movie for everyone! With the data available to us to collect, there was plenty especially when it came to box office success. For our final project we wanted to create a machine learning algorithm to predict how successful a movie would become on release as well as potential losses in profits due to a flop. 
Along with the flops and successes, we hope to discover the trends in movie production to find out how future movies will perform based on those variables tested and trained for.

## Communication Protocols
* Meeting Times: 6:00PM - Whenever
  * Using Slack to figure out what specific days to meet up for working together
  * Use Zoom for audio and video meetings
  * 11/15: 6:30PM meetup on Zoom
  * During class times
  * 11/18: 6:30PM
  * 11/19: 6:30PM
  * 11/20 - 11/21: 6:30PM
  * 11/23: 6:30PM

## Data Links
[13 Best Movie Data Sets For Machine Learning Projects](https://imerit.net/blog/13-best-movie-data-sets-for-machine-learning-projects-all-pbm/)

[Examples for Tableau](https://public.tableau.com/search/all/%23Movies)

[MovieLens Datasets](https://grouplens.org/datasets/movielens/)

[IMDB Dataset on Kaggle](https://www.kaggle.com/columbine/imdb-dataset-sentiment-analysis-in-csv-format?select=Valid.csv)

[Machine Learning: Movie Recommendations Example](https://data-flair.training/blogs/data-science-r-movie-recommendation/)

[Movie API](https://www.themoviedb.org/documentation/api)


## Segment 1: Roles
* __*SQUARE*__: Andrew
* __*TRIANGLE*__: Freddie
* __*CIRCLE*__: Sean, Lanisha
* __*X*__: Peter


## Segment 1: Notes
* using google colab, for multiple people to work on the code if necessary
* database? will look into how much data is already out there and how to organize the data
* SQL and Postgres may be useful
* variables: actor/popularity_score, actor_id, director, director_id, studio, studio_id, producer, producer_id, budget, genre_id, genre, release date (encoded), release month (encoded), popularity, vote_avg, language, title, title_id, imdb_id, revenue
* Official variables: 
  * famous_actors: character, actor_gender, actor_id, actor_name (name), actor_popularity, movie_id
  * famous_directors: director_gender, director_id, director_name (name), director_popularity, movie_id
  * famous_studios: studio_id, movie_id, studio_name, origin_country
  * movies: movie_id, movie_title, budget, revenue, release_date, vote_average, movie_popularity, original_language, genre, genre_id, age_rating

* 11/19 due date: finishing up the CSVs (clean and update), technology.md, scheme, and sample database
* Quick notes on data cleaning: 
  * remove adult films
  * remove films with 0 in either budget or revenue
  * remove films with low vote_count to avoid small pop. bias
  * drop null values
  * boolean value for ML will be "hit"/"flop" (boolean pending) which will represent whether a movie made back its theorhetical budget or not
  * for movies, a typical rule of thumb on if it made its money back is 2x the original budget. the extra half is used for marketing.
  * if revenue > (2 * budget) then it made a profit

