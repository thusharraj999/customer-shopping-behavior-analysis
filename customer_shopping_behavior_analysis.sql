CREATE DATABASE IF NOT EXISTS customer_shopping_analysis;

SHOW DATABASES;

USE customer_shopping_analysis;

USE customer_shopping_analysis;

SHOW TABLES;

SELECT COUNT(*) AS total_records
FROM customer_shopping_behavior_cleaned;

DESCRIBE customer_shopping_behavior_cleaned;

SELECT
    COUNT(*) AS total_records,

    SUM(CASE
        WHEN `Review Rating` IS NULL THEN 1
        ELSE 0
    END) AS missing_review_ratings,

    SUM(CASE
        WHEN `Customer ID` IS NULL THEN 1
        ELSE 0
    END) AS missing_customer_ids,

    SUM(CASE
        WHEN `Purchase Amount (USD)` IS NULL THEN 1
        ELSE 0
    END) AS missing_purchase_amounts

FROM customer_shopping_behavior_cleaned;

SELECT
    COUNT(`Customer ID`) AS Total_Customers,

    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,

    ROUND(
        AVG(`Purchase Amount (USD)`), 2
    ) AS Average_Purchase_Amount,

    ROUND(
        MIN(`Purchase Amount (USD)`), 2
    ) AS Minimum_Purchase_Amount,

    MAX(`Purchase Amount (USD)`) AS Maximum_Purchase_Amount,

    ROUND(
        AVG(Age), 2
    ) AS Average_Customer_Age,

    ROUND(
        AVG(`Review Rating`), 2
    ) AS Average_Review_Rating

FROM customer_shopping_behavior_cleaned;

SELECT
    Category,

    COUNT(`Customer ID`) AS Total_Customers,

    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,

    ROUND(
        AVG(`Purchase Amount (USD)`), 2
    ) AS Average_Purchase_Amount,

    ROUND(
        SUM(`Purchase Amount (USD)`) * 100.0 /
        (SELECT SUM(`Purchase Amount (USD)`)
         FROM customer_shopping_behavior_cleaned),
        2
    ) AS Purchase_Contribution_Percentage

FROM customer_shopping_behavior_cleaned

GROUP BY Category

ORDER BY Total_Purchase_Amount DESC;


SELECT
    `Item Purchased`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY `Item Purchased`
ORDER BY Total_Customers DESC;

SELECT
    `Age Group`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(AVG(`Review Rating`), 2) AS Average_Review_Rating
FROM customer_shopping_behavior_cleaned
GROUP BY `Age Group`
ORDER BY Total_Purchase_Amount DESC;

SELECT
    `Subscription Status`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(AVG(`Review Rating`), 2) AS Average_Review_Rating
FROM customer_shopping_behavior_cleaned
GROUP BY `Subscription Status`
ORDER BY Total_Customers DESC;



SELECT
    `Payment Method`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        (SELECT COUNT(*) FROM customer_shopping_behavior_cleaned),
        2
    ) AS Customer_Percentage
FROM customer_shopping_behavior_cleaned
GROUP BY `Payment Method`
ORDER BY Total_Customers DESC;



SELECT
    `Frequency of Purchases`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        (SELECT COUNT(*) FROM customer_shopping_behavior_cleaned),
        2
    ) AS Customer_Percentage
FROM customer_shopping_behavior_cleaned
GROUP BY `Frequency of Purchases`
ORDER BY Total_Customers DESC;



SELECT
    Season,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(
        SUM(`Purchase Amount (USD)`) * 100.0 /
        (SELECT SUM(`Purchase Amount (USD)`)
         FROM customer_shopping_behavior_cleaned),
        2
    ) AS Purchase_Contribution_Percentage
FROM customer_shopping_behavior_cleaned
GROUP BY Season
ORDER BY Total_Purchase_Amount DESC;


SELECT
    `Shipping Type`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        (SELECT COUNT(*) FROM customer_shopping_behavior_cleaned),
        2
    ) AS Customer_Percentage
FROM customer_shopping_behavior_cleaned
GROUP BY `Shipping Type`
ORDER BY Total_Customers DESC;


SELECT
    Location AS State,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY Location
ORDER BY Total_Purchase_Amount DESC
LIMIT 10;



SELECT
    Category,
    COUNT(`Review Rating`) AS Total_Reviews,
    ROUND(AVG(`Review Rating`), 2) AS Average_Review_Rating,
    MIN(`Review Rating`) AS Minimum_Rating,
    MAX(`Review Rating`) AS Maximum_Rating
FROM customer_shopping_behavior_cleaned
GROUP BY Category
ORDER BY Average_Review_Rating DESC;



SELECT
    `Discount Applied`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(AVG(`Review Rating`), 2) AS Average_Review_Rating
FROM customer_shopping_behavior_cleaned
GROUP BY `Discount Applied`
ORDER BY Total_Customers DESC;


SELECT
    `Age Group`,
    Category,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY
    `Age Group`,
    Category
ORDER BY
    `Age Group`,
    Total_Customers DESC;




SELECT
    Color,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY Color
ORDER BY Total_Customers DESC;


SELECT
    `Age Group`,
    Gender,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY
    `Age Group`,
    Gender
ORDER BY
    `Age Group`,
    Average_Purchase_Amount DESC;



SELECT
    `Item Purchased`,
    COUNT(`Customer ID`) AS Total_Customers,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY `Item Purchased`
ORDER BY Average_Purchase_Amount DESC
LIMIT 10;


SELECT
    `Item Purchased`,
    COUNT(`Customer ID`) AS Total_Customers,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY `Item Purchased`
ORDER BY Average_Purchase_Amount ASC
LIMIT 10;

SELECT
    `Previous Purchases`,
    COUNT(`Customer ID`) AS Total_Customers,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY `Previous Purchases`
ORDER BY `Previous Purchases` DESC;


SELECT
    `Purchase Category`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        (SELECT COUNT(*) FROM customer_shopping_behavior_cleaned),
        2
    ) AS Customer_Percentage
FROM customer_shopping_behavior_cleaned
GROUP BY `Purchase Category`
ORDER BY
    CASE `Purchase Category`
        WHEN 'Low' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'High' THEN 3
        WHEN 'Premium' THEN 4
    END;



SELECT
    Size,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        (SELECT COUNT(*) FROM customer_shopping_behavior_cleaned),
        2
    ) AS Customer_Percentage
FROM customer_shopping_behavior_cleaned
GROUP BY Size
ORDER BY Total_Customers DESC;


SELECT
    Category,
    Size,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY Category, Size
ORDER BY Category, Total_Customers DESC;


SELECT
    Gender,
    `Payment Method`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY Gender, `Payment Method`
ORDER BY Gender, Total_Customers DESC;


SELECT
    Season,
    `Shipping Type`,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY Season, `Shipping Type`
ORDER BY Season, Total_Customers DESC;

SELECT
    Season,
    Category,
    COUNT(`Review Rating`) AS Total_Reviews,
    ROUND(AVG(`Review Rating`), 2) AS Average_Rating,
    MIN(`Review Rating`) AS Minimum_Rating,
    MAX(`Review Rating`) AS Maximum_Rating
FROM customer_shopping_behavior_cleaned
GROUP BY Season, Category
ORDER BY Season, Average_Rating DESC;

SELECT
    `Age Group`,
    `Frequency of Purchases`,
    COUNT(`Customer ID`) AS Total_Customers,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        SUM(COUNT(`Customer ID`)) OVER (PARTITION BY `Age Group`),
        2
    ) AS Percentage_Within_Age_Group,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
GROUP BY
    `Age Group`,
    `Frequency of Purchases`
ORDER BY
    `Age Group`,
    Total_Customers DESC;


SELECT
    Location,
    Category,
    COUNT(`Customer ID`) AS Total_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
    ROUND(
        SUM(`Purchase Amount (USD)`) * 100.0 /
        SUM(SUM(`Purchase Amount (USD)`)) OVER (PARTITION BY Location),
        2
    ) AS Percentage_Within_State
FROM customer_shopping_behavior_cleaned
GROUP BY Location, Category
ORDER BY Location, Total_Purchase_Amount DESC;


WITH State_Category_Rank AS (
    SELECT
        Location,
        Category,
        SUM(`Purchase Amount (USD)`) AS Total_Purchase_Amount,
        RANK() OVER (
            PARTITION BY Location
            ORDER BY SUM(`Purchase Amount (USD)`) DESC
        ) AS Category_Rank
    FROM customer_shopping_behavior_cleaned
    GROUP BY Location, Category
)
SELECT
    Category,
    COUNT(*) AS Number_of_States_Ranked_First
FROM State_Category_Rank
WHERE Category_Rank = 1
GROUP BY Category
ORDER BY Number_of_States_Ranked_First DESC;


SELECT
    `Customer ID`,
    Age,
    Gender,
    Location,
    Category,
    `Item Purchased`,
    `Purchase Amount (USD)`,
    `Purchase Category`,
    `Review Rating`
FROM customer_shopping_behavior_cleaned
ORDER BY `Purchase Amount (USD)` DESC
LIMIT 10;


SELECT
    `Customer ID`,
    Age,
    Gender,
    Location,
    Category,
    `Item Purchased`,
    `Purchase Amount (USD)`,
    `Purchase Category`,
    `Review Rating`
FROM customer_shopping_behavior_cleaned
ORDER BY `Purchase Amount (USD)` ASC
LIMIT 10;


SELECT
    CASE
        WHEN `Review Rating` >= 4.0 THEN 'Positive'
        WHEN `Review Rating` >= 3.0 THEN 'Neutral'
        ELSE 'Negative'
    END AS Rating_Category,
    COUNT(`Customer ID`) AS Total_Customers,
    ROUND(
        COUNT(`Customer ID`) * 100.0 /
        (SELECT COUNT(`Review Rating`)
         FROM customer_shopping_behavior_cleaned),
        2
    ) AS Percentage,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase_Amount
FROM customer_shopping_behavior_cleaned
WHERE `Review Rating` IS NOT NULL
GROUP BY Rating_Category
ORDER BY
    CASE Rating_Category
        WHEN 'Positive' THEN 1
        WHEN 'Neutral' THEN 2
        WHEN 'Negative' THEN 3
    END;