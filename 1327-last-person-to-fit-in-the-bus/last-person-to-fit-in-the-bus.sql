# Write your MySQL query statement below
WITH Accumulated AS (
    SELECT 
        person_name,
        turn,
        weight,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT person_name
FROM Accumulated
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
