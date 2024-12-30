SELECT author.author_name, COUNT(order_line.order_id) AS order_count 
FROM author 
JOIN book_author ON author.author_id = book_author.author_id 
JOIN book ON book_author.book_id = book.book_id 
JOIN order_line ON book.book_id = order_line.book_id 
GROUP BY author_name 
ORDER BY COUNT(order_line.order_id) ASC LIMIT 10;
