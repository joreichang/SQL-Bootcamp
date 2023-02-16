INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
SELECT*FROM books;
SELECT DISTINCT released_year FROM books;
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;
SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,3;
SELECT title FROM books WHERE title LIKE '%stories%';
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity, released_year DESC LIMIT 3;
SELECT title, author_lname FROM books ORDER BY author_lname, title;
SELECT UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) AS yell FROM books ORDER BY author_lname;
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname, author_fname;
SELECT COUNT(*) FROM books;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
SELECT SUM(stock_quantity) FROM books;
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname, author_lname;
SELECT CONCAT(author_fname, ' ', author_lname) FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);
SELECT now();
SELECT curtime();
SELECT DAYOFWEEK(CURDATE());
SELECT DAYNAME(curdate());
SELECT CONCAT(CURMONTH, '/', CURDAY, '/', CURYEAR);
SELECT date_format(NOW(), '%m/%d/%Y');
SELECT date_format(NOW(), '%M %D at %k:%i');
CREATE TABLE tweets (
tweet_content VARCHAR(50),
username VARCHAR(10),
created_at TIMESTAMP default CURRENT_TIMESTAMP);
DESC tweets;