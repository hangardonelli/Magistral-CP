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