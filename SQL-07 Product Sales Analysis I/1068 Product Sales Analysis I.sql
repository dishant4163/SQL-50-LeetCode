-- LeetCode 1068 Product Sales Analysis I

-- # Write your MySQL query statement below

SELECT product_name, year, price
FROM Sales as tab1
LEFT JOIN Product as tab2
ON tab1.product_id = tab2.product_id;
