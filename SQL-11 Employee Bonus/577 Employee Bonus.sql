-- LeetCode 577. Employee Bonus

-- # Write your MySQL query statement below

SELECT emp.name, b.bonus
FROM Employee emp
LEFT JOIN Bonus b
ON emp.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
