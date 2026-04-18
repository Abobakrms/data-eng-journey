SELECT
	product_id,
	first_year,
	quantity,
	price
FROM(
	SELECT *,MIN(year) OVER(Partition BY product_id) AS first_year
	FROM Sales
) AS sales_subquery
WHERE year = first_year