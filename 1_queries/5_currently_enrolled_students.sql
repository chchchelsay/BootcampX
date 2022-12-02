-- A student's end date will be NULL when they are currently enrolled in Bootcamp. Get all of the students currently enrolled.
-- \i 1_queries/5_currently_enrolled_students.sql

SELECT name, id, cohort_id
FROM students 
WHERE end_date IS NULL 
ORDER BY cohort_id;