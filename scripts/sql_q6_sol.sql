-- 6. Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout.

SELECT COUNT(*) as single_pt_matches
FROM match_mast
WHERE win_lose = 'W' AND goal_score = 1 AND decided_by <> 'P';