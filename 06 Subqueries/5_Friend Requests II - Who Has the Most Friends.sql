-- 602 Friend Requests II: Who Has the Most Friends

-- # Write your MySQL query statement below

SELECT id , COUNT(id) AS num   -- we can also do COUNT(*)
FROM (
 SELECT requester_id AS id 
FROM RequestAccepted

UNION ALL

SELECT accepter_id AS id 
FROM RequestAccepted ) AS temp
GROUP BY id
ORDER BY num DESC
LIMIT 1;
