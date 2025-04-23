-- 610 Triangle Judgement

-- # Write your MySQL query statement below

/*-- Method-1 using " CASE WHEN THEN ELSE END "

SELECT x, y, z,
CASE WHEN x+y > z AND y+z > x AND x+z > y THEN 'Yes' ELSE 'No' END AS triangle
FROM Triangle;

*/


-- Method-2 
SELECT *,
 IF (x+y > z AND y+z > x AND x+z > y, 'Yes', 'No') AS triangle
FROM Triangle;
