-- 2356 Number of Unique Subjects Taught by Each Teacher

-- # Write your MySQL query statement below

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
