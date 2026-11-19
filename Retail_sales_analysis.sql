
DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales(

transaction_id INT PRIMARY KEY,
sale_date DATE,
sale_time TIME,
customer_id INT,
gender VARCHAR(15),
age INT,
category VARCHAR(15),
price_per_unit FLOAT,
quantity INT,
cogs FLOAT,
total_sale FLOAT

);

--View data


SELECT * FROM retail_sales;


--Data Cleaning

--  Check column containing null values and blank string in text column


SELECT* FROM retail_sales
WHERE transaction_id IS NULL
OR sale_date IS NULL
OR sale_time IS NULL
OR customer_id IS NULL
OR gender IS NULL
OR age IS NULL
OR category IS NULL
OR price_per_unit IS NULL
OR quantity IS NULL
OR cogs IS NULL
OR total_sale IS NULL;


-- Delete rows containing NULL vlaues or blank strings in text column


DELETE 
FROM retail_sales
WHERE transaction_id IS NULL
OR sale_date IS NULL
OR sale_time IS NULL
OR customer_id IS NULL
OR gender IS NULL
OR age IS NULL
OR category IS NULL
OR price_per_unit IS NULL
OR quantity IS NULL
OR cogs IS NULL
OR total_sale IS NULL;


SELECT * FROM retail_sales;


--Replace M with Male and F with Female

SELECT DISTINCT gender 
FROM retail_sales;

UPDATE retail_sales
SET gender='Male'
WHERE gender = 'M';


UPDATE retail_sales
SET gender = 'Female'
WHERE gender = 'F';


--Varify cleaned data

--DATA ANALYSIS AND BUSINESS QUESTIONS

-- Q1. Retrieve all columns for sales made on November 5, 2022.


SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05';


-- Q2. Retrieve all transactions where category is 
-- clothing, quantity sold is greater than 2,
-- and the trasnaction occured in November 2022.


SELECT * FROM retail_sales
WHERE category = 'Clothing' AND
quantity > 2 AND
sale_date BETWEEN '2022-11-01' AND '2022-11-30'
ORDER BY quantity DESC;


-- Q3. Calculate total sales revenue and total number
-- of transaction for each product category.


SELECT category,sum(total_sale) AS total_sale_revenue,count(transaction_id) AS total_order FROM retail_sales
GROUP BY category;


-- Q4. 	Find the average age of customers who purchased
-- products from the Beauty category.


SELECT ROUND(AVG(age),2) AS average_age FROM retail_sales
WHERE category = 'Beauty';


-- Q5. Retrieve all transaction where total sales exceeded 1000.


SELECT * FROM retail_sales
WHERE total_sale >=1000;


-- Q6. Calculate the total number of transactions 
-- made by each gender in each product category.


SELECT category, gender, COUNT(transaction_id) AS total_transaction
FROM retail_sales
GROUP BY category,gender ;


-- Q7. Calculate total monthly sales for each year
-- and identify the best-selling month in each year.


WITH monthly_sales AS (
SELECT EXTRACT(YEAR FROM sale_date) AS year,
EXTRACT(MONTH FROM sale_date) AS month,
SUM(total_sale) AS total_sales,
RANK() OVER (PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY SUM(total_sale) DESC )
AS rnk
FROM retail_sales
GROUP BY 1,2 )
SELECT * FROM monthly_sales
WHERE rnk=1;



-- Q8. Identify the top 5 customers based on 
-- their highest total sales.


SELECT customer_id, SUM(total_sale) AS total_Sale
FROM retail_Sales
GROUP BY customer_id
ORDER BY SUM(total_sale) DESC
LIMIT 5;


-- Q9. Calculate the number of unique customers
-- who purchased products from each category.


SELECT category , COUNT(DISTINCT(customer_id)) AS unique_customers FROM retail_sales
GROUP BY category;


-- Q10. Categorize transactions into Morning,Afternoon,
-- Evening shifts and count the orders in each shift.

-- Morning: Before 12:00 PM
-- Afternoon: 12:00 PM to before 6:00 PM
-- Evening: 6:00 PM onward


SELECT 
	CASE 
		WHEN sale_time <'12:00:00' THEN 'Morning'
		WHEN sale_time <'18:00:00' THEN 'Afternoon'
		ELSE 'Evening'
		END AS shifts,
		count(*) AS totl_orders
			FROM retail_sales
			GROUP BY shifts;
		


