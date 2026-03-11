SELECT
    e1.employee_id,
    e1.name,
    Count(e2.reports_to) AS reports_count,
    ROUND(AVG(CAST(e2.age AS FLOAT)),0) AS average_age
FROM Employees e1
LEFT JOIN Employees e2 ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
HAVING Count(e2.reports_to) > 0
ORDER BY e1.employee_id