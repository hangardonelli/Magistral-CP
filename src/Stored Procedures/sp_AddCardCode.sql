CREATE OR REPLACE PROCEDURE AddCardCode(
   _code varchar,
   _codeid int
)

language plpgsql    
as $$
begin
    INSERT INTO redemption_code(id, code, type, coins, expires, uses)
	VALUES (_codeid, _code, 'GOLDEN', 0, null, 47);
	
	INSERT INTO redemption_award_card values(_codeid, 77);
	INSERT INTO redemption_award_card values(_codeid, 91);
	INSERT INTO redemption_award_card values(_codeid, 255);

    commit;
end;$$
