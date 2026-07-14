#Joining Multiple Tables

#Example of joining more than one table together (chaining joins to connect tables that could not otherwise connect to)
select p.product_name 'Product Name', 
	   co.order_total 'Order Total', 
       c.first_name 'First Name'
from products p
join customer_orders co
	on p.product_id = co.product_id
join customers c
	on co.customer_id = c.customer_id
where c.first_name = 'Kevin'
order by co.order_total desc;