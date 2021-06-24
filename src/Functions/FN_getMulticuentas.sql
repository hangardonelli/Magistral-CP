

CREATE OR REPLACE FUNCTION public.getMulticuentas(nombre varchar)
RETURNS TABLE (
				_nickname varchar,
				_penguin_id int,
				_ip_hash character(128)
			  )
/*
	Returns multiaccounts of specific penguin
*/
LANGUAGE 'plpgsql'


AS $BODY$
begin
    
	RETURN QUERY SELECT DISTINCT p.nickname, l.penguin_id, l.ip_hash 
	FROM login l
INNER JOIN penguin p
ON l.penguin_id = p.id
WHERE l.ip_hash = (
	SELECT ip_hash   from login l2
	INNER JOIN penguin p
	ON p.id = l2.penguin_id
	WHERE p.username = lower(nombre)
	limit 1) AND l.penguin_id > 99;
end;$BODY$;



