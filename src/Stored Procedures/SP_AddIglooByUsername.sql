CREATE OR REPLACE PROCEDURE AddIglooByUsername(
   penguin_username varchar,
   igloo_id int
)
language plpgsql    
as $$
begin
    INSERT INTO penguin_igloo(penguin_id, igloo_id)
    SELECT id, igloo_id from penguin where username = lower(penguin_username);
    commit;
end;$$
