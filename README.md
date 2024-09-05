# Burger-Restaurant-Analytics
🚀 Overview
Welcome to the Burger Restaurant Analytics project! This project offers a comprehensive data analysis solution for a burger restaurant similar to McDonald's. By leveraging SQL, we can analyze various aspects of sales data to uncover valuable insights into customer behavior, sales trends, and overall restaurant performance.

🛠️ Database Structure
The database for this project is designed to capture and analyze key aspects of restaurant operations. Here’s a summary of the key tables used:

Menu_Items: Contains details about the menu items, including their names, categories, and prices.
Orders: Records each order placed, including the date, the customer who placed the order, and the employee who handled it.
Order_Details: Links each order to specific menu items and their quantities.
Employees: Keeps track of employee details, including their names, positions, and hire dates.
Sales: Stores the total sales amount for each order.
📊 Key Features and Functionality
Calculate Total Price for Orders:

This function calculates the total price of an order based on the items and their quantities. It helps in verifying the order's final amount.
Add New Employees:

This procedure inserts new employee records into the database. It includes details like first name, last name, position, and hire date.
Automatic Sales Update:

A trigger automatically updates the total sales amount in the Sales table whenever a new order is recorded. This ensures that the sales data is always up-to-date.
Fetch Recent Hires:

This cursor-based stored procedure retrieves and displays all employees who have been hired in the last 30 days. It is useful for monitoring recent staffing changes.
💡 Examples of Data Insights
Sales Trends: Analyzing sales data over time helps identify peak sales periods and trends.
Customer Spending: Understanding how much each customer spends can assist in targeted promotions and loyalty programs.
Employee Performance: Monitoring recent hires and their performance can aid in HR decisions and training needs.
🛠️ Running the Project
Create the Database:

Set up the BurgerRestaurant database with all necessary tables and relationships.
Insert Sample Data:

Populate the database with sample data for menu items, orders, employees, etc.
Execute Procedures and Functions:

Run the stored procedures and functions to calculate totals, add employees, and update sales data.
Verify Outputs:

Use queries to check the results of the procedures and functions, ensuring that all operations perform as expected.
