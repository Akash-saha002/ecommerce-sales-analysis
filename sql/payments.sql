SELECT * FROM ecommerce.payments;

select (sum(case when payment_installments >=1 then 1 
            else 0 end))/ count(*)*100 from payments;
            
 
 with b as (select customer, years, total_spent, dense_rank() over(partition by years order by total_spent desc) as d_rank 
 from(select orders.customer_id as customer , 
		year(orders.order_purchase_timestamp) as years , 
		round(sum(payments.payment_value),2) as total_spent
 from orders join payments on orders.order_id = payments.order_id
			  group by customer, years order by total_spent desc) as a )
select customer, years, total_spent, d_rank from b where d_rank <= 3 ;

            
            
