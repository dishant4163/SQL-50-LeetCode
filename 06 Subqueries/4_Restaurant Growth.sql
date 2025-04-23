-- 1321 Restaurant Growth

-- # Write your MySQL query statement below


SELECT c.visited_on , 
    (
        SELECT SUM(amount)
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on , INTERVAL 6 DAY) #means 1-jan
        AND c.visited_on # this give 7-jan, this means visited on b/w 1 and 7 jan
    ) AS amount ,
    ROUND( (
        SELECT SUM(amount) / 7
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on , INTERVAL 6 DAY) #means 1-jan
        AND c.visited_on # this give 7-jan, this means visited on b/w 1 and 7 jan
    ), 2) AS average_amount

FROM Customer c
WHERE visited_on >= (
    SELECT DATE_ADD( MIN(visited_on) , INTERVAL 6 DAY)
    FROM Customer
)
GROUP BY c.visited_on
ORDER BY c.visited_on ASC;