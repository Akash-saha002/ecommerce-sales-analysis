SELECT * FROM ecommerce.order_items;

select product_id, price, count(order_item_id) from order_items
group by product_id , price; 


SELECT DISTINCT product_id, price, order_item_id
FROM order_items order by order_item_id desc;


select product_id, price, max(order_item_id) from order_items
group by product_id, price order by max(order_item_id)  desc; 

SELECT MAX(order_item_id) FROM order_items;

select seller_id as seller , sum(price) as revenue from order_items
        group by seller_id  order by revenue desc ;
        
select seller_id , max(price) from order_items group by seller_id order by  max(price) desc ;
