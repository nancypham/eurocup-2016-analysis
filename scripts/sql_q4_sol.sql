-- 4. Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament.

SELECT m.play_stage, FLOOR(COUNT(p.in_out)/2) AS num_subs
FROM match_mast AS m
INNER JOIN player_in_out AS p
USING(match_no)
GROUP by m.play_stage;