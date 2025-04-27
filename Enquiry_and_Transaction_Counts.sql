select user_id, date, sum(enquiry_count) as count_enqs, sum(txn_count) as count_txns
from( 
select user_id, date, count(enquiry_id) as enquiry_count, 0 as txn_count
from enquiries group by user_id, date
union all
select user_id, date, 0 as enquiry_count, count(txn_id) as txn_count from txns group by user_id, date
)
group by user_id, date;


