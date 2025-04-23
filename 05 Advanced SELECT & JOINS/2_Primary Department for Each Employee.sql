-- 1789 Primary Department for Each Employee

-- # Write your MySQL query statement below

/*-- Method-1 using UNION
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
GROUP BY employee_id

UNION

SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(employee_id) = 1;

*/


-- Method-2 using SubQuery 
SELECT DISTINCT employee_id, department_id
FROM Employee
WHERE employee_id IN (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
) OR primary_flag = 'Y'
ORDER BY employee_id ASC;
