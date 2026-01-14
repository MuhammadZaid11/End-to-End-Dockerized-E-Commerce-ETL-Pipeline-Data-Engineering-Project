select * from fact_sales;

-- Count check
SELECT COUNT(*) FROM fact_sales;

-- Sample check:
SELECT * FROM fact_sales LIMIT 10;

-- Nulls / missing values check:
SELECT product_title, COUNT(*) 
FROM fact_sales
WHERE product_title IS NULL
GROUP BY product_title;

-- Duplicates check:
SELECT product_title, COUNT(*) 
FROM fact_sales
GROUP BY product_title
HAVING COUNT(*) > 1;

-- Create Views

CREATE VIEW sales_summary AS
SELECT product_category, SUM(original_price) AS total_sales
FROM fact_sales 
GROUP BY product_category;

select * from sales_summary;


