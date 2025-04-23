-- 1683 Invalid Tweets

-- # Write your MySQL query statement below

SELECT tweet_id FROM Tweets
WHERE LENGTH(content) > 15; -- more optimised as compare too CHAR_LENGTH

-- Note:
-- LENGTH SQL Functions finds string length in bytes
-- CHAR_LENGTH SQL functions finds string length in char