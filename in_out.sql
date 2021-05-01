create function in_out(x int, inout y int )
as $$
begin
	y := x * y;
end
$$
language 'plpgsql';

select in_out(2,4);