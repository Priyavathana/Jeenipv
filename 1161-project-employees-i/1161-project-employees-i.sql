/* Write your T-SQL query statement below */

select p.project_id ,
round(cast(sum(e.experience_years) as decimal(10,2))/count(p.employee_id),2) as average_years
from project p
left join employee e
on p.employee_id = e.employee_id
group by p.project_id;

