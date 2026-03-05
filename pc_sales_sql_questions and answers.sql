
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

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


-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

SELECT SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

SELECT SUM(SALE_PRICE - Cost_Price) AS TOTAL_PROFIT
FROM [PC_SalesDb].[dbo].[laptops_data]

-- 13. Find the average Discount Amount.

SELECT AVG(Discount_Amount) AS AVG_Discount_Amount
FROM [PC_SalesDb].[dbo].[laptops_data]

SELECT TOP 5 * FROM [PC_SalesDb].[dbo].[laptops_data]


-- 14. Calculate total Finance Amount issued.

SELECT SUM(Finance_Amount) AS TOTAL_Finance_Amount_issued
FROM [PC_SalesDb].[dbo].[laptops_data]

-- 15. Find total revenue per PC Make.

SELECT PC_Make
     ,SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY PC_Make

-- 16. Find average Sale Price per Storage Type.

SELECT Storage_Type
     ,AVG(SALE_PRICE) AS AVG_SALE_PRICE_PER_STORAGE_TYPE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Storage_Type

-- 17. Calculate total revenue per Shop Name.

SELECT Shop_Name
     ,SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Shop_Name

-- 18. Calculate total revenue per Sales Person Name.

SELECT Sales_Person_Name
     ,SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Sales_Person_Name

-- 19. Find average Credit Score per Payment Method.

SELECT Payment_Method
     ,AVG(Credit_Score) AS AVG_CREDIT_SCORE_PER_PAY_METHOD
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.

SELECT Sales_Person_Department
     ,SUM(Cost_of_Repairs) AS TOTAL_COST_OF_REPAIRS
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Sales_Person_Department

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

