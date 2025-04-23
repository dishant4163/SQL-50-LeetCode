-- 570 Managers with At Least 5 Direct Reports

-- # Write your MySQL query statement below

SELECT a.name
FROM Employee a
INNER JOIN Employee b
ON a.id = b.managerId
GROUP BY b.managerId
HAVING COUNT(b.managerId) >= 5;
