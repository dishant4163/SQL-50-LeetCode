-- 1633 Percentage of Users Attended a Contest

-- # Write your MySQL query statement below

SELECT contest_id, 
 ROUND(COUNT(DISTINCT user_id)*100/(SELECT COUNT( user_id ) FROM USERS ), 2)
  AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;
