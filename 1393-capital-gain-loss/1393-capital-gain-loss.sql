# Write your MySQL query statement below



# select sell_buy_table.stock_name, sum(sell_buy_table.price) - sum(sell_buy_table.price) as capital_gain_loss
# from 
# (
#     (
#         (
#             select * 
#             from Stocks
#             where operation = "Sell"
#         ) as sell_table join 
#         (
#             select * 
#             from Stocks
#             where operation = "Buy"
#         ) 
#         as buy_table on sell_table.stock_name = buy_table.stock_name
#     )
# ) as sell_buy_table
# group by sell_buy_table.stock_name


 # select sell_table.stock_name, (sell_table.price - buy_table.price) as capital_gain_loss 
 # from 
 # (
 #     (select stock_name, sum(price) as price from Stocks where operation = "Sell" group by stock_name) as sell_table 
 #     join 
 #     (select stock_name, sum(price) as price from Stocks where operation = "Buy" group by stock_name) as buy_table 
 #     on sell_table.stock_name = buy_table.stock_name
 # )
 # group by sell_table.stock_name

select stock_name, sum(
case 
    when operation = 'Buy' then -price
    else price
end
) as capital_gain_loss
from stocks
group by stock_name

#select price select sum(price) from Stocks where operation = "Sell" and stock_name = "Corona Masks";
#select sum(price) from Stocks where operation = "Buy" and stock_name = "Corona Masks";