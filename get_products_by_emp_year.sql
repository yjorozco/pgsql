create or replace function get_products_by_emp_year(emp_id int, oyear int)
returns table (prod_id int, prod_name text, pquantity int)
as
$$
begin
	return query select od.product_id::integer, p.product_name::text, sum(od.quantity)::integer
	from orders as o inner join order_details as od on o.order_id = od.order_id
	inner join products as p on od.product_id = p.product_id 
	where o.employee_id = emp_id
	and date_part('year', order_date)=oyear
	group by od.product_id, p.product_name;
end
$$ language 'plpgsql';

select get_products_by_emp_year(2,1997);