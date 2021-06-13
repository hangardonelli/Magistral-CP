CREATE OR REPLACE PROCEDURE AddRedemptionCode(
    _name varchar(16),
    _type varchar(8),
    _coins int,
    _expires timestamp,
    _uses integer
    )
language plpgsql    
as $$
begin
    INSERT INTO redemption_code(code, type, coins, expires, uses)
    VALUES (_code, _type, _coins, _expires, _uses);
    commit;
end;$$