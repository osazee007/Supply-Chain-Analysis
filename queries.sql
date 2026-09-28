-- Supply Chain Analysis: Suppliers
-- Tool: SQL (SQLite)

-- 1. All suppliers in Nigeria
SELECT *
FROM suppliers
WHERE country = 'Nigeria';

-- 2. Total stock value per country
SELECT country, SUM(unit_price * quantity) AS total_stock_value
FROM suppliers
GROUP BY country
ORDER BY total_stock_value DESC;

-- 3. Average unit price per country
SELECT country, AVG(unit_price) AS avg_unit_price
FROM suppliers
GROUP BY country;

-- 4. Number of suppliers per country
SELECT country, COUNT(*) AS supplier_count
FROM suppliers
GROUP BY country;

-- 5. Countries with total stock value above 100,000
SELECT country, SUM(unit_price * quantity) AS total_stock_value
FROM suppliers
GROUP BY country
HAVING total_stock_value > 100000;

-- 6. Flag products as Reorder or OK based on quantity
SELECT name, product, quantity,
       CASE WHEN quantity < 200 THEN 'Reorder' ELSE 'OK' END AS stock_status
FROM suppliers;
