-- 1907 Count Salary Categories

-- # Write your MySQL query statement below


/*-- Method-1
SELECT "Low Salary" AS category,
 SUM( IF(income < 20000, 1, 0)) AS accounts_count
FROM Accounts
UNION 
SELECT "Average Salary" AS category,
 SUM( IF(income BETWEEN 20000 AND 50000, 1, 0)) AS accounts_count
FROM Accounts
UNION
SELECT "High Salary" AS category,
 SUM( IF(income > 50000, 1, 0)) AS accounts_count
FROM Accounts;

*/



-- Method-2
SELECT "Low Salary" AS category, COUNT(income) AS accounts_count
FROM Accounts
WHERE income < 20000
UNION
SELECT "Average Salary" AS category, COUNT(income) AS accounts_count
FROM Accounts
WHERE income >= 20000 AND income <= 50000
UNION
SELECT "High Salary" AS category, COUNT(income) AS accounts_count
FROM Accounts
WHERE income > 50000;
