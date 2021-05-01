create or replace function fullname(fname text, lname text)
returns text 
as $$
begin
	return concat_ws(' ', fname,lname);
end
$$
language 'plpgsql';