# Write your MySQL query statement below
select distinct a.num as ConsecutiveNums 
from logs a, logs b, logs c
where a.id + 1 =  b.id and b.id + 1 = c.id and a.id < c.id
and a.num = b.num and a.num = c.num and b.num = c.num