-- 1517 Find Users With Valid E-Mails

-- # Write your MySQL query statement below

SELECT * 
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$';

-- Another way to write REGEXP syntax for period(.), -
-- REGEXP '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode[.]com$' here we use "\" for '.' and '-'


-- NOTE REGEXP stands for Regular Expression Pattern
-- REGEXP start from '^' means carrot symbol
-- REGEXP ends with '$' dollar symbol
-- REGEXP  is always written in single-inverted comma '^  $'
