-- Get the total amount of time that a student has spent on all assignments.
-- \i 2_queries_joins/1_student_assignment_duration.sql

SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions 
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';