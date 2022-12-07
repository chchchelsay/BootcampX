-- Get the total duration of all assistance requests for each cohort.
-- \i 4_queries/8_cohort_assistance_duration.sql

SELECT cohorts.name, sum(completed_at-started_at) as total_TIME
FROM assistance_requests 
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_TIME;