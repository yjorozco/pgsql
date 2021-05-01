create or replace function get_product_sealed(prod_id int, emp_id int)
returns int
as $$
declare 
	quantity int;
begin
	select sum(od.quantity)
	into quantity
	from order_details as od inner join 
	orders as o on o.order_id = od.order_id
	where od.product_id = prod_id and 
	o.employee_id = emp_id;
	return quantity;
end
$$
language 'plpgsql';

select get_product_sealed(1,4);

