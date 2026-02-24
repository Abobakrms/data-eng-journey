Select customer_id, Count(v.visit_id) as count_no_trans
From Visits as v
Left join Transactions as t on t.visit_id = v.visit_id
Where transaction_id Is null 
Group by customer_id