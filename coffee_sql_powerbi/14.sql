select product_type,concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales
from css
where month(transaction_date) = 5
group by product_type
order by sales desc limit 10;
