-- Get the total number of assistance_requests for a student.
-- \i 4_queries/2_total_student_assistance_requests.sql

SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;