# Write your MySQL query statement below
# 각 시험에 응시한 각 학생의 참여 횟
-- select
-- from Students S join Examinations E on S.student_id = E.student_id
-- join Subjects SU on E.subject_name = SU.subject_name

select s1.student_id, s1.student_name, s2.subject_name, count(e.student_id) as attended_exams
from students as s1
cross join subjects as s2
left join Examinations as e on s1.student_id = e.student_id and s2.subject_name = e.subject_name
group by s1.student_id, s1.student_name, s2.subject_name
order by s1.student_id,s2.subject_name

-- select S.student_id, S.student_name,E.subject_name,count(e.student_id) as attended_exams
-- from Students S left join Examinations E on S.student_id = E.student_id
-- group by S.student_id, S.student_name, E.subject_name