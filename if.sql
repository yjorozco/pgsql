-- 

do
$$
declare dia int:= 2;
begin 
	if (dia = 1) then
		raise notice 'lunes';
	elsif (dia = 2) then 
		raise notice 'martes';
	elsif (dia = 3) then 
		raise notice 'miercoles';
	elsif (dia = 4) then 
		raise notice 'jueves';
	elsif (dia = 5) then 
		raise notice 'viernes';
	elsif (dia = 6) then 
		raise notice 'sabado';
	elsif (dia = 7) then 
		raise notice 'domingo';
	else
		raise notice 'dia no valido';
	end if;
end
$$
language 'plpgsql';