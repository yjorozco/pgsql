create or replace function get_products(category int)
returns setof products
as
$$
begin 
	return query select * from products
			where products.category_id = category;
end
$$ language 'plpgsql';

select * from get_products(1);