# Write your MySQL query statement below
select Department.name as Department, Employee.name as Employee,  Salary
from Employee join Department 
on Employee.departmentId = Department.id
where Employee.salary = (SELECT MAX(salary) FROM Employee WHERE Employee.departmentId = Department.id)