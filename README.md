# SQL_Assignment

## Task 1: Enquiry and Transaction Counts

This  SQL query aggregates the total number of enquiries and transactions per user on a given date, 
combining data from the enquiries and txns tables.

Approach:

Subquery: Combines results from both tables, counting enquiry_id and txn_id separately.

Outer Query: Sums the counts of enquiries and transactions by user_id and date.

This solution uses UNION ALL to efficiently merge data without removing duplicates.

## Task 2: Enquiry Conversion Mapping

This SQL query is to find all transaction IDs associated with an enquiry within 30 days for each user.

Approach:

CTE (txn_within_30_days):

This CTE joins enquiries with txns based on user_id.

It filters transactions (txn_date) that occurred within 30 days after the enquiry date (enquiry_date).

Main Query:

After the CTE, it left joins again with txns to fetch the corresponding txn_id.

The arraymap function is used to convert the txn_id values to strings, and arrayfilter removes any empty strings.

The results are grouped by enquiry_id, enquiry_date, and user_id.

Final Output:

The query outputs enquiry_id, enquiry_date, user_id, and a list of transaction IDs (txn_ids) for each enquiry.

The result is sorted by user_id and enquiry_date.
