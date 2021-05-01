create or replace function sumar(int,int)
returns int
as
$$
declare 
	x alias for $1;
	y alias for $2;
begin
	return x + y;
end
$$
language 'plpgsql';

select sumar(1,2);