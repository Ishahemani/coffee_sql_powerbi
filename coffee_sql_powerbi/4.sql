select mon,sales,(sales - lag(sales,1) over (order by mon_num)) as ab
 from
 (select month(transaction_date) as mon_num ,monthname(transaction_date) as mon,sum(transaction_qty * unit_price) as sales
from css
group by mon_num,monthname(transaction_date)) as a