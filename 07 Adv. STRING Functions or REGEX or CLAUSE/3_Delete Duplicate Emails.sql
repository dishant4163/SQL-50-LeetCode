-- 196 Delete Duplicate Emails

-- # Write your MySQL query statement below

-- Method-1
DELETE p1
FROM Person p1
INNER JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;


/*-- Or we can in do this thing in method-1
DELETE p2
FROM Person p1
INNER JOIN Person p2
ON p1.email = p2.email
AND p1.id < p2.id;
*/



-- Method-2 without join
DELETE p1
FROM Person p1 , Person p2
WHERE p1.email = p2.email
AND p1.id > p2.id;


/*-- Or 
DELETE p2
FROM Person p1 , Person p2
WHERE p1.email = p2.email
AND p1.id < p2.id;
*/
