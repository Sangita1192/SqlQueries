-- Calculating REVENUE
SELECT
	ORDER_ID,
	SUM(MEAL_PRICE * ORDER_QUANTITY) AS REVENUE
FROM
	ORDERS
	JOIN MEALS USING (MEAL_ID)
GROUP BY
	ORDER_ID
ORDER BY
	ORDER_ID

-- Calculating Cost
SELECT 
	meal_id,
	SUM (meal_cost * stocked_quantity) AS total_cost
FROM 
	meals
JOIN stock USING (meal_id)
GROUP BY meal_id
ORDER BY total_cost DESC

