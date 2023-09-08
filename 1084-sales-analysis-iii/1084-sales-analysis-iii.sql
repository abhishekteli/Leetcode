# Write your MySQL query statement below
with more_than_once as 
(select distinct * from Sales
where sale_date not in (select sale_date from Sales where sale_date >= '2019-01-01' and  sale_date <= '2019-03-31' ))

select distinct a.product_id, product_name
from Product a join Sales b 
on a.product_id = b.product_id
where a.product_id not in (select product_id from more_than_once)