/*
   PURPOSE	  : Add an item to penguin by penguin_id
		
	==============================================================================================================
	USAGE EXAMPLE: CALL AddToPenguinsThatHave(210, 1227)  
*/

create or replace procedure AddToPenguinsThatHave(
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
