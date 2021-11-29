# F-PALS: [The Final Project](https://docs.google.com/presentation/d/1K_GDT5Z9gXgQocvto1T3PfcPokiHEzsp4WKGlrQmI7w/edit?usp=sharing)
For our final project we will be using machine learning on past, present, and future movies to predict and interpret revenue to dictate wether it was a success or not!

Our presentation on Google Slides can be found with either the above link or __[here](https://docs.google.com/presentation/d/1K_GDT5Z9gXgQocvto1T3PfcPokiHEzsp4WKGlrQmI7w/edit?usp=sharing).__

## __Profitibility of Movies Through Machine Learning__
### Why did we pick movies? And what are we hoping to answer?
__*Movies*__ are a cornerstone of culture worldwide as well as being one of the most lucrative businesses in media. They are a subject in which all of us within the group could relate with the sheer volume and appeal of which, there's a movie for everyone! There was an abundant amount of data available	for us to collect, especially with box office successes. For our final project we wanted to create a machine learning algorithm to predict how successful a movie would become on release as well as potential losses in profits due to a flop. 
Along with the flops and successes, we hope to discover the trends in movie production to find out how future movies will perform based on those variables tested and trained for.

### Where did we find our data? Why did we use it?
The source data that we have decided to use is from [The Movie Database](https://www.themoviedb.org/). It is a site very similar to [IMDB](https://www.imdb.com/) (a leading information resource on multimedia), focusing on movies and shows as well as having access to a free API through the [developers website for The Movie Database](https://developers.themoviedb.org/3/getting-started/introduction). This website also uses IMDB IDs for their films and other items of inquiry for ease of reference between both websites.

With our sample data that we pulled for our database and machine learning skeleton, we pulled the first 11 pages of the "popular movies" tag to test out our code and work out any kinks. The final API pull will be for all available movies to have as much data as possible before clearing out null values. 

The variables our team chose were what we thought would be most impactful to influence	the average moviegoer to watch it. This included the actors, directors, popularities, budgets, production studios, age ratings (in the US), and countries of origin. The final variable we needed was revenue/box office numbers to train and compare our machine learning findings to actual results as well as for seeing how well our model works on upcoming films. 

### Data Exploration: What did we initially uncover?
We had a few hypotheses on what can influence a movie in its performance for profitability. Initial thoughts were related to *names*, whether those belonged to actual people, groups/companies, or properties, clout with a name can influence if people are willing to watch.

We created variables of actor and director popularity averages because big names bring in big crowds of those familiar with their previous works. For example Steven Spielberg, Christopher Nolan, Egdar Wright are all recognizable auteurs in directing who have enough influence and star power that they can make their own original films without dipping into franchises for success.

The same goes for actors, but this is one that weighs more to the average audience member due to them being the faces of the movies they watch. They too can also go for more unique premises for movies and still bring in dedicated audiences. The advantage on weight also goes to actors because movies can have multiple heavy star powered actors in lead or supporting roles, a la the Marvel movies where almost every major charactor either was already or is now an A list actor. The more names a movie can bring in, the higher the probability for profitability.

Last of the big named variables is the studio. Studios are also now synonymous with the movies that they produce, such as Disney, Marvel, Pixar. Having a large and consistently chart topping studio as the creative team brings about a seal of quality for many average movie goers. 
The connecting tissue for all the above is __familiarity__. The average movie goer isn't a cinephile with terabytes of information at the ready in their head for movie trivia, but they are susceptible to recognizable names from actors to studios that have made something they watched before.

With the last largely affecting variable being the budget of the film. The more a movie spends, typically the bigger the hit. However, it also works that there are many popular movies in the past that were small budget, *OR* that there were huge flops because general audiences didn't like the film despite the large budget.

### Analysis: What could we conclude?
After some analysis on the pulled data many of our original hypotheses turned out to be true. 

On the website where we pulled our data, [The Movie Database](https://www.themoviedb.org/), they also had a *'popularity'* feature for actors, movies, and directors that took into account how often someone or something was looked at in order to create a 'popularity' figure to gauge the general audience interest in these specific persons of interest. It was a good measure on who or what was still relevant in the cultural zeitgeist, for example someone like James Dean, who has been gone for over 50 years, would have less popular relevance than Scarlett Johansson.

Our hypotheses on the other influential variables such as with studios and actors did return that those are large contributing factors to a movie's success, as noted by many of the top selling films of all time having Marvel or Disney as a noted studio. 

Another noted point of interest was movie franchises, some of the still popular movies to this day are connected to other movies by either being a part of the sequels or being in the franchise. There is no category for this within the API pull, however some examples of profitable franchises are Star Wars and Harry Potter, with each film more than making a profit even included the rule of thumb marketing costs.

### Machine Learning Specifics
##### Preprocessing
1. To preprocess the data, first we grouped the actors each by their respective movies using movie_id, then averaged the popularity score of those actors in each movie to get one composite popularity score. We then repeated this process for the directors.
2. Then we looked at the studios column. After seeing how many studios only had one or two movies, we decided to bin all of those studios with less than 3 movies in our list to a bin we named “Other.” This left us with the top 10 studios and the “Other” bin.
3. The studios were then categorized using movie_id to create lists of of each individual studio that produced it 
4. The datetime variables were converted to the %Y-%m-%d format and then we used that to to encode using month number as a variable. Ie. January = 1, December = 12
5. The genres were broken down like the movie studios, so that each row contains a list of genres that were associated with each movie also using movie_id.
6. After creating the lists of studios and genres we then encoded them using OneHotEncoder.
7. We also encoded the ratings using a similar method to months. 
ratings_enc = {
    'G': 1,
    'PG': 2,
    'PG-13': 3,
    'R': 4,
    'NC-17': 5,
    'NR':6
}
8. After encoding we noticed that budget, revenue, votes, and popularity scores had a wide range of numbers so we standardized those.
9. We then split the data using the default setting from sklearn's testtrainsplit module which is 75/25


For the model choice we decided to do a Logistic regression using a boolean to determine whether a movie was a success or not. The model does provide us a prediction of whether a movie will be successful however it does not give the estimated revenue that it is predicting only a yes or no. A benefit is that our model can be used as a quick identifier of whether a movie is a success or not

![image](https://user-images.githubusercontent.com/83510059/143798774-e2c6ed98-dc6f-4a02-aed2-ab8f0750544b.png)

![image](https://user-images.githubusercontent.com/83510059/143798790-78d1fe21-6c8a-4e8a-99a4-0e86ff839544.png)

## Communication Protocols
* Meeting Times: 
  * Daily at 6:30PM - 8:30PM if there is no class time
  * Use Slack to update others on what we are working on individually
  * Use Discord to meet for meetings

At first we used Zoom for our meetings due to familiarity of the app through class. However, we soon found out that Zoom had a short time limit of about an hour for video conferences, to we decided to use another free app, [Discord](discord.com) in place of it. Through our Discord server created specifically for the project, any of us can join into a voice chat room at any point in time without having to start a specific conference as well as share all our screens at once if necessary. Our meetings typically lasted for 2 hours and any other questions or concerns done outside of them were done through Slack.

## Segment Roles:
* __*Andrew*__: Square --> Square
* __*Freddie*__: Triangle --> Square
* __*Sean*__: Circle --> Triangle
* __*Peter*__: X --> X 
* __*Lanisha*__: Circle --> 

## Segment Notes
### Segment 1
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


### Segment 2
* Finalize the database
  * Went with Heroku to avoid charges
  * Finalized all the joins and columns to be ready for ML integration
* Continue working on fine tuning the ML algorithms 
* Create a Google slide for presentation

