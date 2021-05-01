create or replace function get_products_by_emp_year(emp_id int, oyear int)
returns table (prod_id int, prod_name text, pquantity int)
as
$$
declare 
	rec record;
begin
	for rec in (select od.product_id::integer as prod_id, p.product_name::text as prod_name, sum(od.quantity)::integer as quantity
				from orders as o inner join order_details as od on o.order_id = od.order_id
				inner join products as p on od.product_id = p.product_id 
				where o.employee_id = emp_id
				and date_part('year', order_date)=oyear
				group by od.product_id, p.product_name
	) loop
		prod_id =  rec.prod_id;
		prod_name =  rec.prod_name;
		pquantity = rec.quantity;
		return next;
	end loop;
end
$$ language 'plpgsql';

select get_products_by_emp_year(2,1997);