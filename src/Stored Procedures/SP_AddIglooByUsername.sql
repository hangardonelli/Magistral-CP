
CREATE OR REPLACE PROCEDURE AddFurnitureByUsername(
   penguin_username varchar,
   furnitureID int
)
/*
   Add a specified furniture to a specified player
   Parameters:
      -penguin_username:   The username (or nickname) of the player
      -furnitureID         The ID of the furniture item that you want to add
   
   Precondition:           The player does not have the specified item
*/
language plpgsql    
as $$
begin
    INSERT INTO penguin_furniture(penguin_id, furniture_id, quantity)
    SELECT id, furnitureID, 1 from penguin where username = lower(penguin_username);
    commit;
end;$$
