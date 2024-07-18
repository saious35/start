# Write your MySQL query statement below
SELECT user_id
    , concat(Substring(upper(name), 1, 1), Substring(lower(name),2)) as name
FROM Users
ORDER BY user_id