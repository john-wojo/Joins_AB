#Using Keyword

select c.customer_id, first_name, co.order_id
from customers c
left outer join customer_orders co
	on c.customer_id = co.customer_id
order by c.customer_id, co.order_id;

select c.customer_id, first_name, co.order_id
from customers c
left outer join customer_orders co
	using(customer_id)
order by c.customer_id, co.order_id;