-- 1141 User Activity for The Past 30 Days I

-- # Write your MySQL query statement below

/*-- Method-1
SELECT activity_date AS day,
 COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE
 activity_date BETWEEN DATE_SUB('2019-07-27' , INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY day;

*/



-- Method-2 (optimal)
SELECT activity_date AS day,
 COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date >= '2019-06-28' AND activity_date <= '2019-07-27'
GROUP BY activity_date;
