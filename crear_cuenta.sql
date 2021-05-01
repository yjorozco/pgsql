create or replace procedure crear_cuenta(cname text, monto_inicial numeric)
as $$
begin 
	insert into cuentas (nombre, monto)
	values (cname, monto_inicial);
	raise notice 'cuenta creada';
end
$$ language 'plpgsql';

call crear_cuenta('jane', 6000);

select * from cuentas;