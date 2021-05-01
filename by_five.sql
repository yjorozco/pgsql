create or replace function by_five(x int)
returns int
as $$
begin 
	return x * 5;
end
$$
language 'plpgsql';


select  by_five(5);