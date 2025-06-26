--Database creation:
CREATE DATABASE retail_analysis;

--Activating the database:
USE retail_analysis;

--Creating a Table to Hold CSV Data:
CREATE TABLE online_retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice FLOAT,
    CustomerID INT,
    Country VARCHAR(50)
);

--Loading CSV File into SQL Table:
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/OnlineRetail_Cleaned.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

--Cleaning the Data:
DELETE FROM online_retail
WHERE CustomerID IS NULL;

--removing duplicates:
DELETE FROM online_retail
WHERE (InvoiceNo, StockCode, InvoiceDate) IN (
    SELECT InvoiceNo, StockCode, InvoiceDate
    FROM (
        SELECT InvoiceNo, StockCode, InvoiceDate,
               ROW_NUMBER() OVER (PARTITION BY InvoiceNo, StockCode, InvoiceDate ORDER BY InvoiceNo) AS rn
        FROM online_retail
    ) AS t
    WHERE rn > 1
);

--Calculating Total Revenue & Profit:
SELECT 
    StockCode,
    SUM(Quantity * UnitPrice) AS TotalRevenue,
    SUM(Quantity * UnitPrice) * 0.25 AS EstimatedProfit
FROM online_retail
GROUP BY StockCode;
ORDER BY TotalRevenue DESC;
