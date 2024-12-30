SELECT customer.customer_id, customer.first_name, customer.last_name, 
       COUNT(cust_order.order_id) AS order_count 
FROM customer 
JOIN cust_order ON customer.customer_id = cust_order.customer_id 
GROUP BY customer.customer_id, customer.first_name, customer.last_name 
ORDER BY COUNT(cust_order.order_id) DESC LIMIT 10;
