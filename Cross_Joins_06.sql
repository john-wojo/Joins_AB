#Cross Joins

#Example of cross join
select c.customer_id, 
	   c.first_name,
       co.customer_id,
       co.order_id
from customers c
cross join customer_orders co
order by c.customer_id;