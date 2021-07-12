-- 18. Write a SQL query to find the highest number of foul cards given in one match.

SELECT match_no, COUNT(*) AS foul_cards
FROM player_booked
GROUP BY match_no
ORDER BY foul_cards DESC
LIMIT 1;