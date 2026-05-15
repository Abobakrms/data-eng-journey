SELECT
	Department,
	Employee,
	Salary
FROM(
	SELECT
		d.name AS Department,
		e.name AS Employee,
		e.salary AS Salary,
		DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS SalaryRank
	FROM Employee AS e
	JOIN Department AS d ON e.departmentId = d.id
) AS RankedSalaries
WHERE SalaryRank <= 3