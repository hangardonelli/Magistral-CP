/*
	Add an item to all penguins that have a specified item
	Parameters: 
				neededItem	INT: The itemID necessary for the desired item to be added
				itemtoAdd	INT: The item you want to add to all users who have the item 'neededItem'
*/

create or replace procedure AddToPenguinsThatHave(
   neededItem int,
   itemToAdd int
)
language plpgsql    
as $$
begin
    INSERT INTO penguin_item(penguin_id, item_id)
    SELECT penguin_id, itemToAdd  FROM penguin_item WHERE item_id = neededItem; 
    commit;
end;$$
