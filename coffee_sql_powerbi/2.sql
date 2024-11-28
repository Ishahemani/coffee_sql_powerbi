select monthname(transaction_date),round(sum(transaction_qty * unit_price),2) as sales
from css
group by monthname(transaction_date);