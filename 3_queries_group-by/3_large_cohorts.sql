-- cohorts with 18 + students
-- \i 3_queries_group-by/3_large_cohorts.sql

SELECT cohorts.name as cohort_name, count(*) as student_count
FROM students JOIN cohorts 
ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY student_count;