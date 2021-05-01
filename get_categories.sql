create or replace function get_categories()
returns table(categoryid categories.category_id%type, categoryname varchar(15))
as
$$
begin
	return query select category_id, category_name
				 from categories;
end
$$ language 'plpgsql';


select get_categories();