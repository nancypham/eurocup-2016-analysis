-- 15. Write a SQL query to find the referees who booked the most number of players.

WITH num_player_booked AS (
	SELECT referee_name, COUNT(p.player_id) AS num_bookings
	FROM player_booked AS p
	INNER JOIN match_mast AS m USING(match_no)
	INNER JOIN referee_mast AS r USING(referee_id)
	GROUP BY referee_name
	ORDER BY num_bookings DESC)

SELECT referee_name
FROM num_player_booked
WHERE num_bookings in (SELECT MAX(num_bookings) FROM num_player_booked);