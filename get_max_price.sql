create or replace function get_max_price()
returns numeric 
as $$
declare 
	max_price numeric;
begin
	select max(unit_price)
	into max_price 
	from products;

	return max_price;
end
$$
language 'plpgsql';

select get_max_price();