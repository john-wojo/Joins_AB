#Inner Joins

select *
from customers;

select *
from customers_orders;

#Example of inner join 
select *
from customers as c
inner join customer_orders as co
	on c.customer_id = co.customer_id
order by c.customer_id;

#Example of inner join with aggregation function looking at how much each product has made the bakery
select p.product_name, sum(order_total) as total 
from products as p
inner join customer_orders as co
	on p.product_id = co.product_id
group by p.product_name
order by 2 desc;

#Example of inner join when column names are not the same but the data is connected
select *
from suppliers s
inner join ordered_items oi
	on s.supplier_id = oi.shipper_id;
