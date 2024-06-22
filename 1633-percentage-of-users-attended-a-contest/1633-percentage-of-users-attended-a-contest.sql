# Write your MySQL query statement below
select contest_id, 
        round((count(a.contest_id)/(select count(*) from users))*100,2) percentage  
        from Register a 
group by contest_id 
order by percentage desc, contest_id asc;
