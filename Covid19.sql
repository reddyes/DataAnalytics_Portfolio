select *
from Portfolio..covid_deaths
order by 3,4;

--select *
--from Portfolio..covid_vaccine
--order by 3,4

--select data that gives overview of covid deaths

select location,date,population,total_cases,total_deaths,new_cases
from Portfolio..covid_deaths
order  by 1,2;

--selecting and comparing total deaths and total cases 
-- showing likelyhood of dying if you contract covid country wise

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as DeathsPercentage
from Portfolio..covid_deaths
where location like '%india%'
order by 1,2;

-- selecting and comparing total cases to population
-- shows what percentage of population got covid
select location,date,population,total_cases,total_deaths,(total_cases/population)*100 as CasesPercentage
from Portfolio..covid_deaths
where location like '%india%'
order by 1,2;