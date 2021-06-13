CREATE OR REPLACE PROCEDURE AddIglooByUsername(
   penguin_username varchar,
   igloo_id int
)

/*
   Add an specified igloo to a specified penguin by his username.
   Parameters:
      -penguin_username:   The username (or nickname) of the penguin.
      -igloo_id:           The specified id of the igloo to add to the player
   
   Precondition:
      The user does not have the specified igloo
*/
language plpgsql    
as $$
begin
    INSERT INTO penguin_igloo(penguin_id, igloo_id)
    SELECT id, igloo_id from penguin where username = lower(penguin_username);
    commit;
end;$$
