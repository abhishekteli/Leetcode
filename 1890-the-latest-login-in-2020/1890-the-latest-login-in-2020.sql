# Write your MySQL query statement below
select *
from (select distinct user_id, time_stamp as last_stamp
from Logins
where time_stamp like "2020%"
order by time_stamp desc) as new_activity
group by user_id
