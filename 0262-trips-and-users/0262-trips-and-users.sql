/* Write your T-SQL query statement below */

WITH elible_users AS (
    SELECT * FROM trips 
    WHERE client_id IN (
        SELECT users_id FROM users WHERE banned = 'No' AND role = 'client'
    ) 
    AND driver_id IN (
        SELECT users_id FROM users WHERE banned = 'No' AND role = 'driver'
    )
), 
cancelled_trips AS (
    SELECT 
        COUNT(client_id) AS total_cancelled_requests, 
        request_at 
    FROM elible_users
    WHERE status IN ('cancelled_by_driver', 'cancelled_by_client')
    GROUP BY request_at
), 
total_trips AS (
    SELECT 
        COUNT(client_id) AS total_requests, 
        request_at 
    FROM elible_users
    GROUP BY request_at
) 
SELECT 
    a.request_at AS Day, 
    CASE
        WHEN total_cancelled_requests is not null
        THEN ROUND(CAST(total_cancelled_requests AS FLOAT)/total_requests, 2)
        ELSE 0.00
    END AS "Cancellation Rate"
FROM 
    total_trips a 
    LEFT JOIN cancelled_trips b ON a.request_at = b.request_at
    where a.request_at between '2013-10-01' and '2013-10-03';
