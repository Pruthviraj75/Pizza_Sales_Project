-- Q.1 Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_types.category,
    ROUND(SUM(order_details.quantity * pizzas.price) / (SELECT 
                    ROUND(SUM(order_details.quantity * pizzas.price),
                                2)
                FROM
                    order_details
                        JOIN
                    pizzas ON order_details.pizza_id = pizzas.pizza_id) * 100,
            2) AS revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;


-- Q.2 Analyze the cumulative revenue generated over time.

SELECT order_date,
      SUM(revenue) OVER (ORDER BY order_date)
FROM
   (
    SELECT orders.order_date,
	       sum(order_details.quantity * pizzas.price) AS revenue
    FROM order_details JOIN pizzas
    ON order_details.pizza_id = pizzas.pizza_id
    JOIN orders 
    ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS sales;


-- Q.3 Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT category, name, revenue
FROM
(SELECT category, name, revenue,
RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS rn 
FROM
(SELECT pizza_types.category, pizza_types.name,
sum(order_details.quantity * pizzas.price) as revenue
FROM pizzas join pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id 
GROUP BY pizza_types.category, pizza_types.name) as a) as b
WHERE rn <= 3 ;

























