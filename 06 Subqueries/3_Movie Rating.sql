-- 1341 Movie Rating

-- # Write your MySQL query statement below

-- Method-1 Solving via Merging/JOIN Tables using USING SQL clause instead of ON in JOINS
-- INNER JOIN
( SELECT name AS results
FROM Users
INNER JOIN MovieRating USING(user_id)
GROUP BY user_id
ORDER BY COUNT(rating) DESC, name
LIMIT 1 )

UNION ALL

( SELECT title AS results
FROM Movies
INNER JOIN MovieRating USING(movie_id)
WHERE MONTH(created_at) = '02' AND YEAR(created_at) = '2020'
GROUP BY title
ORDER BY AVG(rating) DESC , title
LIMIT 1 )

/* -- NOTE:-
-> UNION: In this duplicates entries are not allowed. It is slow.
-> UNION ALL: In this duplicates entries are allowed. It is fast.
*/





-- Method-2 LEFT JOIN 

( SELECT u.name AS results
FROM Users u
LEFT JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY COUNT(u.user_id) DESC , u.name
LIMIT 1 )

UNION ALL

( SELECT m.title AS results
FROM Movies m
LEFT JOIN MovieRating mr
ON m.movie_id = mr.movie_id
WHERE EXTRACT(YEAR_MONTH from created_at) = 202002
GROUP BY m.title
ORDER BY AVG(mr.rating) DESC , m.title
LIMIT 1 )

