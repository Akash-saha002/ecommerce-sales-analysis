create database ecommerce;

use ecommerce;

select * from customers;

select upper(products.product_category)category,
        round(sum(payments.payment_value),2) sales
        from products join order_items
        on products.product_id = order_items.product_id
        join payments
        on payments.order_id = order_items.order_id
        group by category;


with product_per_order as (
select orders.order_id as ordr , customers.customer_city as city , count(order_items.product_id) as product_count
from orders join order_items on orders.order_id = order_items.order_id
            join customers on orders.customer_id = customers.customer_id
            group by ordr, city
            ) 
select city , avg(product_count) from product_per_order group by city ; 
      
      
select products.product_category, (sum(payments.payment_value)/( select sum(payment_value) from payments))*100 as category_revenue from products 
		join order_items on products.product_id = order_items.product_id
        join payments on order_items.order_id = payments.order_id
		group by products.product_category order by category_revenue desc limit 10;
                   

 select customer_id ,order_purchase_timestamp,  payment_value , avg(payment_value) over (partition by customer_id  order by order_purchase_timestamp
 rows between 2 preceding and current row) as moving_avg 
 from (select orders.customer_id , orders.order_purchase_timestamp , payments.payment_value from orders 
        join payments on orders.order_id = payments.order_id) as a ;
                   