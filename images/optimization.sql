EXPLAIN ANALYZE
SELECT 
	customerkey,
	orderdate,
	SUM(quantity * netprice * exchangerate) AS net_revenue
FROM sales
WHERE orderdate >= '2024-01-01'
GROUP BY customerkey, orderdate
;

-- TIPS FOR OPTIMIZATION
-- 1. Using LIMIT for Large Datasets
-- 2. Avoid SELECT * for Large Datasets
-- 3. Using WHERE instead of HAVING