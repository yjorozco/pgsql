do
$$
declare dia int := 2;
begin
	case when (dia = 1) then raise notice 'Lunes';
		 when (dia = 2) then raise notice 'Martes';
		 when (dia = 3) then raise notice 'Miercoles';
		 when (dia = 4) then raise notice 'Jueves';
         when (dia = 5) then raise notice 'Viernes';
         when (dia = 6) then raise notice 'Sabado';
         when (dia = 7) then raise notice 'Domingo';
    else
    	raise notice  'dia no valido';
    end case;
end
$$
language 'plpgsql';