-- Analyze Data

#useful background: Different types of status within company. (NOTE: 4,331,704 total. Out of that total there is  2,799,949 member and 1,531,755 casual)
select member_casual,count(member_casual)as total_number_riders
from trip_data_2023
group by member_casual;

#exploring data: Different types of bikes/rideable_type (2,690,742 classic bikes; 1,564,838 electric bikes; 76,124 docked bikes)
select rideable_type,count(rideable_type)
from trip_data_2023
group by rideable_type;

#exploring data: Showing how many bikes were used in each day (1=sunday, 2=monday, 3=tuesday, 4=wednesday, 5=thursday, 6=friday, 7=saturday)
select day_of_week,count(day_of_week)
from trip_data_2023
group by day_of_week
order by day_of_week;

#preview data
select *
from trip_data_2023
limit 5;


#analysis 1: average length ride per month for each rider status
select month(started_at) as months,member_casual,sec_to_time(floor(avg(time_to_sec(ride_length)))) as average_ride_length
from trip_data_2023
group by months,member_casual;

#analysis 2: average length ride per day for each rider status
select CASE
    WHEN day_of_week = 1 THEN 'Mon' 
    WHEN day_of_week = 2 THEN 'Tues' 
    WHEN day_of_week = 3 THEN 'Wed'
    WHEN day_of_week = 4 THEN 'Thur'
    WHEN day_of_week = 5 THEN 'Fri' 
    WHEN day_of_week = 6 THEN 'Sat'
	WHEN day_of_week = 7 THEN'Sun' 
END as days, member_casual, sec_to_time(floor(avg(time_to_sec(ride_length))))  as average_ride_length
from trip_data_2023
group by days,member_casual
order by CASE
	WHEN days = 'Sun' THEN 1
	WHEN days = 'Mon' THEN 2
	WHEN days = 'Tues' THEN 3
	WHEN days = 'Wed' THEN 4
	WHEN days = 'Thur' THEN 5
	WHEN days = 'Fri' THEN 6
	WHEN days = 'Sat' THEN 7
END asc,member_casual;

#Analysis 3: Total amount of riders for each bike types and rider status 
select member_casual, rideable_type, COUNT(*) as total_riders
from trip_data_2023
group by member_casual, rideable_type
order by member_casual, total_riders;

#analysis 4: number of bikes used per month
select month(started_at) as months,member_casual,count(ride_id) as total_riders
from trip_data_2023
group by months,member_casual
order by member_casual;

#analysis 5: number of bikes used per day
select CASE
	WHEN day_of_week = 1 THEN 'Mon' 
    WHEN day_of_week = 2 THEN 'Tues' 
    WHEN day_of_week = 3 THEN 'Wed'
    WHEN day_of_week = 4 THEN 'Thur'
    WHEN day_of_week = 5 THEN 'Fri' 
    WHEN day_of_week = 6 THEN 'Sat'
	WHEN day_of_week = 7 THEN'Sun' 
END as days,member_casual,count(ride_id) as total_riders
from trip_data_2023
group by days,member_casual
order by CASE
	WHEN days = 'Sun' THEN 1
	WHEN days = 'Mon' THEN 2
	WHEN days = 'Tues' THEN 3
	WHEN days = 'Wed' THEN 4
	WHEN days = 'Thur' THEN 5
	WHEN days = 'Fri' THEN 6
	WHEN days = 'Sat' THEN 7
END asc,member_casual;
     
#analysis 6: number of bikes used per season
select CASE
	WHEN month(started_at)=3 OR month(started_at)=4 OR month(started_at)=5 THEN 'Spring'
    WHEN month(started_at)=6 OR month(started_at)=7 OR month(started_at)=8 THEN 'Summer'
    WHEN month(started_at)=9 OR month(started_at)=10 OR month(started_at)=11 THEN 'Autumn'
    WHEN month(started_at)=12 OR month(started_at)=1 OR month(started_at)=2 THEN 'Winter'
END as season, count(ride_id) as total_riders
from trip_data_2023
group by season;

#analysis 7: data to show map by showing where starting locations are located
select start_station_name,member_casual,avg(start_lat) as start_lat,avg(start_lng) as start_lng,count(*) total_riders
from trip_data_2023
group by start_station_name,member_casual;

#analysis 8: data to show map by showing where ending locations are located
select end_station_name,member_casual,avg(end_lat) as end_lat,avg(end_lng) as end_lng,count(*) total_riders
from trip_data_2023
group by end_station_name,member_casual;