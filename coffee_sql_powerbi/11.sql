select concat(round(avg(sales),1),"k") as avg_sale from (select day(transaction_date),concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales
from css
where month(transaction_date) = 5
group by day(transaction_date))as a