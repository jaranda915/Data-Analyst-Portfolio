#STEP 1: IMPORT DATA INTO DATASET (note that datasets I used aren't fully raw. I added ride_length and day_of_week in csv file)

#needed to disable strict mode (when getting error 1265, truncate error due to importing blank rows)
SET SESSION sql_mode = REPLACE(@@sql_mode, 'STRICT_TRANS_TABLES', '');
SET SESSION sql_mode = REPLACE(@@sql_mode, 'STRICT_ALL_TABLES', '');

# enable strict mode 
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES';

#create table for 1st month data
CREATE TABLE `trip_data01` (
  `ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);

#insert data (first look for program data in files, mySQL, go to mysql server, go to uploads, paste file in folder, run code below with it's specified path)
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202301-divvy-tripdata_copy.csv'
INTO TABLE trip_data01
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#check to see if imported
select *
from trip_data01
limit 5;

#create table for 2nd month data
CREATE TABLE `trip_data02` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202302-divvy-tripdata_copy.csv'
INTO TABLE trip_data02
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 3rd month data
CREATE TABLE `trip_data03` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202303-divvy-tripdata_copy.csv'
INTO TABLE trip_data03
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 4th month data
CREATE TABLE `trip_data04` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202304-divvy-tripdata_copy.csv'
INTO TABLE trip_data04
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 5th month data
CREATE TABLE `trip_data05` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202305-divvy-tripdata_copy.csv'
INTO TABLE trip_data05
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 6th month data
CREATE TABLE `trip_data06` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202306-divvy-tripdata_copy.csv'
INTO TABLE trip_data06
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 7th month data
CREATE TABLE `trip_data07` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202307-divvy-tripdata_copy.csv'
INTO TABLE trip_data07
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 8th month data
CREATE TABLE `trip_data08` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202308-divvy-tripdata_copy.csv'
INTO TABLE trip_data08
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 9th month data
CREATE TABLE `trip_data09` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202309-divvy-tripdata_copy.csv'
INTO TABLE trip_data09
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 10th month data
CREATE TABLE `trip_data10` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202310-divvy-tripdata_copy.csv'
INTO TABLE trip_data10
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 11th month data
CREATE TABLE `trip_data11` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202311-divvy-tripdata_copy.csv'
INTO TABLE trip_data11
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table for 12th month data
CREATE TABLE `trip_data12` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int,
  PRIMARY KEY (`ride_id`)
);
#insert data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202312-divvy-tripdata_copy.csv'
INTO TABLE trip_data12
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#create table used to combine all of the 2023 data
CREATE TABLE `trip_data_2023` (
`ride_id` varchar(16) NOT NULL,
  `rideable_type` text,
  `started_at` text,
  `ended_at` text,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length`time(0),
  `day_of_week` int
);
#insert all of the year data into combined table (around 5,719,877 totals rows)
INSERT INTO trip_data_2023
select * from trip_data01
UNION ALL
select * from trip_data02
UNION ALL
select * from trip_data03
UNION ALL
select * from trip_data04
UNION ALL
select * from trip_data05
UNION ALL
select * from trip_data06
UNION ALL
select * from trip_data07
UNION ALL
select * from trip_data08
UNION ALL
select * from trip_data09
UNION ALL
select * from trip_data10
UNION ALL
select * from trip_data11
UNION ALL
select * from trip_data12;

#preview data
select DISTINCT *
from trip_data_2023
limit 100;

#STEP 2: CLEAN DATA/STANDARDIZE IT
/*
A) clean data: looked for duplicates, Removed nulls.
B) standardize it: change data types from columns
*/

-- A) Clean data

# identifying unique vs duplicate values part 1: by counting amount of times value repeats (1=unique, 2=duplicate)in each row for all the columns
select *, ROW_NUMBER() over(Partition By ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual,ride_length,day_of_week) as row_num 
from trip_data_2023;

#identifying unique vs duplicate values part 2: create cte of layoffs_copy above code in order to separate the duplicates from unique values (no duplicates in dataset)
with duplicates_cte as (
select *, ROW_NUMBER() over(Partition By ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual,ride_length,day_of_week) as row_num 
from trip_data_2023
)
select *
from duplicates_cte
where row_num>1;

#looking for possible errors (The only visisble error in the dataset is the amount of nulls/blank values within the start and end station columns)
Select *
from trip_data_2023
limit 100;

#ex of statement above: start/end station name/id has many null/blank values.
select (select count(start_station_name) from trip_data_2023 where start_station_name='') as blank_rows_start_station_name,
(select count(start_station_id) from trip_data_2023 where start_station_id='') as blank_rows_start_station_id,
(select count(end_station_name) from trip_data_2023 where end_station_name='') as blank_rows_end_station_name,
(select count(end_station_id) from trip_data_2023 where end_station_id='') as blank_rows_end_station_id
from trip_data_2023
limit 1;

#Looking if there is any data available to populate blank values (There isn't)
select *
from trip_data_2023
where start_station_name='' or start_station_id='';

#Looking if there is any data available to populate blank values  (There isn't)
select *
from trip_data_2023
where end_station_name='' or end_station_id='';

#check to see if there is any null values (all rows without values are blank)
select *
from trip_data_2023
where ride_id IS NULL OR rideable_type IS NULL OR started_at IS NULL OR ended_at IS NULL OR start_station_name IS NULL OR start_station_id IS NULL OR end_station_name IS NULL OR
end_station_id IS NULL OR start_lat IS NULL OR start_lng IS NULL OR end_lat IS NULL OR end_lng IS NULL OR member_casual IS NULL;

#Delete all empty rows (1,388,173 deleted)
DELETE FROM trip_data_2023
WHERE ride_id=''
OR rideable_type=''
OR started_at=''
OR ended_at=''
OR start_station_name=''
OR start_station_id=''
OR end_station_name=''
OR end_station_id=''
OR start_lat=''
OR start_lng=''
OR end_lat=''
OR end_lng=''
OR member_casual=''
OR ride_length=''
OR day_of_week='';

#check results
select *
from trip_data_2023
limit 100;

#Check how many rows (there are a total of 4,331,704 rows)
select count(*)
from trip_data_2023;

-- B) Standardize it

#ex: convert text data type for started_at column to date format
select started_at, str_to_date(started_at,'%m/%d/%Y')
from trip_data_2023
limit 5;

#Update started_at column to date format
UPDATE trip_data_2023
set started_at= str_to_date(started_at,'%m/%d/%Y');

#check results
select *
from trip_data_2023
limit 5;

#ex: convert text data type for ended_at column to date format
select ended_at, str_to_date(ended_at,'%m/%d/%Y')
from trip_data_2023
limit 5;

#Update started_at column to date format
UPDATE trip_data_2023
set ended_at= str_to_date(ended_at,'%m/%d/%Y');

#check results
select *
from trip_data_2023
limit 5;

#checking to see if all ride_length rows are under a day (they are)
select ride_length
from trip_data_2023
where hour(ride_length)>='23'
order by ride_length desc;

#started_at & ended_at column are date format now but the columns are still text data type, therefore this altered the column to date data type
alter table trip_data_2023
modify column started_at DATE, modify column ended_at DATE;


