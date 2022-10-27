# Write your MySQL query statement below
select Employees.employee_id 
from Employees left join Salaries
on Employees.employee_id = Salaries.employee_id
where salary is null
union all
select Salaries.employee_id 
from Employees right join Salaries
on Employees.employee_id = Salaries.employee_id
where name is null
order by employee_id