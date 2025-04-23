-- 1378 Replace Employee ID with The Unique Identifier 

-- # Write your MySQL query statement below

SELECT eu.unique_id AS unique_id, e.name AS name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;