WITH RunningTotals AS (
    SELECT 
        person_name,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM dbo.Queue
)
SELECT TOP 1 person_name
FROM RunningTotals
WHERE total_weight <= 1000
ORDER BY turn DESC;