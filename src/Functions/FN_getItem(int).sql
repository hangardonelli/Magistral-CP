
CREATE OR REPLACE FUNCTION public.getItem(item_id integer)
RETURNS TABLE (
				_id int,
				_name varchar(50),
				_type smallint,
				_cost int
			  )
/*
	Returns a column with all the items that match.
	Parameters:	
		Item_Id: The ID of the item to be obtained.
*/
LANGUAGE 'plpgsql'


AS $BODY$
begin
    
	RETURN QUERY SELECT  i.id, i.name, i.type, i.cost FROM item i WHERE id = item_id;
	
end;$BODY$;