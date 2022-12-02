-- Select their id and name.
-- Order them by their name in alphabetical order.
-- Since this query needs to work with any specific cohort, just use any number for the cohort_id.

-- \i 1_queries/1_students_in_cohort.sql
SELECT id, name
FROM students
WHERE cohort_id = 2
ORDER BY name ASC;