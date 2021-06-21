  
  CREATE OR REPLACE FUNCTION public.getActiveBans()
RETURNS TABLE (
				_penguin_id int,
				_banned_nickname varchar,
				_issued timestamp,
				_expires timestamp,
				_moderator_id int,
				_moderator_nickname varchar,
				_reason smallint,
				_comment text
			  )
/*
	Return active bans
	Parameters:	
		
*/
LANGUAGE 'plpgsql'


AS $BODY$
begin
    
	RETURN QUERY SELECT penguin_id, p.nickname 
  	AS banned_nickname, issued, expires, moderator_id, p2.nickname 
	AS moderator_nickname , reason, comment 
  	FROM ban b 
	  INNER JOIN penguin p
	  ON p.id = b.penguin_id
	  INNER JOIN penguin p2
	  ON moderator_id = p2.id
	WHERE
		expires > CURRENT_TIMESTAMP;

  
  
	
end;$BODY$;


