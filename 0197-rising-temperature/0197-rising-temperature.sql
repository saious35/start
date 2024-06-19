# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1
join Weather w2  on w1.recordDate = date_add(w2.recordDate, interval 1 day)

where w1.temperature > w2.temperature

