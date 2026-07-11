-- 1. Revenue by product type
SELECT product_type, SUM(revenue_generate) AS total_revenue
FROM supply_chain_data
GROUP BY product_type
ORDER BY total_revenue DESC;

-- 2. Revenue by supplier
SELECT supplier_name, SUM(revenue_generate) AS total_revenue
FROM supply_chain_data
GROUP BY supplier_name
ORDER BY total_revenue DESC;

-- 3. Revenue by location
SELECT location, SUM(revenue_generate) AS total_revenue
FROM supply_chain_data
GROUP BY location
ORDER BY total_revenue DESC;

-- 4. Average shipping cost by transport mode
SELECT transportation_m, AVG(shipping_costs) AS avg_shipping_cost
FROM supply_chain_data
GROUP BY transportation_m
ORDER BY avg_shipping_cost DESC;

-- 5. Defect rate by product type
SELECT product_type, AVG(defect_rates) AS avg_defect_rates
FROM supply_chain_data
GROUP BY product_type
ORDER BY avg_defect_rates DESC;

-- 6. Product type performance labelled
SELECT product_type, SUM(revenue_generate) AS total_revenue,
CASE WHEN SUM(revenue_generate) > 200000 THEN 'High Revenue'
     ELSE 'Low Revenue'
END AS performance
FROM supply_chain_data
GROUP BY product_type;

-- 7. Total shipping cost by carrier
SELECT shipping_carrier, SUM(shipping_costs) AS total_shipping_costs
FROM supply_chain_data
GROUP BY shipping_carrier
ORDER BY total_shipping_costs DESC;

-- 8. Average price by product type
SELECT product_type, AVG(price) AS avg_price
FROM supply_chain_data
GROUP BY product_type
ORDER BY avg_price DESC;