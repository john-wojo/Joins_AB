#Natural Joins

select *
from products p
join customer_orders co
	on p.product_id = co.product_id
order by p.product_id;

select * 
from products p
natural join customer_orders co
order by p.product_id;