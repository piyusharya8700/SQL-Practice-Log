select * from orders
-- top 10 
select * from orders limit 10
-- select only customers info
select customer_id, customer_status from orders
-- select only gold customer info
select * from orders where customer_status in ('Gold', 'GOLD')
-- total orders done 
select count(order_id) from orders
-- total gross revenue
select sum(total_retail_price_for_this_order) from orders
-- which customer is our bigggest money maker
select customer_status, sum(total_retail_price_for_this_order) from orders group by customer_status

-- after running the upper query i came to know that the customer status consists of two types one
--is Gold and other is GOLD same with every customer status

update orders set customer_status='Gold' where customer_status='GOLD'
-- lets try to make it less of repititive work
update orders set customer_status=case
when customer_status='PLATINUM' then 'Platinum'
when customer_status='SILVER' then 'Silver'
else customer_status
end

-- now lets check 
select distinct customer_status from orders

-- now lets see the jan details
select distinct date_order_was_placed from orders where date_order_was_placed < '2017-02-01' order by date_order_was_placed
-- now lets see for feb
select distinct date_order_was_placed from orders where date_order_was_placed >= '2017-02-01' and date_order_was_placed < '2017-03-01' order by date_order_was_placed
