#Joining on Multiple Conditions

#Example of joining on multiple columns to eliminate incorrect results
#Without the second and third column joins there were more results but they were duplicates and incorrect
select *
from customer_orders co 
join customer_orders_review cor
	on co.order_id = cor.order_id
    and co.customer_id = cor.customer_id
    and co.order_date = cor.order_date;