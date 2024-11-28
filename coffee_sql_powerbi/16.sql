select concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales,
hour(transaction_time)
from css
where month(transaction_date) = 5
group by hour(transaction_time)
order by hour(transaction_time)