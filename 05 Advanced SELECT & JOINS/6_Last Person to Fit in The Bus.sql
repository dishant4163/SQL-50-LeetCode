-- 1204 Last Person to Fit in The Bus

-- # Write your MySQL query statement below

SELECT q1.person_name
FROM Queue q1
INNER JOIN Queue q2
ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1;
