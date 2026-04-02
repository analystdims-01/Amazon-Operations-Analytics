SELECT * from Amazon_sales_rpt;

SELECT 
COUNT (Status) as Cancelled_orders,
Fulfilment
FROM Amazon_sales_rpt
GROUP BY Status,Fulfilment
HAVING Status='Cancelled'

SELECT COUNT(Status) AS shipped_orders,
Fulfilment
FROM Amazon_sales_rpt
WHERE Status IN ('Shipped','Shipped-Deliverd to Buyer')
GROUP BY Status,Fulfilment




SELECT COUNT(Status) AS Canceled_status,
ship_state
FROM Amazon_sales_rpt
GROUP BY Status,ship_state
HAVING Status = 'Cancelled'

SELECT TOP 10 COUNT(Status) AS Cancelled_status,
Fulfilment,ship_state
Ship_service_level
FROM Amazon_sales_rpt
GROUP BY Status,ship_state,Fulfilment,ship_service_level
HAVING Status='Cancelled'
ORDER BY Cancelled_status DESC;


select top 10 * from Amazon_sales_rpt;
--Total revenue KPI
select Amount
from Amazon_sales_rpt
where TRY_CAST(Amount as float) IS NULL;
 
 SELECT 
 sum(cast(Amount as FLOAT)) AS Total_revenue
 From Amazon_sales_rpt;
 
 --Total orders KPI
 SELECT
 COUNT(DISTINCT(Order_ID)) AS Total_orders
 from Amazon_sales_rpt;
 
 --Averege Order Value
 SELECT
 SUM(CAST(Amount AS FLOAT))/ COUNT(DISTINCT(Order_ID)) AS Average_order_value
 from Amazon_sales_rpt;

 --Revenue by category
 SELECT Category,
 SUM(CAST(AMOUNT AS FLOAT)) AS Total_revenue
 FROM Amazon_sales_rpt
 Group by Category;

 -- Quantity sold by category
 SELECT Category,
 COUNT(DISTINCT(Order_ID)) AS Total_orders
 FROM Amazon_sales_rpt
 Group by Category;
 
 --Best selling Product
 SELECT Category,
 SUM(AMOUNT) AS Total_revenue,
 COUNT(DISTINCT(Order_ID)) AS Total_orders
 FROM Amazon_sales_rpt
 GROUP BY Category
 ORDER BY Total_revenue DESC;

 --Average price per product
 SELECT Category,
 SUM(AMOUNT) AS Total_revenue,
 COUNT(DISTINCT(Order_ID)) AS Total_orders,
 SUM(AMOUNT)/NULLIF(SUM(Qty),0) AS Avg_qty_price
 FROM Amazon_sales_rpt
 GROUP BY Category
 ORDER BY Total_revenue DESC;

 --SKU/Product analysis
 SELECT TOP 10 SKU,
 Style,
 Category,
 SUM(Amount) AS Total_revenue,
 COUNT(DISTINCT(Order_id)) AS Total_orders
 FROM Amazon_sales_rpt
 Group by SKU,Style,Category
 ORDER BY Total_revenue DESC;

 SELECT TOP 10 
    SKU,
    SUM(Amount) AS Revenue
FROM Amazon_sales_rpt
GROUP BY SKU
ORDER BY Revenue DESC;

--Orders by fulfilment type
SELECT Fulfilment,
COUNT(DISTINCT(Order_ID)) AS Total_orders
FROM Amazon_sales_rpt
GROUP BY Fulfilment

--Revenue by fulfilment type
SELECT Fulfilment,
SUM(Amount) AS Total_revenue
FROM Amazon_sales_rpt
GROUP BY Fulfilment;

--cancellation analysis
SELECT Status,
COUNT(*) AS Total_orders
FROM Amazon_sales_rpt
GROUP BY Status;

--focusing on cancellation status
SELECT Fulfilment,
COUNT(*) AS Cancelled_orders
FROM Amazon_sales_rpt
WHERE Status = 'Cancelled'
GROUP BY Fulfilment
ORDER BY Cancelled_orders;

--focusing on orders by merchant
SELECT Fulfilment,
COUNT(Order_ID) AS Total_orders
FROM Amazon_sales_rpt
GROUP BY Fulfilment

SELECT DISTINCT ship_state,
COUNT(Order_ID) AS Total_orders
FROM Amazon_sales_rpt
Group by ship_state
ORDER BY Total_orders desc;

SELECT  TOP 10 ship_city,
COUNT(Order_ID) AS Total_orders
FROM Amazon_sales_rpt
GROUP BY ship_city
ORDER BY Total_orders DESC;

SELECT TOP 10 ship_state,
SUM(Amount) AS Total_revenue,
COUNT(Order_ID) AS Total_orders
FROM Amazon_sales_rpt
GROUP BY ship_state
ORDER BY Total_orders DESC, Total_revenue desc;

SELECT TOP 10 ship_city,
SUM(Amount) AS Revenue
FROM Amazon_sales_rpt
GROUP BY ship_city
ORDER BY Revenue DESC;

SELECT ship_state,
SUM(Amount) AS Revenue,
COUNT(DISTINCT(Order_ID)) AS Total_order
FROM Amazon_sales_rpt
GROUP BY ship_state
ORDER BY Revenue DESC;

SELECT CAST(DATE AS DATE) AS Order_date,
SUM(Amount) AS daily_Revenue,
COUNT(DISTINCT(Order_Id)) AS daily_orders
FROM Amazon_sales_rpt
GROUP BY CAST(DATE AS DATE)
ORDER BY daily_Revenue

SELECT MONTH AS Order_month,
SUM(Amount) AS Monthly_revenue,
COUNT(DISTINCT(Order_ID)) AS Monthly_orders
FROM Amazon_sales_rpt
GROUP BY MONTH  
ORDER BY Monthly_revenue DESC;

SELECT DATENAME(WEEKDAY,DATE) AS Day_name,
SUM(Amount) AS Daily_revenue,
COUNT(DISTINCT(Order_ID)) AS Daily_orders
FROM Amazon_sales_rpt
GROUP BY DATENAME(WEEKDAY,DATE)
ORDER BY Daily_revenue DESC;
SELECT DISTINCT Ship_state
FROM Amazon_sales_rpt

SELECT DISTINCT Ship_city,
SUM(Amount) AS Revenue
FROM Amazon_sales_rpt
GROUP BY ship_city
ORDER BY Revenue DESC;

SELECT Order_ID,COUNT(*)
FROM Amazon_sales_rpt
GROUP BY Order_ID
HAVING COUNT(*)>1;

SELECT Month,
COUNT(*) AS Row_count,
COUNT(DISTINCT Order_ID) AS Orders,
SUM(Amount) AS Revenue
FROM Amazon_sales_rpt
GROUP BY Month 
