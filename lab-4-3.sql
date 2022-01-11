-- Who hit the most home runs in 2019, and what team did he play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

select teams.name, players.first_name, players.last_name, MAX(stats.home_runs)
from stats 
inner join players on players.id = stats.player_id
inner join teams on teams.id = stats.team_id
where teams.year = 2019
limit 2;