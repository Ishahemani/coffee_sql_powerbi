select store_location,concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales
from css
where month(transaction_date) = 5
group by store_location
order by sales desc