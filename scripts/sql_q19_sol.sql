-- 19. Write a SQL query to find the number of captains who were also goalkeepers.

SELECT COUNT(*) AS capt_gk
FROM match_captain AS m
INNER JOIN player_mast AS p
ON m.player_captain = p.player_id
WHERE posi_to_play = 'GK';