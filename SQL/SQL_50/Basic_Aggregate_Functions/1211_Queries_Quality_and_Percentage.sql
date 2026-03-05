Select
    query_name,
    Round(Avg(Cast(rating AS FLOAT)/position),2) AS quality,
    Round(AVG(CASE When rating < 3 then 100.00 else 0.00 END), 2) AS poor_query_percentage
From Queries
Group by query_name 