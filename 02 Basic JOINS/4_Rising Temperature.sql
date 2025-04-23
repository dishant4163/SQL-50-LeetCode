-- 197 Rising Temperature 

-- # Write your MySQL query statement below

SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2

/*-- Approach-1 using DATEDIFF
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1 -- we can use both WHERE & ON
AND w1.temperature > w2.temperature;
*/

-- Approach-2 using SUBDATE
WHERE SUBDATE(w1.recordDate, 1) = w2.recordDate
AND w1.temperature > w2.temperature;

