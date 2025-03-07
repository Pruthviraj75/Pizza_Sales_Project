# **Pizza Sales Project**

![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-blue)
![CSV](https://img.shields.io/badge/Data-CSV%20Files-green)

This project is a **SQL-based data analysis** of pizza sales data. It includes SQL scripts for basic, intermediate, and advanced queries, along with sample datasets in CSV format. The goal of this project is to analyze pizza sales data, derive insights, and demonstrate SQL skills.

---

## **Project Structure**
The project is organized as follows:

├── Basic.sql - Basic SQL queries for pizza sales analysis

├── Intermediate.sql - Intermediate SQL queries for deeper insights

├── Advanced.sql - Advanced SQL queries for complex analysis

├── order_details.csv - CSV file containing order details

├── orders.csv - CSV file containing order information

├── pizza_types.csv - CSV file containing pizza types and categories

├── pizzas.csv - CSV file containing pizza details

---

## **Datasets**
The project uses the following CSV files:

### **1. `order_details.csv`**
- Contains details of each order, such as:
  - `order_details_id`: Unique ID for each order detail.
  - `order_id`: ID of the order.
  - `pizza_id`: ID of the pizza ordered.
  - `quantity`: Quantity of pizzas ordered.

### **2. `orders.csv`**
- Contains information about each order, such as:
  - `order_id`: Unique ID for each order.
  - `date`: Date of the order.
  - `time`: Time of the order.

### **3. `pizza_types.csv`**
- Contains details about pizza types, such as:
  - `pizza_type_id`: Unique ID for each pizza type.
  - `name`: Name of the pizza.
  - `category`: Category of the pizza (e.g., Vegetarian, Non-Vegetarian).
  - `ingredients`: List of ingredients used in the pizza.

### **4. `pizzas.csv`**
- Contains details about each pizza, such as:
  - `pizza_id`: Unique ID for each pizza.
  - `pizza_type_id`: ID of the pizza type.
  - `size`: Size of the pizza (e.g., Small, Medium, Large).
  - `price`: Price of the pizza.

---

## **SQL Scripts**
The project includes three SQL scripts for different levels of analysis:

### **1. `Basic.sql`**
- Contains basic SQL queries to:
  - Retrieve total orders.
  - Calculate total revenue.
  - Find the most ordered pizza.

### **2. `Intermediate.sql`**
- Contains intermediate SQL queries to:
  - Analyze sales by pizza category.
  - Calculate average order value.
  - Identify peak sales hours.

### **3. `Advanced.sql`**
- Contains advanced SQL queries to:
  - Perform trend analysis (e.g., monthly sales trends).
  - Calculate customer retention metrics.
  - Identify the most profitable pizza.
