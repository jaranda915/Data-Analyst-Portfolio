-- Exploratory Data Analysis (different type of possible analysis)
select *
from layoffs_copy2;

#ex: looking at all the companies that went under/shut down
select *
from layoffs_copy2
where percentage_laid_off=1
order by total_laid_off desc;

#ex: looking at what companies had the most layoffs
select company,sum(total_laid_off)
from layoffs_copy2
group by company
order by 2 desc; #second column in select

#ex looking at the time/date this data was collected from
select min(`date`),max(`date`)
from layoffs_copy2;

#ex: looking at what industry had the most layoffs
select industry,sum(total_laid_off)
from layoffs_copy2
group by industry
order by 2 desc;

#ex: looking at what countries had the most layoffs
select country,sum(total_laid_off)
from layoffs_copy2
group by country
order by 2 desc;

#ex: looking at what year had the most layoffs
select year(`date`),sum(total_laid_off)
from layoffs_copy2
group by year(`date`)
order by 2 desc;

#real: progression of layoffs by using a rolling sum based on month and year (rolling total essentially just constatnly adds the total_laid_off over each month)
with Rolling_Total as (
select date_format(`date`,'%Y-%m') as `month`,sum(total_laid_off) as laid_off_total
from layoffs_copy2
where date_format(`date`,'%Y-%m') IS NOT NULL
group by 1
order by 1 asc
)
select `month`, laid_off_total, sum(laid_off_total) over (order by `month`) as rolling_total #partition by not needed since cte table already grouped by month
from Rolling_Total;

#real, step1: showing how many layoffs each company did per year
select company,year(`date`),sum(total_laid_off)
from layoffs_copy2
group by company,year(`date`)
order by 1 asc; 

#real, step2: rank the amount of laid off employees per year (showing what company laid off the most employees in each year by getting top 5 most emplyoee lay off for that year)
with Company_Year as (
select company,year(`date`) as years,sum(total_laid_off) as laid_off_total
from layoffs_copy2
where year(`date`) IS NOT NULL
group by company,years
), Company_Year_Rank as ( #another cte table needed in order to use ranks below
select *, dense_rank() over(partition by years order by laid_off_total desc) as ranks
from Company_Year
)
select *
from Company_Year_Rank
where ranks<=5;

/*
The argument here is that a large company with a layoff proportion of 0.05 could still show more people being laid off, then a smaller company with a layoff proportion of 0.7, 
even though this gives valuable insight that the past 3 years have hit small companies very hard
*/
#mine: shows layoff proportion. Shows which type of business got hit the hardest in proportion to their total employees (small companies got hit hardest, which is shown through seed: start of business.)
SELECT stage, ROUND(AVG(percentage_laid_off),2) as layoffs_per_stage
FROM layoffs_copy2
where stage IS NOT NULL
GROUP BY stage
ORDER BY 2 DESC;