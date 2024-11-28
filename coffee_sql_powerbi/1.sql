select * from css;
SET SQL_SAFE_UPDATES = 0;

describe css;
update css
set transaction_date = str_to_date(transaction_date,'%d-%m-%Y');

alter table css
modify column transaction_date date;

update css
set transaction_time = str_to_date(transaction_time,'%H:%i:%s');

alter table css
modify column transaction_time time;
