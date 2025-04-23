-- 1327 List the Products Ordered in a Period

-- # Write your MySQL query statement below


/*-- Method-1 JOINS with USING clause

SELECT product_name , SUM(unit) AS unit
FROM Products 
INNER JOIN Orders USING (product_id)
WHERE MONTH(order_date) = 2 AND YEAR(order_date) = 2020
GROUP BY product_name
HAVING SUM(unit) >= 100;

*/


-- Method-2 JOINS with ON clause

SELECT p.product_name , SUM(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o
ON p.product_id = o.product_id
WHERE EXTRACT(YEAR_MONTH FROM o.order_date) = '202002'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;
