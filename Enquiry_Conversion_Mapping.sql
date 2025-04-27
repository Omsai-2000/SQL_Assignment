with txn_within_30_days as (
select e.enquiry_id, e.user_id, e.date as enquiry_date, t.txn_id, t.date as txn_date
from enquiries e 
left join txns t 
on e.user_id = t.user_id
and t.date >= e.date
and t.date <= date_add(e.date, interval 30 day)
)
select e.enquiry_id, e.enquiry_date, e.user_id, arrayfilter(x -> x != '', arraymap(x -> tostring(x), grouparray(t.txn_id))) as txn_ids
from txn_within_30_days e 
left join txns t 
on e.txn_id = t.txn_id 
group by e.enquiry_id, e.enquiry_date, e.user_id  
order by e.user_id, e.enquiry_date;
