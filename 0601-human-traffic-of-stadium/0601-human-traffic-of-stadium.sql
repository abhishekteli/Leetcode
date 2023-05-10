# Write your MySQL query statement below
with cte as (
SELECT * , ROW_NUMBER() OVER (ORDER BY visit_date) as Row_Num,
id -  ROW_NUMBER() OVER (ORDER BY visit_date) as grp
FROM stadium  
WHERE people >= 100
),
cte2 as (
select grp
from cte 
group by grp
having count(grp) >= 3
) 
select id, visit_date, people 
from cte
where grp in (select grp from cte2)