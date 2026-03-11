SELECT
	employee_id,
	department_id
FROM (
	SELECT
	*,
	COUNT(*) OVER(PARTITION BY employee_id) AS employee_count,
	CASE 
		WHEN primary_flag = 'Y' THEN 1
		WHEN COUNT(*) OVER(PARTITION BY employee_id) = 1THEN 1
		ELSE 0
	END AS is_primary
FROM Employee
)t 
WHERE is_primary = 1

												--	ANOTHER WAY --

SELECT 
    employee_id, 
    department_id
FROM (
    SELECT 
        *, 
        COUNT(*) OVER(PARTITION BY employee_id) AS employee_count
    FROM Employee
) AS t 
WHERE primary_flag = 'Y' OR employee_count = 1;