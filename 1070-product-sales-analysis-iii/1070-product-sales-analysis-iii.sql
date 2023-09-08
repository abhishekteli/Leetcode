# Write your MySQL query statement below
with first_sales as
(select product_id, year, quantity, price, dense_rank() over(partition by product_id order by year asc) as first_sale 
from sales)

select product_id, year as first_year, quantity, price from first_sales
where first_sale = 1
