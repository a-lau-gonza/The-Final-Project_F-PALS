# F-PALS: The Final Project 
Our final project will be based on a machine learning algorithm for __*MOVIES*__ and if we can predict the earnings for movies past and future!

## __Profitibility of Movies Through Machine Learning__
### Why did we pick movies? And what are we hoping to answer?
__*Movies*__ are a cornerstone of culture worldwide as well as being one of the most lucrative businesses in media. They are a subject in which all of us within the group could relate with the sheer volume and appeal of which, there's a movie for everyone! With the data available to us to collect, there was plenty especially when it came to box office success. For our final project we wanted to create a machine learning algorithm to predict how successful a movie would become on release as well as potential losses in profits due to a flop. 
Along with the flops and successes, we hope to discover the trends in movie production to find out how future movies will perform based on those variables tested and trained for.

### Where did we find our data? Why did we use it?
The source data that we have decided to use is from [The Movie Database](https://www.themoviedb.org/). It is a site very similar to [IMDB](https://www.imdb.com/) (a leading information resource on multimedia), focusing on movies and shows as well as having access to a free API through the [developers website for The Movie Database](https://developers.themoviedb.org/3/getting-started/introduction). This website also uses IMDB IDs for their films and other items of inquiry for ease of reference between both websites.

With our sample data that we pulled for our database and machine learning skeleton, we pulled the first 11 pages of the "popular movies" tag to test out our code and work out any kinks. The full pull thorugh the API will be for all available movies to have as much data as possible before clearing out null values. 

For the specific variables we were scraping for, we picked as many variables that would be discernable as having an impact on the average audience member in their interest in watching it. This included the actors/actresses, directors, genders of both previous categories, budget, production studio, age rating (in the US), and country of origin. The final variable we needed was revenue/box office numbers to train and compare our machine learning findings to actual results as well as for seeing how well our model works on upcoming films. 

## Communication Protocols
* Meeting Times: 6:30PM - 8:30PM
  * Using Slack to figure out what specific days to meet up for working together
  * 11/15: 6:30PM meetup on Zoom
  * During class times
  * 11/18: 6:30PM
  * 11/19: 6:30PM
  * 11/20 - 11/21: 6:30PM
  * 11/23: 6:30PM

At first we used Zoom for our meetings due to familiarity of the app through class. However, we soon found out that Zoom had a short time limit of about an hour for video conferences, to we decided to use another free app, [Discord](discord.com) in place of it. Through our Discord server created specifically for the project, any of us can join into a voice chat room at any point in time without having to start a specific conference as well as share all our screens at once if necessary. Our meetings typically lasted for 2 hours and any other questions or concerns done outside of them were done through Slack.

## Segment 1: Roles
* __*SQUARE*__: Andrew
* __*TRIANGLE*__: Freddie
* __*CIRCLE*__: Sean, Lanisha
* __*X*__: Peter


## Segment 1: Notes
* Pre-viz variables: actor/popularity_score, actor_id, director, director_id, studio, studio_id, producer, producer_id, budget, genre_id, genre, release date (encoded), release month (encoded), popularity, vote_avg, language, title, title_id, imdb_id, revenue
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
* Machine learning skeletons are placed in Tables folder

