create or replace function get_max_min_price
(out maxi numeric, out mini numeric)
as $$
begin
	select max(unit_price), min(unit_price)
	into maxi, mini
	from products;
end
$$
language 'plpgsql';


select get_max_min_price();
