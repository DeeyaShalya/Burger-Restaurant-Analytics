CREATE DATABASE IF NOT EXISTS BurgerRestaurant;
USE BurgerRestaurant;

CREATE TABLE IF NOT EXISTS Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Position VARCHAR(50),
    Hire_Date DATE
);

CREATE TABLE IF NOT EXISTS Menu_Items (
    Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Item_Name VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(5, 2)
);

CREATE TABLE IF NOT EXISTS Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_Date DATE,
    Customer_ID INT,
    Employee_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

CREATE TABLE IF NOT EXISTS Order_Details (
    Order_Detail_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Item_ID INT,
    Quantity INT,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Item_ID) REFERENCES Menu_Items(Item_ID)
);

CREATE TABLE IF NOT EXISTS Sales (
    Sales_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Total_Amount DECIMAL(10, 2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
