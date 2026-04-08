select * from pizza_sales

select datename(DW,order_date) as Day_Name, count(distinct(order_id)) as Total_Orders
from pizza_sales
group by datename(DW,order_date)

select datename(month, order_date) as Month_Name, count(distinct(order_id)) as Total_Orders
from pizza_sales
group by datename(month,order_date),
datepart(month,order_date)
order by datepart(month, order_date)

select pizza_category, sum(total_price) as Total_Sales, (sum(total_price) / (select sum(total_price) from pizza_sales)) * 100 as Total_Sales_Per
from pizza_sales
where month(order_date) =1 
group by pizza_category

select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue desc





