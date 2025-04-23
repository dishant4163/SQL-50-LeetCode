-- 176 Second Highest Salary

-- # Write your MySQL query statement below

/*-- Method-1 using JOINS
SELECT MAX(e1.salary) AS SecondHighestSalary
FROM Employee e1 
INNER JOIN Employee e2
WHERE e1.salary < e2.salary;
*/


-- Method-2
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee 
WHERE salary NOT IN (
    SELECT MAX(salary) 
    FROM Employee
);

