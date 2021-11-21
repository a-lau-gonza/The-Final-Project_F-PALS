# Technologies Used
## Data Cleaning and Analysis
The Pandas library and Jupter Notebooks will be used for the initial EDA and to clean the data. The link to The Movie DataBase and it's API can be found in the project README, but all data was obtained through this publicly accessible database.  

## Database Storage
To store our data we created a database in pgAdmin with our exported csv file that were cleaned in Pandas. We will use postgreSQL to merge tables with our desired columns to run through our machine learning algorithm. 

## Machine Learning
We will use the SciKitLearn library for our machine learning model. We will use a supervised machine learning algorithim to predict box office performance of upcoming movies. We will use 70% of our data to train the model, and 30% as our test data to validate our models performance. All categorical variables will have been encoded, and quantitative data scaled before running the model.

## Dashboard
We will create a Tableau Dashboard to display our data and it's results. Tableau allows us to create visually compelling graphs, charts, and maps of our data. 
