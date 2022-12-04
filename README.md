# BME-BI 
Business Intelligence course on BME

# Netview
In the current days, Netflix is the most known subscription streaming service. The way the company used its data had a significant role in the remarkable growth that it experienced. It focuses not only on gaining more subscribers but also on improving the subscribers’ experience. The focus of this system is to analyse a portion of Netflix’s Business verticals: the current competition, the subscription, and the revenue. This aims to evaluate the areas where it is losing profit potential and how to work on them.

## Required
This project was developed using IPython Notebooks, Pentaho, Tableau, Docker, Docker-Compose, PostgreSQL and pgadmin.
## Project's Organization

The project is organized in different folder:
- main folder: where there  is the Tableau book with all the visualizations, the docker-compose configuration file, the schema for the database and the python scripts used to scrape and modify datasets;
- datasets: contains all the datasets used;
- jobs: contains all the jobs created in Pentaho;
- transformations: contains all the transformations created in Pentaho;
- report-images: where all the images used in the report are stored.

## How to run
To create the containers of PostgreSQL and pgadmin admin needed for both Pentaho population of the database and Tableau data retrieval it is necessary to run the following command on the main folder:
```
docker-compose up --build
```

To access pgadmin at http://localhost:8080/ use the following credentials:
```
email: admin@admin.com
password: secret@secret
```

To access the postgres server use the following attributes:
```
host name: postgres
port: 5432
username: postgres
password: netview
```
To see the transformations and jobs on Pentaho you just need to open the desired one in Pentaho and change the PATH variable on the step 'Set PATH variable' to the path of this folder in your machine.

To get all the ETL done, only the complete_pipeline job is necessary, but other jobs are available to make the transformations to each dataset and also to configure the database.

On Tableau is only necessary to connect to the postgres server and everything should run smoothly presenting the prepared visualizations when opening 'Netview_tableau.twb' file.

## Visualizations 

The result from the presentation layer is available in this [link](https://public.tableau.com/app/profile/rita7831/viz/Netview/NetfflixSubscriptionAnalysis) .


## Results



