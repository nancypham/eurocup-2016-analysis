-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were played.

SELECT DISTINCT s.venue_id, s.venue_name AS penalty_shootout_venues
FROM match_mast as m
INNER JOIN soccer_venue s
ON m.venue_id = s.venue_id
WHERE m.decided_by = 'P'