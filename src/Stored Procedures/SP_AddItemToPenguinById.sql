/*
   PURPOSE	  : Add an item to penguin by penguin_id
		
	==============================================================================================================
	USAGE EXAMPLE: CALL AddToPenguinById(210, 1227)  
*/

create or replace procedure AddToPenguinById(
   penguinId int,
   itemId int
)
language plpgsql    
as $$
begin
    INSERT INTO penguin_item(penguin_id, item_id)
    VALUES (penguinId, itemId)
    commit;
end;$$
