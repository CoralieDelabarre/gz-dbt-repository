SELECT *
, (s.quantity * p.purchase_price) AS purchase_cost
, (s.revenue - (s.quantity * p.purchase_price)) AS margin
FROM 
{{ref('stg_raw__sales')}} AS s
JOIN 
{{ref('stg_raw__product')}} AS p
USING (products_id)