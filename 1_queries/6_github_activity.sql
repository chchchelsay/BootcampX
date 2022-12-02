-- Get all graduates without a linked Github account.
-- \i 1_queries/6_github_activity.sql

SELECT name, email, phone
FROM students 
WHERE github IS NULL
AND end_date IS NOT NULL;