# # Write your MySQL query statement below
# with players as (
# select count(distinct a.player_id) as selected_players
#     from activity a, activity b
#     where dateadd(day,1,a.event_date) = b.event_date
#     and a.player_id = b.player_id
#     order by a.event_date, b.event_date
# ),
# total_players as (select count(distinct player_id) as total_player from activity)

# select round(cast(a.selected_players as float)/ cast(b.total_player as float), 2) as fraction
# from players a, total_players b;


with cte as (
select player_id, min(event_date) as first_login
from activity
group by player_id),

cte2 as (
select *, date_add(first_login, interval 1 day) as next_date
from cte)

select 
round((select count(distinct player_id)
from activity
where (player_id, event_date) in (select player_id,next_date from cte2)) / (select count(distinct player_id) from activity),2) as fraction