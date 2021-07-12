-- 14. Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order.

SELECT r.referee_name, COUNT(p.player_id) AS num_bookings
FROM player_booked AS p
INNER JOIN match_mast AS m USING(match_no)
INNER JOIN referee_mast AS r USING(referee_id)
GROUP BY referee_name
ORDER BY num_bookings DESC;