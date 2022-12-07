--total number of assistance reqs for a teacher
-- \i 4_queries/1_total_teacher_assistance_requests.sql

SELECT count(assistance_requests.*) as total_assistances, teachers.name 
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;