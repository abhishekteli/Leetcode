# Write your MySQL query statement below

with order_2019 as
(select buyer_id, count(order_id) as orders_in_2019 from Orders
where order_date like '2019%'
group by buyer_id)

select user_id as buyer_id, join_date, coalesce(orders_in_2019, 0) as orders_in_2019
from Users left join order_2019
on Users.user_id = order_2019.buyer_id
