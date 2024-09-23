-- Finding top 10 highest revenue generating products

SELECT 
TOP 10 product_id, SUM(sale_price) AS sales 
FROM 
dbo.df_orders 
GROUP BY product_id
ORDER BY sales DESC
;

--- Finding top 5 selling products in region 
WITH cte AS(
SELECT 
region,  product_id, SUM(sale_price) AS sales
FROM 
dbo.df_orders 
GROUP BY product_id,region)
SELECT * 
	FROM (
		SELECT * 
			, ROW_NUMBER() over (partition by region order by sales desc)as rn
			FROM cte) a 
	WHERE rn<=5
;

--- Finding month over month growth comparison for 2022 and 2023 sales
WITH cte as 
(
SELECT SUM(sale_price) AS Sales, YEAR(order_date) as order_year, MONTH(order_date) as Order_month
FROM dbo.df_orders
GROUP BY YEAR(order_date), MONTH(order_date)
)
SELECT Order_month, 
	sum(CASE WHEN order_year = 2022 then sales else 0 end) as sales_2022,
	sum(CASE WHEN order_year = 2023 then sales else 0 end) as sales_2023
FROM cte
group by Order_month;

--- Finding for each category which month had highest sales

With CTE as (
SELECT SUM(sale_price) as sales, format(order_date, 'yyyy-MM') as order_month_year , category 
FROM 
dbo.df_orders
GROUP BY category, format(order_date, 'yyyy-MM')
)
Select * from (
SELECT *,
ROW_NUMBER() over (partition by category order by sales desc)as rn
from cte
) as a 
where rn = 1;

--- which sub categories had highest growth by profit in 2023 compare to 2022 

WITH cte as 
(
SELECT SUM(sale_price) AS Sales, YEAR(order_date) as order_year, MONTH(order_date) as Order_month, sub_category
FROM dbo.df_orders
GROUP BY YEAR(order_date), MONTH(order_date),sub_category
)
SELECT sub_category, 
	sum(CASE WHEN order_year = 2022 then sales else 0 end) as sales_2022,
	sum(CASE WHEN order_year = 2023 then sales else 0 end) as sales_2023
FROM cte
group by sub_category;