select mon,orders,(orders - lag(orders,1) over (order by mon_num)) as ab
 from
 (select month(transaction_date) as mon_num ,monthname(transaction_date) as mon,count(transaction_id) as orders
from css
group by mon_num,monthname(transaction_date)) as a