-- 1070 Product Sales Analysis III

-- # Write your MySQL query statement below

SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year) AS first_yr
    FROM Sales
    GROUP BY product_id
);
