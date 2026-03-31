With first as (
	Select
		player_id,
		MIN(event_date) as first_event_date
	From dbo.Activity
	Group by player_id
)
SELECT 
    ROUND(COUNT(a.player_id) * 1.0 / COUNT(f.player_id),2) AS fraction
FROM first f
LEFT JOIN Activity a
    ON f.player_id = a.player_id 
    AND a.event_date = DATEADD(day, 1, f.first_event_date);
