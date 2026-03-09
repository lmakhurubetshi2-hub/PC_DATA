
SELECT * FROM [PC_SalesDb].[dbo].[laptops_data]

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.

SELECT COUNT(*) AS TOTAL_NO_OF_SALES_RECORDS
FROM [PC_SalesDb].[dbo].[laptops_data]

-- 2. Count the number of sales per Continent.

SELECT CONTINENT,
COUNT(*) AS NO_OF_SALES_PER_CONTINENT
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Continent

-- 3. Count the number of sales per Country or State.

SELECT Country_or_State,
COUNT(*) AS NO_OF_SALES_PER_Country_or_State
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Country_or_State
Order by NO_OF_SALES_PER_Country_or_State desc

-- 4. List all distinct Shop Name values.

SELECT DISTINCT Shop_Name
FROM [PC_SalesDb].[dbo].[laptops_data]


-- 5. Find the average Sale Price.

SELECT AVG(SALE_PRICE) AS AVG_PRICE
FROM [PC_SalesDb].[dbo].[laptops_data]


-- 6. Find the highest and lowest Sale Price.

SELECT MAX(SALE_PRICE) AS HIGHEST, MIN(SALE_PRICE) AS LOWEST
FROM [PC_SalesDb].[dbo].[laptops_data]


-- 7. Count the number of sales by Payment Method.

SELECT Payment_Method,
COUNT(*) AS NUMBEROFSALES
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Payment_Method


-- 8. Count the number of sales by Channel (Online vs Offline).

SELECT Channel,
COUNT(*) AS ONLINEVSOFFLINE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Channel


-- 9. Count the number of sales by Priority level.

SELECT Priority,
COUNT(*) AS Prioty_level
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Priority


-- 10. Count the number of distinct PC Make values.

SELECT COUNT (DISTINCT [PC_Make]) AS PC_MAKE_VALUES
FROM [PC_SalesDb].[dbo].[laptops_data]