-- enrolled students' avg assignment completion time
-- \i 3_queries_group-by/5_avg_completion_time.sql

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions 
JOIN students ON students.id = student_id
WHERE end_date is NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;