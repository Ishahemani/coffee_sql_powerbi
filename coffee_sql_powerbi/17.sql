select 
case
  when dayofweek(transaction_date) = 2 then "monday"
  when dayofweek(transaction_date) = 3 then "tuesday"
  when dayofweek(transaction_date) = 4 then "wednesday"
  when dayofweek(transaction_date) = 5 then "thursday"
  when dayofweek(transaction_date) = 6 then "friday"
  when dayofweek(transaction_date) = 7 then "saturday"
  else "sunday"
  end as days,
concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales
from css 
where month(transaction_date) = 5
group by case
  when dayofweek(transaction_date) = 2 then "monday"
  when dayofweek(transaction_date) = 3 then "tuesday"
  when dayofweek(transaction_date) = 4 then "wednesday"
  when dayofweek(transaction_date) = 5 then "thursday"
  when dayofweek(transaction_date) = 6 then "friday"
  when dayofweek(transaction_date) = 7 then "saturday"
  else "sunday"
  end;
  
