-- 584 Find Customer Referee

--# Write your MySQL query statement below


SELECT name FROM Customer

-- Note: by default SQL-Query does not Return NULL
-- Approach-1
-- WHERE referee_id IS NULL OR referee_id != 2;


-- Approach-2 (using IFNULL Function)
WHERE IFNULL(referee_id, 0) <> 2;

-- IFNULL is a function that converts any attribute NULL value to Zero
-- <> it is same as  != 
