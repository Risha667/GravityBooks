SELECT country.country_name, COUNT(cust_order.order_id) AS order_count 
FROM country 
JOIN address ON country.country_id = address.country_id 
JOIN cust_order ON address.address_id = cust_order.dest_address_id 
GROUP BY country_name 
ORDER BY COUNT(cust_order.order_id) DESC LIMIT 1;
