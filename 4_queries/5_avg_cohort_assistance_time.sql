-- Get the average duration of assistance requests for each cohort.
-- \i 4_queries/5_avg_cohort_assistance_time.sql

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;