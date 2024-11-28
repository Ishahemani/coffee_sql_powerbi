select concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales,
sum(transaction_qty) as qty,
count(*)
from css
where month(transaction_date) = 5
and dayofweek(transaction_date) = 2
and hour(transaction_time) = 8