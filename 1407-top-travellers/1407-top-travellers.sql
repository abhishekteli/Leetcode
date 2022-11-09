# Write your MySQL query statement below


select name, (
    case
        when distance > 0 then distance
        else 0
    end
)as travelled_distance
from Users 
left join 
(select user_id, sum(distance) as distance
from Rides
group by user_id) as distance_table
on Users.id = distance_table.user_id
order by travelled_distance desc, name asc