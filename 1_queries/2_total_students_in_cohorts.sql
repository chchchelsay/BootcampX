--total number of students from any number of cohorts combined.
--Select the total number of students who were in the first 3 cohorts.
-- \i 1_queries/2_total_students_in_cohorts.sql

SELECT COUNT(id) 
FROM students
WHERE cohort_id IN (1,2,3);