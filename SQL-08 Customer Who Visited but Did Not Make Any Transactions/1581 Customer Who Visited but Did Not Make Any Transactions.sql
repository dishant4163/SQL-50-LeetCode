-- LeetCode 1581 Customer Who Visited but Did Not Make Any Transactions

-- # Write your MySQL query statement below

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON t.visit_id = v.visit_id
WHERE t.transactions_id IS NULL
GROUP BY customer_id; 

-- aggregate function always goes with group by 
-- here customer_id is define before COUNT aggregate function
