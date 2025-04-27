# SQL_Assignment

Task 1: Enquiry and Transaction Counts

The task 1 provided SQL query aggregates the total number of enquiries and transactions per user on a given date, 
combining data from the enquiries and txns tables.

Approach:

Subquery: Combines results from both tables, counting enquiry_id and txn_id separately.

Outer Query: Sums the counts of enquiries and transactions by user_id and date.

This solution uses UNION ALL to efficiently merge data without removing duplicates.
