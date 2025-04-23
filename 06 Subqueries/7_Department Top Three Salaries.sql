-- 185 Department Top Three Salaries

-- # Write your MySQL query statement below

/*-- Method-1 using DENSE_RANK() 

SELECT Department , Employee , Salary
FROM (
SELECT d.name AS Department , e.name AS Employee , e.salary AS Salary ,
DENSE_RANK() OVER( PARTITION BY d.name ORDER BY e.salary DESC) AS ranks
FROM Employee e
LEFT JOIN Department d
ON e.departmentId = d.id
) AS temp
WHERE ranks <= 3;
*/



-- Method-2

SELECT d.name AS Department , e1.name AS Employee , e1.salary AS Salary
FROM Employee e1
INNER JOIN Department d
ON e1.departmentId = d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT (e2.Salary))
    FROM Employee e2
    WHERE e2.Salary > e1.Salary AND
    e1.departmentId = e2.departmentId
)
