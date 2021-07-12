-- 12. Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.

SELECT s.country_name, p.posi_to_play, COUNT(g.goal_id) AS goals_per_pos
FROM goal_details AS g
INNER JOIN soccer_country AS s ON g.team_id = s.country_id
INNER JOIN player_mast AS p USING(player_id)
GROUP BY s.country_name, p.posi_to_play;