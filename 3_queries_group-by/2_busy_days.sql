-- same as previous (total number of assignments each day of bootcamp) but only rows where total assignments > = 10
-- \i 3_queries_group-by/2_busy_days.sql

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;