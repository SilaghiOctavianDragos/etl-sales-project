Business logic procedures for sales ETL project

   Dataset: superstore_clean.csv
   Author: Dragos Silaghi
   Purpose: Demonstrate SQLScript / Procedural SQL skills
   ========================================================= */

------------------------------------------------------------
-- PROCEDURA 1
-- Total Sales pe Category
------------------------------------------------------------
CREATE PROCEDURE total_sales_by_category()
LANGUAGE SQLSCRIPT
AS
BEGIN
    SELECT
        Category,
        SUM(Sales) AS TotalSales
    FROM superstore_clean
    GROUP BY Category
    ORDER BY TotalSales DESC;
END;
/

------------------------------------------------------------
-- PROCEDURA 2
-- Total Profit pe Region
------------------------------------------------------------
CREATE PROCEDURE total_profit_by_region()
LANGUAGE SQLSCRIPT
AS
BEGIN
    SELECT
        Region,
        SUM(Profit) AS TotalProfit
    FROM superstore_clean
    GROUP BY Region
    ORDER BY TotalProfit DESC;
END;
/

------------------------------------------------------------
-- PROCEDURA 3
-- Top 10 cele mai profitabile produse
------------------------------------------------------------
CREATE PROCEDURE top_10_profitable_products()
LANGUAGE SQLSCRIPT
AS
BEGIN
    SELECT
        Product_Name,
        SUM(Profit) AS TotalProfit
    FROM superstore_clean
    GROUP BY Product_Name
    ORDER BY TotalProfit DESC
    LIMIT 10;
END;
/

------------------------------------------------------------
-- PROCEDURA 4
-- Analiză Sales vs Profit pe Segment
------------------------------------------------------------
CREATE PROCEDURE sales_profit_by_segment()
LANGUAGE SQLSCRIPT
AS
BEGIN
    SELECT
        Segment,
        SUM(Sales)  AS TotalSales,
        SUM(Profit) AS TotalProfit
    FROM superstore_clean
    GROUP BY Segment
    ORDER BY TotalSales DESC;
END;
/

------------------------------------------------------------
-- PROCEDURA 5
-- Comenzi cu pierdere (negative profit)
------------------------------------------------------------
CREATE PROCEDURE loss_making_orders()
LANGUAGE SQLSCRIPT
AS
BEGIN
    SELECT
        Order_ID,
        Order_Date,
        Category,
        Sales,
        Profit
    FROM superstore_clean
    WHERE Profit < 0
    ORDER BY Profit ASC;
END;
/
