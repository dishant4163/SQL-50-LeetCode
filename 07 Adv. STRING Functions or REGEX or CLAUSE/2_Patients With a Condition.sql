-- 1527 Patients With a Condition

-- # Write your MySQL query statement below

SELECT *
FROM Patients
WHERE conditions LIKE ('DIAB1%') 
OR conditions LIKE ('% DIAB1%');


-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- The percent sign % represents zero, one, or multiple characters