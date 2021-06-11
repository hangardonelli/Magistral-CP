```pgsql
CREATE OR REPLACE PROCEDURE AddFurnitureByUsername(
   penguin_username varchar,
   furnitureID int
)
language plpgsql    
as $$
begin
    INSERT INTO penguin_furniture(penguin_id, furniture)
    SELECT id, furnitureID from penguin where username = lower(penguin_username);
    commit;
end;$$
```