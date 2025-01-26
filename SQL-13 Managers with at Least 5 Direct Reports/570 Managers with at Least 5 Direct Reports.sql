-- LeetCode 570. Managers with at Least 5 Direct Reports

-- # Write your MySQL query statement below

SELECT a.name
FROM Employee a
INNER JOIN Employee b -- we can use INNER JOIN as well as JOIN
ON a.id = b.managerId
GROUP BY b.managerId
HAVING COUNT(b.managerId) >= 5;



-- Another Way

SELECT name 
FROM Employee 
WHERE id IN
    (SELECT managerId 
        FROM Employee 
        GROUP BY managerId 
        HAVING COUNT(*) >= 5
    )


-- OR


SELECT a.name
FROM Employee a
JOIN Employee b
WHERE a.id = b.managerId
GROUP BY b.managerId
HAVING COUNT(*) >= 5;

