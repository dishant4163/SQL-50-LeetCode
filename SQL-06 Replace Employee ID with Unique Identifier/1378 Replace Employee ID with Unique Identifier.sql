-- LeetCode. 1378 Replace Employee ID with Unique Identifier

-- # Write your MySQL query statement below

SELECT unique_id, name
FROM Employees AS tab1
LEFT JOIN EmployeeUNI AS tab2
ON tab1.id = tab2.id;
