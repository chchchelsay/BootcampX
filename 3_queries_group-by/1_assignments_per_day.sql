-- total number of assignments for each day of bootcamp
-- \i 3_queries_group-by/1_assignments_per_day.sql

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;