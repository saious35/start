# Write your MySQL query statement below

select project_id, round(avg(experience_years),2) as average_years 
from Project P
left JOIN Employee E ON P.employee_id = E.employee_id
group by project_id
