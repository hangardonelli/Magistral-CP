
CREATE FUNCTION public.getItem(item_name varchar)
RETURNS TABLE (
				_id int,
				_name varchar(50),
				_type smallint,
				_cost int
			  )
/*
	Returns a column with all the items that match.
	Parameters:	
		Item_Name: The name of the item to be obtained, need to put inside %.
	USAGE example to get all hoodies:
		SELECT * FROM getItem('%hoodie%')
	
*/
LANGUAGE 'plpgsql'



AS $BODY$
begin

	RETURN QUERY SELECT  i.id, i.name, i.type, i.cost FROM item i WHERE name ilike item_name;
	
end;$BODY$;