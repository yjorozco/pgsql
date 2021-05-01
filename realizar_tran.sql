create or replace procedure realizar_tran(envia int, recibe int, montot int)
as $$
declare 
	monto_disponible cuentas.monto%type;
begin 
	select monto from cuentas 
	into monto_disponible 
	where numero_cuenta  = envia;
	
	if(monto_dispoible > montot) then
		update cuenta
		set monto = monto - montot
		where numero_cuenta = envia;
	
		update cuentas set monto =  monto + montot
		where numero_cuenta = recibe;
	else
		raise  'El monto solicitado es mayor al disponible';
	end if
	commit;
	raise notice 'Transaccion completada';

end
$$ language 'plpgsql';

call realizar_tran(3,1,9000);
select * from cuentas;