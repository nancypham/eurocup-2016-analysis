-- 8. Write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match.

WITH highest_pen_shots_match AS (
	SELECT match_no
	FROM match_details
	WHERE penalty_score = (SELECT MAX(penalty_score) FROM match_details))

SELECT h.match_no, s.country_name
FROM highest_pen_shots_match AS h, 
match_details AS m
INNER JOIN soccer_country AS s
ON m.team_id = s.country_id
WHERE m.match_no = h.match_no;