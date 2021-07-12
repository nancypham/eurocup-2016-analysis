-- 16. Write a SQL query to find referees and the number of matches they worked in each venue.

SELECT venue_name, referee_name, COUNT(*)
FROM match_mast
INNER JOIN referee_mast USING(referee_id)
INNER JOIN soccer_venue USING(venue_id)
GROUP BY venue_name, referee_name;