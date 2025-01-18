-- LeetCode 1661. Average Time of Process per Machine

-- # Write your MySQL query statement below

SELECT t1.machine_id, ROUND(AVG(t2.timestamp - t1.timestamp), 3) AS processing_time
FROM Activity t1
JOIN Activity t2
ON t1.machine_id = t2.machine_id
AND t1.process_id = t2.process_id
AND t1.timestamp < t2.timestamp
GROUP BY t1.machine_id;




-- Another Soln

SELECT t1.machine_id, ROUND(AVG(t2.timestamp - t1.timestamp), 3) AS processing_time
FROM Activity t1
JOIN Activity t2
ON t1.machine_id = t2.machine_id
AND t1.process_id = t2.process_id
AND t1.activity_type = 'start'
AND t2.activity_type = 'end'
GROUP BY t1.machine_id;
