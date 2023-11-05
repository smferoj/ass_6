
// task-1
SELECT
  c.customer_id,
  c.name,
  c.email,
  c.location,
  COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name, c.email, c.location
ORDER BY total_orders DESC;

// task-2
SELECT
  o.order_id,
  p.name AS product_name,
  oi.quantity,
  oi.unit_price,
  oi.quantity * oi.unit_price AS total_amount
FROM Order_Items oi
JOIN Orders o ON o.order_id = oi.order_id
JOIN Products p ON p.product_id = oi.product_id
ORDER BY o.order_id ASC;

// task-3
SELECT
c.name AS category_name,
SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Order_Items oi
JOIN Products p ON p.product_id = oi.product_id
JOIN Categories c ON c.category_id = p.category_id
GROUP
 
BY c.name
ORDER BY total_revenue DESC;

// task-4
SELECT
c.name,
SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
FROM Order_Items oi
JOIN Orders o ON o.order_id = oi.order_id
JOIN Customers c ON c.customer_id = o.customer_id
GROUP
BY c.name
ORDER
 
BY total_purchase_amount DESC
LIMIT 5;
 
