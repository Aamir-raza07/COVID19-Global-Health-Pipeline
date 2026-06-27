CREATE DATABASE covid_db;
USE covid_db;

CREATE TABLE covid_metrics (
    Country_Region VARCHAR(100),
    Confirmed INT,
    Deaths INT,
    Recovered INT,
    Active INT,
    New_cases INT,
    New_deaths INT,
    New_recovered INT,
    Deaths___100_Cases DECIMAL(10,2),
    Recovered___100_Cases DECIMAL(10,2),
    Deaths___100_Recovered VARCHAR(50),
    Confirmed_last_week INT,
    1_week_change INT,
    1_week___increase DECIMAL(10,2),
    WHO_Region VARCHAR(50)
);

-- Run after importing the data to verify the count
SELECT COUNT(*) AS Total_Records_Loaded FROM covid_metrics;


-- Global KPI Summary
SELECT 
    SUM(Confirmed) AS Global_Total_Cases,
    SUM(Deaths) AS Global_Total_Deaths,
    SUM(Recovered) AS Global_Total_Recovered,
    ROUND((SUM(Deaths) * 100.0 / SUM(Confirmed)), 2) AS Global_Death_Rate
FROM covid_metrics;


-- Regional Analysis (WHO Region Breakdown)

SELECT 
    WHO_Region,
    SUM(Confirmed) AS Regional_Total_Cases,
    SUM(Deaths) AS Regional_Total_Deaths,
    ROUND(AVG(Deaths___100_Cases), 2) AS Average_Death_Rate
FROM covid_metrics
GROUP BY WHO_Region
ORDER BY Regional_Total_Cases DESC;















