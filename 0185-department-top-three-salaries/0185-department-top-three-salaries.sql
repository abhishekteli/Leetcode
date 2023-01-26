# Write your MySQL query statement below
with emp_dept as (
select distinct b.name as Department ,a.name as Employee, a.salary as Salary
from Employee a join Department b 
on a.departmentId = b.id
)

select new_emp.Department, new_emp.Employee, new_emp.Salary 
from (
select Department, Employee, Salary, DENSE_RANK() OVER(PARTITION BY Department ORDER BY SALARY DESC) as sal 
from emp_dept) as new_emp
where new_emp.sal < 4
