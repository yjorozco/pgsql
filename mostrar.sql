-- BLOQUES ANONIMOS

do
$BODY$
declare mess text := 'Hello World!';
	    x numeric := 12.9;
	   double numeric := x * 2;
begin
	x := 14;
    double:= x * 2;
	raise notice '% - % - %',mess, x, double;
    raise notice '%', double;
end
$BODY$language 'plpgsql';