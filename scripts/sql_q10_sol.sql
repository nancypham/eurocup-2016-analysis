-- 10. Write a SQL query to find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016.

SELECT * 
FROM player_mast AS p
INNER JOIN soccer_country AS s
ON p.team_id = s.country_id
WHERE p.playing_club = 'Liverpool' AND s.country_name = 'England';