-- List each assignment with the total number of assistance requests with it.
-- \i 4_queries/10_confusing_assignments.sql

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;