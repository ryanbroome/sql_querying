-- Comments in SQL Start with dash-dash --
--QUERY 1 --
SELECT app_name FROM analytics 
WHERE id = 1880;

--QUERY 2--
SELECT id, app_name FROM analytics
WHERE last_updated = '2018-08-01';

--QUERY 3 --
SELECT category, COUNT(*) FROM analytics GROUP BY category;

--QUERY 4 --
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

--QUERY 5 --
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

-- QUERY 6 --
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;

--QUERY 7 --
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

--QUERY 8 --
SELECT app_name FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating DESC;

--QUERY 9 --
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews > 10000;

--QUERY 10 --
SELECT app_name, reviews, price FROM analytics WHERE price > .1 AND price < 1 ORDER BY reviews DESC LIMIT 10;

--QUERY 11 --
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;

--QUERY 12 --
SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;

--QUERY 13 --
SELECT COUNT(reviews) FROM analytics;

--QUERY 14 -- 
SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) >  300;

--QUERY 15--
SELECT app_name, reviews, min_installs,(min_installs/ reviews) AS prop FROM analytics WHERE min_installs > 100000 ORDER BY prop DESC LIMIT 1;
