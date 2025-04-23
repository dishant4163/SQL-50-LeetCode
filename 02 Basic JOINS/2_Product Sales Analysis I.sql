-- 1068 Product Sales Analysis I

-- # Write your MySQL query statement below

SELECT p.product_name, s.year, s.price
FROM Sales s
LEFT JOIN Product p

-- Approach-1 
-- ON s.product_id = p.product_id;


-- Approach-2 using USING SQL query
USING(product_id);