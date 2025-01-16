-- LeetCode 197. Rising Temperature
-- # Write your MySQL query statement below


-- Soln-1
SELECT a.id
FROM Weather a, Weather b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1
AND a.temperature > b.temperature;


-- Soln-2
SELECT a.id
FROM Weather a
JOIN Weather b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1
AND a.temperature > b.temperature;


-- Soln-3
SELECT a.id
FROM Weather a
JOIN Weather b
ON DATEDIFF(a.recordDate, b.recordDate) = 1
AND a.temperature > b.temperature;


-- Soln-4
SELECT a.id
FROM Weather a
JOIN Weather b
WHERE SUBDATE(a.recordDate, 1) = b.recordDate
AND a.temperature > b.temperature;


-- Soln-5
SELECT a.id
FROM Weather a
JOIN Weather b
ON SUBDATE(a.recordDate, 1) = b.recordDate
AND a.temperature > b.temperature;