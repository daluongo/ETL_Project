## ETL_Project

This was a team project designed to practice the ETL process (Extraction, Transformation, Load) to conduct a correlation analysis for Airbnb data and 311 service requests. Analyzed 22M rows of 311 service requests for New York City as well as data on Airbnb rentals 
	
•	That was accomplished by using Python to clean and analyze data sourced through API interactions as well as a PostgreSQL database 


## Extraction Phase

We utilized one CSV file and one API written in JSON :

### New York City Open AirBnb Data 
* This data was downloaded as CSV file and was comprised of  48,000 rows

### 311 Service Requests from 2010 to Present

* This data source contained 22mil rows, which resulted in issues relating to  local storage and ease of transferring data when downloading as a CSV.   

* s a result, the NYC Open Data API was used. This allowed for flexibility in the amount of  data used within the project.

* The API code was written in  Jupyter Notebook.


## Transformation Phase

### PostgreSQL Database

We created a local PostgreSQL Database consisting of two tables:

* NYC_311
	* The JSON database would be imported into this table

* Air_bnb
	* The CSV file would be imported into this table
	* Each table consisted of the relevant columns necessary to create a joined table later in the process.

### CSV File

* We imported the necessary dependencies into Python to clean our datasets
	* import pandas as pd
	* from sqlalchemy import create_engine
	
* We stored the CSV file into a dataframe utilizing the Pandas Library in Python
	* csv_file = "../Resources/customer_data.csv"
	* customer_data_df = pd.read_csv(csv_file)
	* customer_data_df.head()
	
* Then, we cleaned the dataframe by creating new data with selected columns
	* new_customer_data_df = customer_data_df[['id', 'first_name', 'last_name']].copy()
	* new_customer_data_df.head()
	
### JSON API

* After receiving the JSON response from NYC Open Data API, we added the data into a Pandas Dataframe:
	* We made one initial API pull to set up the Pandas Dataframe, then we created a for loop to run multiple API calls (to throttle large data pulls) and appended the initial Dataframe with each additional response from the API call. 
	
* Once all of the raw data was in a Dataframe, we copied specific columns of interest into a new Dataframe:
	* NYC_311_data_df = data_df[['agency', 'agency_name', 'borough', 'community_board','complaint_type','created_date','descriptor','latitude','longitude','status','unique_key']].copy()
	
* Later on, we added code to adjust the ‘borough’ column to ensure that the format matched the Air_bnb database:
	* NYC_311_data_df['borough'] = NYC_311_data_df['borough'].str.capitalize()


## Load Phase

* After the data sets were cleaned, we created connection strings from both Jupyter Notebooks to the local PostgreSQL database
	* rds_connection_string = "postgres:Password1!@localhost:5432/customer_db"
	* engine = create_engine(f'postgresql://{rds_connection_string}')
	
* We then verified we were connected to the SQL Database by checking for the table names
	* engine.table_names()

* Next, we used Pandas to load the Dataframes into the Database
	* new_airbnb_df.to_sql(name='air_bnb', con=engine, if_exists='append', index=False)

* Finally, we confirmed the data had been added by querying the database
	* pd.read_sql_query('select * from air_bnb', con=engine).head()
