create or replace function sumar(x int, y int)
returns int
as
$$
begin
	return x + y;
end
$$
language 'plpgsql';

create or replace function duplicar(n int)
returns int
as $$
begin
	return n * 2;
end
$$ language 'plpgsql';

select sumar(1,2),duplicar(sumar(1,2));