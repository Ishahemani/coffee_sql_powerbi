select case
  when dayofweek(transaction_date) in(1,7) then "weekends"
  else "weekdays"
  end as day_type,
  concat(round(sum(transaction_qty * unit_price)/1000,1),"k") as sales
  from css
  where month(transaction_date) = 5
  group by 
  case
   when dayofweek(transaction_date) in(1,7) then "weekends"
   else "weekdays"
  end