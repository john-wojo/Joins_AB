#Outer Joins 

#Example of left outer join
select c.customer_id, c.first_name, co.order_id
from customers c 
left outer join customer_orders co
	on c.customer_id = co.customer_id
order by c.customer_id, co.order_id;

#Example of right outer join
select c.customer_id, c.first_name, co.order_id
from customers c 
right outer join customer_orders co
	on c.customer_id = co.customer_id
order by c.customer_id, co.order_id;

#Full Outer Join not available in MySQL
#select c.customer_id, c.first_name, co.order_id
#from customers c 
#full outer join customer_orders co
#	on c.customer_id = co.customer_id
#order by c.customer_id, co.order_id;