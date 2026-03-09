
-- ADVANCED QUESTIONS

SELECT TOP 5 * FROM [PC_SalesDb].[dbo].[laptops_data]


-- 21. Calculate profit per Shop Name.

SELECT Shop_Name
      ,SUM(SALE_PRICE - Cost_Price) AS TOTAL_PROFIT_PER_SHOP
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

SELECT ((SALE_PRICE - Cost_Price)/ Sale_Price) AS PROFIT_MARGIN_PER_SALE
FROM [PC_SalesDb].[dbo].[laptops_data]


-- 23. Determine which Continent has the highest total revenue.

SELECT Continent
     ,SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Continent
ORDER BY TOTAL_REVENUE DESC

-- 24. Calculate average Sale Price per RAM size.

SELECT RAM,
       AVG(SALE_PRICE) AS AVG_RAM_SIZE_SALE_PRICE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY RAM

-- 25. Find the PC Model with the highest Sale Price.

SELECT PC_Model
     ,Sale_Price
FROM [PC_SalesDb].[dbo].[laptops_data]
ORDER BY Sale_Price DESC

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

SELECT AVG(Purchase_Date - Ship_Date) AS AVG_DELIVERY_DAYS
FROM [PC_SalesDb].[dbo].[laptops_data]


-- 27. Determine which Sales Person Department generates the highest revenue.

SELECT Sales_Person_Department
     ,SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Sales_Person_Department
ORDER BY TOTAL_REVENUE DESC

-- 28. Calculate total revenue per Storage Capacity.

SELECT Storage_Capacity
     ,SUM(SALE_PRICE) AS TOTAL_REVENUE
FROM [PC_SalesDb].[dbo].[laptops_data]
GROUP BY Storage_Capacity


-- 29. Identify sales where Sale Price is lower than PC Market Price.

SELECT SALE_PRICE
       ,PC_MARKET_PRICE
FROM [PC_SalesDb].[dbo].[laptops_data]
WHERE Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.