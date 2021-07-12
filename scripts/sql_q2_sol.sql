-- 2. Write a SQL query to find the number of matches that were won by penalty shootout.

SELECT COUNT(*) AS penalty_wins
FROM match_mast
WHERE decided_by = 'P';