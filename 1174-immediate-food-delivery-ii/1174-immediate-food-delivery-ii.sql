# Write your MySQL query statement below
with first_order as(select *, dense_rank() over(partition by customer_id order by order_date) as first_orders
from Delivery ),
immediate_customers as (
select count(customer_id) as immediate_order_customers
from first_order
where first_orders = 1 and order_date = customer_pref_delivery_date
),
first_orders_customer as (
select count(customer_id) as first_order_customers
from first_order
where first_orders = 1)

select round((immediate_order_customers/first_order_customers) * 100,2) as immediate_percentage
from immediate_customers,first_orders_customer


