WITH AllFriends AS (
  
    SELECT requester_id AS id FROM dbo.RequestAccepted
    
    UNION ALL
    
    SELECT accepter_id AS id FROM dbo.RequestAccepted
)
SELECT TOP 1    
    id, 
    COUNT(id) AS num
FROM AllFriends
GROUP BY id
ORDER BY num DESC;