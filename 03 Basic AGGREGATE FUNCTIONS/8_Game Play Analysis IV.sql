-- 550 Game Play Analysis IV

-- # Write your MySQL query statement below

-- Method-1 (prefer this)
SELECT 
 ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY) ) IN (
-- write SubQuery to slove this
  SELECT player_id, MIN(event_date) AS first_login
  FROM Activity
  GROUP BY player_id
);



/*-- Method-2

SELECT
 ROUND(SUM(player_login) / COUNT(DISTINCT player_id), 2) AS fraction
FROM
(SELECT player_id, 
DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 AS player_login
FROM Activity) AS temp_table
*/

-- Note-: 
-- PARTITION BY clause is used to partition rows of the table into groups.
-- It is always used indsie OVER() clause.
