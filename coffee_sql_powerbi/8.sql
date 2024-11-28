select concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales,
concat(round(count(transaction_id)/1000,1),"K") as orders,
concat(round(sum(transaction_qty)/1000,1),"k") as qty
from css
where transaction_date = "2023-01-01";
