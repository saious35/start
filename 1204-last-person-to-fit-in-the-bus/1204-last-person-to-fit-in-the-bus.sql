# Write your MySQL query statement below
SELECT person_name
FROM (SELECT
        person_name, turn, SUM(weight) OVER(ORDER BY turn) AS Sum_Weight
      FROM
        Queue) p1
WHERE Sum_Weight <= 1000
ORDER BY turn DESC
LIMIT 1;