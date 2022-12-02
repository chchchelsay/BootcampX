-- Get all of the students without a gmail.com account and a phone number. Get their name, email, id, and cohort_id.
-- \i 1_queries/4_non_gmail_students.sql

SELECT name, email, id, cohort_id
FROM students
WHERE phone IS NULL 
AND email NOT LIKE '%gmail.com';