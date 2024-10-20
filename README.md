# Jose Aranda Data Analyst Portfolio
## Welcome to my personal portfolio repository! 
This repository is meant to contain examples of analysis I've done while working with MySQL and Tableau. This repository is filled with a variety of projects ranging from solo projects, projects from data analytics certificate courses, and projects inspired by 
YouTube videos. Ultimately, this is meant to showcase my skills and expertise in data analysis and data manipulation using SQL, while highlighting my experience with visualizing data through Tableau. 
<br/> <br/>*NOTE: I used MySQL workbench.*

## 1. World Layoff
- **Data:** [Layoffs dataset (CSV)](World_layoffs_github/layoffs.csv)
- **Code:** [MySQL_clean](World_layoffs_github/world_layoffs_clean.sql) or [MySQL_analyze](World_layoffs_github/world_layoffs_analyze.sql)
- **Visual:** [Dashboard 1](https://public.tableau.com/app/profile/jose.aranda7220/viz/layoff_progression_dash/layoff_progression_visual),
[Dashboard 2](https://public.tableau.com/app/profile/jose.aranda7220/viz/top5_yearly_company_layoffs/top5_yearly_company_layoffs),
[Dashboard 3](https://public.tableau.com/app/profile/jose.aranda7220/viz/business_impacted_most/business_impacted_most)

In this project, I used a dataset found within a github repository that was filled with different companies and industries from different parts of the world showcasing their employee layoffs for the years 2020-2023. This project was my first attempt to analyze a dataset. 
Therefore, the main focus of this project was to find out as much as possible from this data. The three main analysis from this project was analyzing the progression of layoffs, analyzing the top 5 companies that laid off the most employees per year, and analyzing what 
business type got affected the most by these layoffs. 

**Result:** 
- Analysis 1: From the years 2020-2023, the total number of employees laid off were 383,159, with 84,714 being the most laid off employees on 2023-01 (Visual is more detailed and shows the progression).
- Analysis 2: From the years 2020-2023, Uber laid off the most with 7,525 in 2020, ByteDance laid off the most with 3,600 in 2021, Meta laid off the most with 11,000 in 2022, Google laid off the most with 12,000 in 2023 (Visual shows top 5 companies with most layoffs per year).
- Analysis 3: The business type that got affected the most was seed, beginning of a business, with those type of business having laid off 70%.

*NOTE: The dataset isn't large, so the data was imported using 'Table Data Import Wizard'.*

## 2. Cyclistic Bike-Share
- **Data:** [Cyclistic_Data (202301-2023012)](https://divvy-tripdata.s3.amazonaws.com/index.html)
- **Code:** [MySQL_clean](cyclistic_sql_code/coursera_cyclistic_clean.sql) or [MySQL_analyze](cyclistic_sql_code/coursera_cyclistic_analyze.sql)
- **Visual:** [Dashboard 1](https://public.tableau.com/app/profile/jose.aranda7220/viz/company_status_rider/Dashboard1),
[Dashboard 2](https://public.tableau.com/app/profile/jose.aranda7220/viz/total_rideable_type_used/Dashboard1),
[Dashboard 3](https://public.tableau.com/app/profile/jose.aranda7220/viz/bikes_used_daily_visual/Dashboard1),
[Dashboard 4](https://public.tableau.com/app/profile/jose.aranda7220/viz/bikes_used_monthly/Dashboard1),
[Dashboard 5](https://public.tableau.com/app/profile/jose.aranda7220/viz/bikes_used_seasonly/Dashboard1),
[Dashboard 6](https://public.tableau.com/app/profile/jose.aranda7220/viz/avg_ride_daily/avg_ride_daily_vis),
[Dashboard 7](https://public.tableau.com/app/profile/jose.aranda7220/viz/avg_ride_monthly/Dashboard1),
[Dashboard 8](https://public.tableau.com/app/profile/jose.aranda7220/viz/start_station_locations/Dashboard1),
[Dashboard 9](https://public.tableau.com/app/profile/jose.aranda7220/viz/end_station_locations/Dashboard1)


In this project, I used 12 datasets provided by the Google Data Analytic Certificate [(found here)](https://divvy-tripdata.s3.amazonaws.com/index.html). These 12 datasets represented each month for the year 2023. Each dataset was filled with cyclistic data for a fictional company that tracked the annual memberships and casual riders through people using their 5,824 bycicles and 692 docking stations around Chicago. Additionally, this company considered casual riders to be customers who purchased a single-ride pass or full-day pass, while annual members are those who who purchased a cyclistic membership (benefits aren't listed). With that in mind, the goal of this project was to identify how casual and annual members used Cyclistic bike's differently in order to create a marketing strategy to convert casual members into annual members due to annual members being more profitable for the company.  

**Analyze Result:**
- Analysis 1: There is 2,799,949 members and 1,531,755 casual riders in this company. Meaning as things currently stand within the company, 64.6% of the riders are annual members and 35.4% are casual riders.
- Analysis 2: There are 3 different bike types, they consist of classic, electric and docked bikes. Of the total bikes used, members make up 42.0% of the classic bikes used and 22.7% of the electric bikes used. Casual riders make up 20.2% of the classic bikes used, 13.4% of the electric bikes used, and 1.8% of the docked bikes used. 
- Analysis 3: On an average week, a casual rider is most likely to use a bike during the weekend (Saturday-Monday), while the amount of bikes used decline on Tuesday and slowly increase throughout the weekday. An annual member is most likely to use a bike during the weekday (Wednesday-Friday), while the amount of bikes used decline on Sunday-Monday and drastically increase throughout the weekday.  
- Analysis 4: For the 2023 year, both casual riders and annual members have similar riding patterns since they use the most bikes during April-October (Spring-Autumn). However, casual riders have a peak of 245,294 bikes used in July, while annual members have a peak of 351,063 in August.
- Analysis 5: For the 2023 year, 39.1% of the total riders were in Summer, 27.4% of the total riders were in Autumn, 22.8% of the total riders were in Spring, and 10.7% of the total riders were in Winter.
- Analysis 6: On an average week, both casual riders and annual members have a similar daily average riding duration pattern. However, casual riders would have a slightly higher average ride time, with Monday being the highest ride duration with an average of 26 minutes and Thursday being the lowest ride duration with an average of 19 minutes. While annual members would have a slightly lower average ride time, with Monday being the highest ride duration with an average of 13 minutes and Tuesday being the lowest ride duration with an average of 11 minutes. Essentially, casual riders travel longer since they ride twice as long as annual members.
- Analysis 7: For the 2023 year, both casual riders and annual members have a similar monthly average riding duration pattern. For example, casual riders have it's average highest ride duration in July with 25 minutes, while having it's average lowest ride duration in January with 14 minutes. Annual riders have it's average highest ride duration in July with 13 minutes, while having it's average lowest ride duration in January with 9 minutes. Essentially, casual riders travel longer since they ride twice as long as annual members.
- Analysis 8: Annual members are more likely to go to the same starting bike station (as seen in visual 8 by how compacted it is on the map). For example, annual members tend to favor a starting station located near universities, residential areas, or train stations. Casual members are more likely to spread out all over Chicago when deciding on what starting bike station to use (as seen in visual 8 by how spread out it is on the map). For example, casual members tend to favor a starting station located near museums, aquariums, or parks. Essentially, casual riders use bikes for leisure and annual members use bikes to commute to school or work.
- Analysis 9: The ending station locations follow a similar trend to that of the starting location. Meaning that annual members favor an ending station near universities, residential areas, or train stations. While casual members favor an ending station near museums, aquariums, or parks. Essentially, casual riders use bikes for leisure and annual members use bikes to commute to school or work.

Summary of Differences: 
- Casual members travel twice as long as annual members but less frequently.
- Casual members are most active during the weekend, while annual members are most active during the weekday. 
- Casual riders use bikes for leisure, while annual members use bikes to commute to school or work. 

**Share Result:**<br/>
Possible marketing strategy to convert casual riders into annual members.
- Casual riders are most active during April-October (Spring-Autumn) around popular leisure places. Therefore a possible marketing campaign can be to have a seasonal deal. For example, this marketing campaign can consist of having a summer deal where new members get a discount in annual membership.
- Casual riders travel the most during the weekend around popular leisure place. Therefore a possible marketing campaign can be to partner with popular leisure places. For example, parterning with Shedd Aquarium by offering a weekend free trial of annual membership to those that purchase a ticket to Shedd Aquarium.
- Casual riders travel long durations. Therefore a possible marketing campaign can be to create some sort of rewards program. For example, casual riders will be able to get a discount from annual membership if they ride for a certain duration, while annual members will be able to gain access to experiences (local events) or be able to gain free annual membership for the next year if they ride for a certain duration.


*NOTE: The dataset is large, with over 5 million rows, so the data was individually imported using load data infile query and later combined into one big dataset.*
