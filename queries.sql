SELECT * 
FROM orders 
WHERE customer_id IN (
    SELECT customer_id 
    FROM customers 
    WHERE city = 'Pune'
);

-- Optimized Query with Index and JOIN
CREATE INDEX idx_customers_city ON customers(city);

SELECT o.* 
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'Pune';