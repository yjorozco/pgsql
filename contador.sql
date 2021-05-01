-- LOOP
do
$$
declare
	contador int := 0; 
begin
	loop
		contador := contador + 1;
		raise notice '%', contador;
			if (contador = 10) then
	    		exit;
	    	end if;
	end loop;
end
$$ language 'plpgsql';