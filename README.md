Gravity Books
Table of Contents
Project Overview
Features
Technologies Used
Installation and Setup
SQL Queries Explained
Insights and Recommendations

1. Project Overview
Gravity Books is a data-driven project designed to optimize the operations of a bookstore chain by analyzing critical business metrics. It provides insights into inventory management, customer loyalty, and logistics planning using SQL queries and structured data analysis.

2. Features
Inventory Optimization: Determines the most popular book language for efficient stocking.
Author Performance Analysis: Identifies authors with minimal sales to streamline inventory.
Customer Insights: Highlights top customers for potential loyalty programs.
Logistics Planning: Suggests the best location for a new warehouse based on shipping data.

3. Technologies Used
SQL/MySQL: Database querying and manipulation.
Entity Relationship Diagram: Visual representation of database schema for better understanding.

4. Installation and Setup
Database Setup:
Import the provided schema and populate the database with sample data.
Query Execution:
Use the SQL scripts provided for analysis. Each query corresponds to a specific business question.

5. SQL Queries Explained
Example Queries:
Which language should they stock more books in?

sql code:
SELECT book_language.language_name, COUNT(book.book_id) AS book_count 
FROM book 
JOIN book_language ON book.language_id = book_language.language_id 
GROUP BY language_name 
ORDER BY COUNT(book.book_id) DESC LIMIT 1;
Output: English is the most popular language with 8,911 books.

Explained: What author should they discontinue stocking?

sql code:
SELECT author.author_name, COUNT(order_line.order_id) AS order_count 
FROM author 
JOIN book_author ON author.author_id = book_author.author_id 
JOIN book ON book_author.book_id = book.book_id 
JOIN order_line ON book.book_id = order_line.book_id 
GROUP BY author_name 
ORDER BY COUNT(order_line.order_id) ASC LIMIT 10;
Output: Lists 10 authors with minimal sales.

Explained: Where should they locate the next warehouse?

sql code:
SELECT country.country_name, COUNT(cust_order.order_id) AS order_count 
FROM country 
JOIN address ON country.country_id = address.country_id 
JOIN cust_order ON address.address_id = cust_order.dest_address_id 
GROUP BY country_name 
ORDER BY COUNT(cust_order.order_id) DESC LIMIT 1;
Output: China is identified as the best location.

6. Insights and Recommendations
Stocking: Focus on books in English, the most popular language.
Inventory: Discontinue underperforming authors to free up space for better-selling titles.
Customer Programs: Develop loyalty rewards for top customers to encourage repeat business.
Warehouse Location: Establish a warehouse in China to optimize shipping operations and reduce costs.