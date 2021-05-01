create or replace function sumar(int,int)
returns int
as
$$
declare resultado int;
begin
	resultado := $1 + $2;
	return resultado;
end
$$
language 'plpgsql';

select sumar(1,2);