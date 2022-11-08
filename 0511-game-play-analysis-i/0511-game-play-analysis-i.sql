# Write your MySQL query statement below

select * from  (
select distinct player_id, event_date as first_login
from Activity
order by event_date) as new_activity
group by player_id