## ETL_Project

This was a team project designed to practice the ETL process (Extraction, Transformation, Load) to conduct a correlation analysis for Airbnb data and 311 service requests. Analyzed 22M rows of 311 service requests for New York City as well as data on Airbnb rentals 
	
•	That was accomplished by using Python to clean and analyze data sourced through API interactions as well as a PostgreSQL database 


## Extraction Phase

We utilized one CSV file and one API written in JSON :

### New York City Open AirBnb Data 
This data was downloaded as CSV file and was comprised of  48,000 rows

### 311 Service Requests from 2010 to Present

This data source contained 22mil rows, which resulted in issues relating to  local storage and ease of transferring data when downloading as a CSV.   

As a result, the NYC Open Data API was used. This allowed for flexibility in the amount of  data used within the project.

The API code was written in  Jupyter Notebook.


## Transformation Phase

### PostgreSQL Database

We created a local PostgreSQL Database consisting of two tables:

* NYC_311

	* The JSON database would be imported into this table

* Air_bnb

	* The CSV file would be imported into this table
	* Each table consisted of the relevant columns necessary to create a joined table later in the process.


