# Write your MySQL query statement below
# SELECT *, count(accepter_id)
# from requestAccepted
# group by requester_id;
with users as (
select requester_id as user
from RequestAccepted
union all
select accepter_id as user
from RequestAccepted)

select user as id, count(user) as num
from users
group by user
order by num desc limit 1