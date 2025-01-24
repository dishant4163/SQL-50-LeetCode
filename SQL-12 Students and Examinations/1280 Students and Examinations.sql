-- LeetCode 1280. Students and Examinations

-- # Write your MySQL query statement below

SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students AS stu
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations e AS
ON stu.student_id = e.student_id
AND e.subject_name = sub.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, stu.student_name;



-- Another Way


SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(e.student_id) AS attended_exams
FROM Students AS stu
INNER JOIN Subjects AS sub
LEFT JOIN Examinations AS e
ON (stu.student_id = e.student_id AND sub.subject_name = e.subject_name)
GROUP BY stu.student_id, sub.subject_name
ORDER BY student_id, subject_name;
