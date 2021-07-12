-- 13. Write a SQL query to find all the defenders who scored a goal for their teams.

SELECT DISTINCT player_name
FROM goal_details
INNER JOIN player_mast
USING(player_id)
WHERE posi_to_play = 'DF';