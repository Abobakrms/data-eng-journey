Select 
    contest_id, 
    ROUND(COUNT(user_id) * 100.0 / (SELECT COUNT(user_id) FROM Users), 2) AS percentage
From Register
Group by contest_id
Order by percentage DESC, contest_id ASC