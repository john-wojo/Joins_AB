#Self Joins

#Example of self join on unique column
select *
from customers c 
join customers ss 
	on c.first_name = ss.first_name;
    
#
select c.customer_id,
	   c.first_name,
       c.last_name,
       ss.customer_id,
       ss.first_name,
       ss.last_name
from customers c 
join customers ss
	on c.customer_id + 1 = ss.customer_id;