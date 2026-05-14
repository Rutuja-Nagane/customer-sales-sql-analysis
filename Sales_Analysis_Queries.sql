use sales;

ALTER TABLE customer_order
CHANGE `Order ID` order_id VARCHAR(20),
CHANGE `Order Date` order_date VARCHAR(20),
CHANGE CustomerName customer_name VARCHAR(100);

ALTER TABLE detail
CHANGE `Order ID` order_id VARCHAR(20),
CHANGE `Sub-Category` sub_category VARCHAR(100),
CHANGE PaymentMode payment_mode VARCHAR(50);

#Query 1 — View First 10 Rows
SELECT * FROM customer_order LIMIT 10;

#Shows total number of unique customer orders.
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM customer_order;

#Shows total number of unique customer orders.
SELECT SUM(amount) AS total_revenue
FROM detail;

#Shows overall business profitability.
SELECT SUM(profit) AS total_profit
FROM detail;


#Shows overall business profitability.
SELECT ROUND(AVG(amount),2) AS average_order_value
FROM detail;

#Top 10 Customers by Revenue
SELECT
    c.customer_name,
    SUM(d.amount) AS total_spent
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 10;

#Top 10 Customers by Profit
SELECT
    c.customer_name,
    SUM(d.profit) AS total_profit
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY c.customer_name
ORDER BY total_profit DESC
LIMIT 10;

#Identifies most demanded product category.
SELECT
    category,
    SUM(quantity) AS total_quantity_sold
FROM detail
GROUP BY category
ORDER BY total_quantity_sold DESC;

#Highest Revenue Generating Category
SELECT
    category,
    SUM(amount) AS revenue
FROM detail
GROUP BY category
ORDER BY revenue DESC;

#Most Profitable Category
SELECT
    category,
    SUM(profit) AS total_profit
FROM detail
GROUP BY category
ORDER BY total_profit DESC;

#Top Selling Sub-Categories
SELECT
    sub_category,
    SUM(quantity) AS quantity_sold
FROM detail
GROUP BY sub_category
ORDER BY quantity_sold DESC
LIMIT 10;

#Revenue by State
SELECT
    c.state,
    SUM(d.amount) AS total_revenue
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY c.state
ORDER BY total_revenue DESC;

#Profit by State
SELECT
    c.state,
    SUM(d.profit) AS total_profit
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY c.state
ORDER BY total_profit DESC;

#Top Cities by Orders
SELECT
    city,
    COUNT(order_id) AS total_orders
FROM customer_order
GROUP BY city
ORDER BY total_orders DESC
LIMIT 10;

#Most Used Payment Method
SELECT
    payment_mode,
    COUNT(*) AS total_transactions
FROM detail
GROUP BY payment_mode
ORDER BY total_transactions DESC;

#Revenue by Payment Method
SELECT
    payment_mode,
    SUM(amount) AS total_revenue
FROM detail
GROUP BY payment_mode
ORDER BY total_revenue DESC;

#Loss Making Products
SELECT
    sub_category,
    SUM(profit) AS total_profit
FROM detail
GROUP BY sub_category
HAVING total_profit < 0
ORDER BY total_profit;

#Profit Margin
SELECT
    ROUND((SUM(profit) / SUM(amount)) * 100,2) AS profit_margin_percentage
FROM detail;

#Monthly Sales Trend
SELECT
    MONTH(STR_TO_DATE(order_date,'%d-%m-%Y')) AS month_number,
    SUM(d.amount) AS monthly_sales
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY month_number
ORDER BY month_number;

#Monthly Profit Trend
SELECT
    MONTH(STR_TO_DATE(order_date,'%d-%m-%Y')) AS month_number,
    SUM(d.profit) AS monthly_profit
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY month_number
ORDER BY month_number;

#Top 5 Most Profitable Customers
SELECT
    c.customer_name,
    SUM(d.profit) AS profit_generated
FROM customer_order c
JOIN detail d
ON c.order_id = d.order_id
GROUP BY c.customer_name
ORDER BY profit_generated DESC
LIMIT 5;

#Category Contribution Percentage
SELECT
    category,
    ROUND((SUM(amount) / (SELECT SUM(amount) FROM detail)) * 100,2) AS contribution_percentage
FROM detail
GROUP BY category
ORDER BY contribution_percentage DESC;

#Average Profit Per Order
SELECT
    ROUND(AVG(profit),2) AS avg_profit_per_order
FROM detail;



