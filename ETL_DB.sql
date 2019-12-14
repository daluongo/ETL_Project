--   CREATE TABLE air_bnb(
--    	latitude FLOAT,
--    	longitude FLOAT,
--    	neighbourhood VARCHAR(100),
--   	neighbourhood_group VARCHAR (100)
--   );

--    CREATE TABLE nyc_311(
--    	agency VARCHAR(100),
--   	 	agency_name VARCHAR(100),
--  		borough VARCHAR(100),
--   	 	community_board VARCHAR(100),
--   	 	complaint_type VARCHAR (100),
--  		created_date TIMESTAMP,
--   	 	descriptor VARCHAR(100),
--  		latitude FLOAT,
--      	longitude FLOAT,
--   	 	status VARCHAR(100),
--   	 	unique_key INT
-- );

--   SELECT * FROM nyc_311

--   SELECT * FROM air_bnb

-- SELECT nyc_311.borough, nyc_311.descriptor, air_bnb.neighbourhood
-- FROM nyc_311
-- JOIN air_bnb
-- ON nyc_311.borough = air_bnb.neighbourhood_group;