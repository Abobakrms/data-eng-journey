SELECT
	*,
	CASE
		WHEN x+y > z AND x+z > y AND y+z > x THEN 'Yes'
		ELSE 'No'
	End AS triangle
FROM Triangle