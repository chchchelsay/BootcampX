-- Get the cohort with the longest average duration of assistance requests.
-- \i 4_queries/6_cohort_longest_assistances.sql

SELECT cohorts.name, avg(completed_at - started_at) as max_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY max_assistance_time DESC
LIMIT 1;