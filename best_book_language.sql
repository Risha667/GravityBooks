SELECT book_language.language_name, COUNT(book.book_id) AS book_count 
FROM book 
JOIN book_language ON book.language_id = book_language.language_id 
GROUP BY language_name 
ORDER BY COUNT(book.book_id) DESC LIMIT 1;
