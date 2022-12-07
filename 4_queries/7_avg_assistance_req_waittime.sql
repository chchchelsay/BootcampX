-- Calculate the average time it takes to start an assistance request.
-- \i 4_queries/7_avg_assistance_req_waittime.sql

SELECT avg(started_at - created_at) as average_wait_time
FROM assistance_requests;