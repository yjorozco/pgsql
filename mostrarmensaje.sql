-- IF

do
$$
declare 
	usuario text := 'fulgencio';
begin
	--usuario := 'admin';
	if (usuario = 'admin') then
		raise notice 'Bienvenido %', usuario;	
	else
		raise notice 'Usuario no es valido';
	end if;
	raise notice 'Adios!!!!!';    
end
$$ language 'plpgsql';