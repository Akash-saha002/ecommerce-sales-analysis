SELECT * FROM ecommerce.orders;

select count(order_id) from orders where year(order_purchase_timestamp) = 2017;

select monthname(order_purchase_timestamp), count(order_id) as order_count from orders where year (order_purchase_timestamp) = 2018 
group by monthname(order_purchase_timestamp);


select years, months, month_name, sales , SUM(sales) over (order by years, months) as running_total_sale
from (select sum(payments.payment_value) as sales,
		     year(orders.order_purchase_timestamp) as years ,
             month(orders.order_purchase_timestamp) as months , 
             monthname(orders.order_purchase_timestamp) as month_name from orders 
      join payments on orders.order_id  = payments.order_id 
      group  by years, months, month_name order by years, months ) as a ;
      

with b as (select years, sales , lag(sales , 1) over (order by years) as previous_year_sales
from(select year(orders.order_purchase_timestamp) as years, round(sum(payments.payment_value),2) as sales from orders
        join payments on orders.order_id =  payments.order_id
        group by years order by years) as a) 
        
select years, sales, previous_year_sales, round((((sales - previous_year_sales)/previous_year_sales )*100),2) as YOY_GROWTH from b;


 
