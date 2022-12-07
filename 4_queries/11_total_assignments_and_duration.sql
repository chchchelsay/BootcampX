-- Get each day with the total number of assignments and the total duration of the assignments.
-- \i 4_queries/11_total_assignments_and_duration.sql

SELECT day, count(assignments.id) as num_of_assignments, sum(assignments.duration) 
FROM assignments 
GROUP BY assignments.day 
ORDER BY assignments.day;
