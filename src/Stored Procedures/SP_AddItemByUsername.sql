CREATE OR REPLACE PROCEDURE AddItemByUsername(
   penguin_username varchar,
   itemId int
)
language plpgsql    
as $$
begin
    INSERT INTO penguin_item(penguin_id, item_id)
    SELECT id, itemId from penguin where username = lower(penguin_username);
    commit;
end;$$