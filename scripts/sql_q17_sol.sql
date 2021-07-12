-- 17. Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees.

SELECT country_name, COUNT(*) AS num_asst_ref
FROM asst_referee_mast
INNER JOIN soccer_country USING(country_id)
GROUP BY country_name
ORDER BY num_asst_ref DESC
LIMIT 1;