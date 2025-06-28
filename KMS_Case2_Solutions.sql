---KMS MEGA STORE INVENTORY----
Select * from [dbo].[KMS Sql Case Study 22]

--- Which product category  had the highest sales ----

select product_category, SUM (Sales) as TOTAL_SALES
from [dbo].[KMS Sql Case Study 22]
group  by Product_Category
ORDER BY TOTAL_SALES DESC

-------What are the Top 3 and Bottom 3 regions in terms of sales?-----
--TOP 3 REGION--
Select TOP 3 Region , SUM(SALES) AS TOTAL_SALES
FROM [dbo].[KMS Sql Case Study 22]
GROUP BY REGION
ORDER BY TOTAL_SALES DESC;

---BOTTOM 3--
Select TOP 3 Region , SUM(SALES) AS TOTAL_SALES
FROM [dbo].[KMS Sql Case Study 22]
GROUP BY REGION
ORDER BY TOTAL_SALES ASC;

------What were the total sales of appliances in Ontario?----
select * from [dbo].[KMS Sql Case Study 22]

select SUM(SALES) AS TOTAL_APPLIANCE_SALES 
FROM [dbo].[KMS Sql Case Study 22]
WHERE Product_Sub_Category = 'Appliances' AND  Province = 'Ontario'

-----Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers---
-- First we have to look at the first Top 101 Customer --
select TOP 10 Customer_Name , Sum (Sales) AS TOTAL_SALES 
FROM [dbo].[KMS Sql Case Study 22]
GROUP BY Customer_Name 
order by TOTAL_SALES ;

-----. KMS incurred the most shipping cost using which shipping method?--(Delivery truck)
Select Ship_Mode, SUM (Shipping_Cost) as TOTAL_SHIPPING_COST
from [dbo].[KMS Sql Case Study 22]
GROUP BY Ship_Mode
order by Total_Shipping_Cost desc;

-----Who are the most valuable customers, and what products or services do they typically purchase?---

select * from [dbo].[KMS Sql Case Study 22]
-- first let look for the topn5 customer --
select TOP 5 Customer_Name 
from [dbo].[KMS Sql Case Study 22]
group by customer_name 
order by sum (sales) desc;

--now let see what they purchased--
select customer_name, product_category,
 SUM(SALES) AS TOTAL_SALES
from [dbo].[KMS Sql Case Study 22]
where customer_name IN  (
      'Emily Phan',
      'Deborah Brumfield',
      'Roy Skaria',
      'Sylvia Foulston',
      'Grant Carroll'
	  ) 
	  GROUP BY customer_name, Product_category
	  order by Customer_name , TOTAL_SALES DESC;

----Which small business customer had the highest sales?---
SELECT customer_name, SUM (SALES) AS TOTAL_SALES 
FROM [dbo].[KMS Sql Case Study 22]
where customer_segment = 'small business'
group by customer_name 
order by total_sales desc;

----Which Corporate Customer placed the most number of orders in 2009 – 2012?---
select customer_name  , count (distinct order_id) as total_order
from [dbo].[KMS Sql Case Study 22]
where customer_segment= 'corporate'
 AND TRY_CAST (Order_date as date )  between '2009-01-01' and '2012-12-31'
group by customer_name 
order by total_order desc;

-----Which consumer customer was the most profitable one?---
SELECT * FROM [dbo].[KMS Sql Case Study 22]

select customer_name , sum(profit) as sum_of_profit
from [dbo].[KMS Sql Case Study 22]
where customer_segment = 'consumer'
group by customer_name
order by sum_of_profit desc;

---Which customer returned items, and what segment do they belong to?--

SELECT DISTINCT Customer_Name, Customer_Segment
FROM [dbo].[KMS Sql Case Study 22]
WHERE Profit < 0;

SELECT Customer_Name, Customer_Segment, COUNT(*) AS return_count, SUM(Profit) AS total_loss
FROM [dbo].[KMS Sql Case Study 22]
WHERE Profit < 0
GROUP BY Customer_Name, Customer_Segment
ORDER BY total_loss;

---If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one, do you think the company
--appropriately spent shipping costs based on the Order Priority? Explain your answer--

SELECT * FROM [dbo].[KMS Sql Case Study 22]

SELECT ORDER_PRIORITY, SHIP_MODE , COUNT(*) AS NUMBER_OF_ORDER
FROM  [dbo].[KMS Sql Case Study 22]
GROUP BY ORDER_PRIORITY, SHIP_MODE
ORDER BY ORDER_PRIORITY , NUMBER_OF_ORDER DESC;



SELECT Order_Priority, Ship_Mode,
    SUM (Shipping_Cost) AS Total_Shipping_Cost,
    COUNT(*) AS Number_of_Orders
FROM  [dbo].[KMS Sql Case Study 22]
GROUP BY 
    Order_Priority, Ship_Mode;
