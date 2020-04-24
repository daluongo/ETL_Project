## ETL_Project

This was a team project designed to practice the ETL process (Extraction, Transformation, Load) to conduct a correlation analysis for Airbnb data and 311 service requests. Analyzed 22M rows of 311 service requests for New York City as well as data on Airbnb rentals 
	
•	That was accomplished by using Python to clean and analyze data sourced through API interactions as well as a PostgreSQL database 


## Extraction Phase

We utilized one CSV file and one API written in JSON :
New York City Open AirBnb Data 
This data was downloaded as CSV file and was comprised of  48,000 rows

311 Service Requests from 2010 to Present
This data source contained 22mil rows, which resulted in issues relating to  local storage and ease of transferring data when downloading as a CSV.   As a result, the NYC Open Data API was used. This allowed for flexibility in the amount of  data used within the project.
The API code was written in  Jupyter Notebook:
Note that a limit of 100 rows was used for each API call. This can be easily adjusted to pull much more.

![Extraction API Code](/Desktop/Picture1.png)
Format: ![Alt Text](url)
