#CLEANING DATA
select * from layoffs; 		#look at data

 #create copy of data in order to mess with it
Create Table layoffs_copy
LIKE layoffs;

#Insert data into copied table
INSERT layoffs_copy
select *
from layoffs;

select * from layoffs_copy;	 #look at copied data

#clean data step 1: identifying unique vs duplicate values: by counting amount of times value repeats (1=unique, 2=duplicate)in each row for all the columns
select *, ROW_NUMBER() over(Partition By company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num 
from layoffs_copy;

#clean data step 2: create cte of layoffs_copy above code in order to separate the duplicates from unique values 
with duplicates_cte as (
select *, ROW_NUMBER() over(Partition By company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num 
from layoffs_copy
)
select *
from duplicates_cte
where row_num>1;

#clean data step 3, putting it together: delete the duplicates by creating another table since you cant delete values in a cte (created table by right clicking copied table, copy to clipboard, create statement). Also added new column (row_num)
CREATE TABLE `layoffs_copy2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select * from layoffs_copy2;#see empty new table

#clean data step 4: Insert data into copied table with new column of duplicate vs unique
INSERT INTO layoffs_copy2
select *, ROW_NUMBER() over(Partition By company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num 
from layoffs_copy;

select * from layoffs_copy2;	#see the new table filled

#identify the duplicates
select *
from layoffs_copy2
where row_num>1;

#clean data step 5: delete duplicates
Delete
from layoffs_copy2
where row_num>1;

#see if duplicates deleted
select *
from layoffs_copy2
where row_num>1;





#standardizing data, finding issues on data and fixing it

#look at data (notices company has extra white space)
select *
from layoffs_copy2;

#outputs without the extra white space in company column
select Distinct trim(company)
from layoffs_copy2;

#update column to have all rows without extra white space
update layoffs_copy2
set company=trim(company);

#look at result (error fixed)
select *
from layoffs_copy2;

#notices error of industry column having repeats of same value just spelled differently (crypto,cryto currency, cryptocurrency)
select distinct industry
from layoffs_copy2
order by industry asc;

#updates industry column to get rid of all variations of crypto
update layoffs_copy2
set industry= 'Crypto'
where industry LIKE 'Crypto%';

#look at result
select distinct industry
from layoffs_copy2
order by industry asc;

#notices error in country where united states appears multiple times but its spelled differently)
select distinct country
from layoffs_copy2
order by country asc;

#update country column to get rid of all variations of united states
update layoffs_copy2
set country = trim(trailing '.' from country)
where country LIKE 'United States%';

#look at results
select distinct country
from layoffs_copy2
order by country asc;

#looks for more errors (notices date is text data type instead of date type, checked by going to columns in schema section)
select *
from layoffs_copy2;

#outputs all the dates (uses backticks because date is a function so this way you can call the column name without confusion)
select `date`
from layoffs_copy2;

#updating the date to date format for the column date
update layoffs_copy2
set `date`= str_to_date(`date`,'%m/%d/%Y');

#date column is date format now but the column itself is still text, therefore this code altered the column to date data type
alter table layoffs_copy2
modify column `date` DATE;

#look at data (notices industry has blank rows and null values)
select *
from layoffs_copy2;

#previews all the data with blank and null values
select *
from layoffs_copy2
where industry IS NULL OR industry='';

#1st possible solution populate data, 2nd possible solution is leave it as is, 3rd possible solution is delete data (decided to populate data since its possible using other data within the table)
select *
from layoffs_copy2
where company='Airbnb'; 	#For example, airbnb has a blank row but also has other rows where its filled. So we can fill in the gaps to know what type of industry airbnb is in

#test example: use join to check if table has common data we could use to fill in the gaps for the industry column
select lc1.industry,lc2.industry
from layoffs_copy2 lc1 JOIN layoffs_copy2 lc2 ON lc1.company=lc2.company AND lc1.location=lc2.location
where (lc1.industry IS NULL OR lc1.industry='') AND lc2.industry IS NOT NULL; 		#blank/null vs value rows

#step1: to deal with blanks/null first turn all values into same type (change all blanks to null)
update layoffs_copy2 
set industry= NULL
where industry='';

#check result
select *
from layoffs_copy2
where industry IS NULL OR industry='';

#step 2: update industry column to fill in the gaps using common data
update layoffs_copy2 lc1 JOIN layoffs_copy2 lc2 ON lc1.company=lc2.company AND lc1.location=lc2.location
set lc1.industry=lc2.industry										 #null rows get populated with similar rows that have values
where lc1.industry IS NULL AND lc2.industry IS NOT NULL;

#check result (3 values were filled but 1 value, bally company, wasnt since there were no other common rows that had an industry value)
select *
from layoffs_copy2
where industry IS NULL OR industry='';

#check results to deal with more errors (other columns had null values but I didnt try to populate it since there is no data that can help with it. So instead we want to delete unnecessary columns and rows)
select *
from layoffs_copy2;

#showing all rows with null values with no way to populate them
select *
from layoffs_copy2
where total_laid_off IS NULL AND percentage_laid_off IS NULL;

#delete the unnecessary rows
delete from layoffs_copy2
where total_laid_off IS NULL AND percentage_laid_off IS NULL;

#check results
select *
from layoffs_copy2
where total_laid_off IS NULL AND percentage_laid_off IS NULL;

#look for more errors (delete unnecessary columns. row_num isnt needed since we already dealt with all the duplicates)
select *
from layoffs_copy2;

#drop the unnecessary column
alter table layoffs_copy2
drop column row_num;

#check results (all done)
select *
from layoffs_copy2;

/*End result consisted of:
	1. removing duplicates
	2. standardize the data
    3. dealt with null and blank values
    4. removed any unnecessary columns and rows (for this ex its fine to delete rows but usually not)
/*
