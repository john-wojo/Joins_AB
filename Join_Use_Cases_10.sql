#Join Use Cases

select *
from ordered_items;

select *
from products;

select p.product_name, p.product_id, oi.status, oi.shipped_date
from ordered_items oi
join products p
	on oi.product_id = p.product_id
order by oi.shipped_date desc;

#Example of use case of using joins to show potential profits
select distinct p.product_name,
				oi.unit_price, 
                p.sale_price,
                p.sale_price - oi.unit_price as profit,
                p.units_in_stock,
                (p.sale_price - oi.unit_price) * p.units_in_stock as potential_profit
from ordered_items oi
join products p
	using(product_id)
order by potential_profit desc;

#Example of
select *
from ordered_items oi
join supplier_delivery_status sds
	on oi.status = sds.order_status_id
join suppliers s 
	on oi.shipper_id = s.supplier_id
where sds.name != 'Delivered'
and year(shipped_date) < year(now())-4;



select oi.order_id, sds.name, oi.status, oi.shipped_date, s.name
from ordered_items oi
join supplier_delivery_status sds
	on oi.status = sds.order_status_id
join suppliers s 
	on oi.shipper_id = s.supplier_id;