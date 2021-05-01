create or replace function get_order_count(emp_id int)
returns int
as $$
declare 
	quantity int;
begin
		select count(order_id)
		into quantity 
		from orders
		where employee_id = emp_id;
		return quantity;
end
$$ language 'plpgsql';

select employee_id, last_name, get_order_count(employee_id) as quantity 
from employees
order by quantity;