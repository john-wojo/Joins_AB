#Unions

select *
from customers;

select *
from products;

#Example of union
select first_name, last_name
from customers
union
select product_id, product_name
from products;

#Example of using unions to label customers in different categories
select first_name, last_name, 'Old'
from customers
where year(birth_date) < 1950
union
select first_name, last_name, 'Good Tipper'
from customers c
join customer_orders co
	on c.customer_id = co.customer_id
where tip > 3
union
select first_name, last_name, 'Big Spender'
from customers c
join customer_orders co
	on c.customer_id = co.customer_id
where total_money_spent > 1000
order by first_name, last_name;
#Order by has to come behind all unions 

#Example of using union distinct to label customers in different categories
select first_name, last_name, 'Old'
from customers
where year(birth_date) < 1950
union distinct
select first_name, last_name, 'Good Tipper'
from customers c
join customer_orders co
	on c.customer_id = co.customer_id
where tip > 3
union distinct
select first_name, last_name, 'Big Spender'
from customers c
join customer_orders co
	on c.customer_id = co.customer_id
where total_money_spent > 1000
order by first_name, last_name;

#Example of using union all to label customers in different categories 
select first_name, last_name, 'Old'
from customers
where year(birth_date) < 1950
union all
select first_name, last_name, 'Good Tipper'
from customers c
join customer_orders co
	on c.customer_id = co.customer_id
where tip > 3
union all
select first_name, last_name, 'Big Spender'
from customers c
join customer_orders co
	on c.customer_id = co.customer_id
where total_money_spent > 1000
order by first_name, last_name;