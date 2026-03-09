

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

