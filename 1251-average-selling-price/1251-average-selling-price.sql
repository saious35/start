SELECT P.product_id, ROUND(IFNULL(SUM(price * units) / SUM(units),0),2) average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id = U.product_id
and U.purchase_date BETWEEN P.start_date and P.end_date 
GROUP BY 1
