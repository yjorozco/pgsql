create or replace function get_employees()
returns table(emp_id int, name text)
as
$$
begin
	return query select employee_id::integer as id,
				 fullname(first_name,last_name) as fullname
				 from employees;
end
$$ language 'plpgsql';

select get_employees();