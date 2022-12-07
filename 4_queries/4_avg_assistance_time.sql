-- Get the average time of an assistance request.
-- \i 4_queries/4_avg_assistance_time.sql

SELECT  AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests;