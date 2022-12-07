-- Get important data about each assistance request: names of teacher, student, assignment; duration of assistance request
-- \i 4_queries/3_assistance_requests_data.sql

SELECT teachers.name as teacher, students.name as student , assignments.name as assignments, (assistance_requests.completed_at - assistance_requests.started_at) as duration 
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;