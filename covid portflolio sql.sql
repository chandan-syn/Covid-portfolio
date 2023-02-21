
Select *
From CovidDeaths
Where continent is not null 
order by 3,4

-- Select Data that we are going to be starting with

Select Location, date, total_cases, new_cases, total_deaths
From CovidDeaths
Where continent is not null 
order by 1,2



-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in your country

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From CovidDeaths
Where location like '%states%'
and continent is not null 
order by 1,2


-- Total Cases vs Population
-- Shows what percentage of population infected with Covid

Select Location, date, total_deaths, total_cases,  (total_cases/total_deaths)*100 as PercentPopulationInfected
From CovidDeaths
order by 1,2



-- GLOBAL NUMBERS

Select SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From  CovidDeaths
--Where location like '%states%'
where continent is not null 
--Group By date
order by 1,2





	