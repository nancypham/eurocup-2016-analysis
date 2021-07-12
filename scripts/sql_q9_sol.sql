-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches.

WITH germany_country_id AS (
	SELECT country_id
    FROM soccer_country
    WHERE country_name = 'Germany'
) 

SELECT DISTINCT p.player_name AS german_goalkeeper, p.jersey_no
FROM player_mast AS p, soccer_country AS s, germany_country_id as g
WHERE posi_to_play = 'GK' AND
p.player_id = (SELECT DISTINCT player_gk FROM match_details AS m, germany_country_id AS g WHERE play_stage = 'G' AND m.team_id = g.country_id);