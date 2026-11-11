select*
from layoff_stagging3;
-- 1,sum of total laid off by country
select country,sum(total_laid_off) as total_laid_off
from layoff_stagging3
where country is not null
group by country
order by total_laid_off desc;


-- 2,sum of funds_raised_in_millions by country
select country,sum(funds_raised_millions) as total_funds_raised
from layoff_stagging3
where country is not null
group by country
order by total_funds_raised desc
;

-- 3,stages with the highest no of countries
select stage,count(distinct country) as total_country
from layoff_stagging3
where stage is not null
and country is not null
group by stage
order by total_country desc;


-- 4,top 10 countries that raised the highest fund
select country,sum(funds_raised_millions) as total_funds_raised
from layoff_stagging3
where country is not null
group by country
order by total_funds_raised desc
limit 10