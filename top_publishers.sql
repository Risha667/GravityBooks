SELECT publisher.publisher_name, COUNT(order_line.order_id) AS order_count 
FROM publisher 
JOIN book ON publisher.publisher_id = book.publisher_id 
JOIN order_line ON book.book_id = order_line.book_id 
GROUP BY publisher.publisher_name 
ORDER BY COUNT(order_line.order_id) DESC LIMIT 5;
