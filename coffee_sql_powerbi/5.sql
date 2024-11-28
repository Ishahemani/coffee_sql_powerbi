select monthname(transaction_date),count(transaction_id) as orders
from css
group by monthname(transaction_date);