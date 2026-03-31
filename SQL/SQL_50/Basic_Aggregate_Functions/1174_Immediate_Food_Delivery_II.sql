WITH FirstOrder AS (
	SELECT
		customer_id,
		MIN(order_date) AS first_order_date
	FROM Delivery
	GROUP BY customer_id
)
SELECT
	ROUND((SUM(CASE WHEN customer_pref_delivery_date = order_date THEN 1.0 ELSE 0 END)/COUNT(e.customer_id))*100,2) AS immediate_percentage
FROM FirstOrder f
JOIN Delivery e
	ON f.customer_id = e.customer_id
	AND f.first_order_date = e.order_date;