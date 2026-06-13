-- Query 1: Top 5 Products by Revenue

SELECT Product,
       SUM(Total_Sales) AS Revenue
FROM Sales
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 5;


-- Query 2: Revenue by Category

SELECT Category,
       SUM(Total_Sales) AS Revenue
FROM Sales
GROUP BY Category
ORDER BY Revenue DESC;


-- Query 3: Top 5 Cities by Revenue

SELECT City,
       SUM(Total_Sales) AS Revenue
FROM Sales
GROUP BY City
ORDER BY Revenue DESC
LIMIT 5;


-- Query 4: Monthly Revenue Analysis

SELECT strftime('%m', Order_Date) AS Month,
       SUM(Total_Sales) AS Revenue
FROM Sales
GROUP BY Month
ORDER BY Revenue DESC;


-- Query 5: Total Business Summary

SELECT
    COUNT(*) AS Total_Orders,
    SUM(Total_Sales) AS Total_Revenue,
    AVG(Total_Sales) AS Average_Order_Value
FROM Sales;