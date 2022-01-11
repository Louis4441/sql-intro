-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT stats.player_id, players.first_name, players.last_name, SUM(stats.hits)
FROM players INNER JOIN stats ON stats.player_id = players.id
WHERE players.first_name = "Barry" 
AND players.last_name = "Bonds";


--select id, first_name, last_name
--from players
--where last_name = "Bonds"
--and first_name = "Barry";

--select player_id, SUM(hits)
--from stats
--where player_id = "1678"


----- Correct answer
--SELECT SUM(stats.hits)
--FROM players INNER JOIN stats ON stats.player_id = players.id
--WHERE players.first_name = "Barry" 
--AND players.last_name = "Bonds";