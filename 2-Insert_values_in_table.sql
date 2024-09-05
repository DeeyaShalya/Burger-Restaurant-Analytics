USE BurgerRestaurant;

INSERT INTO Menu_Items (Item_Name, Category, Price) VALUES
('Big Mac', 'Burger', 5.99),
('Cheeseburger', 'Burger', 2.99),
('Fries', 'Side', 1.99),
('Coca Cola', 'Drink', 1.49),
('McFlurry', 'Drink', 2.99),
('Chicken Nugget', 'Side', 3.49),
('Quarter Pounder', 'Burger', 4.99),
('Milkshake', 'Drink', 3.49),
('Apple Pie', 'Dessert', 1.29),
('Onion Rings', 'Side', 2.49);

INSERT INTO Customers (First_Name, Last_Name, Email, Phone) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321'),
('Emily', 'Jones', 'emily.jones@example.com', '5551234567'),
('Michael', 'Brown', 'michael.brown@example.com', '5559876543'),
('Sarah', 'Davis', 'sarah.davis@example.com', '5552345678'),
('David', 'Wilson', 'david.wilson@example.com', '5558765432'),
('Laura', 'Taylor', 'laura.taylor@example.com', '5553456789'),
('James', 'Anderson', 'james.anderson@example.com', '5554567890'),
('Jessica', 'Thomas', 'jessica.thomas@example.com', '5556789012'),
('Daniel', 'Martinez', 'daniel.martinez@example.com', '5557890123');

INSERT INTO Employees (First_Name, Last_Name, Position, Hire_Date) VALUES
('Alice', 'Johnson', 'Cashier', '2023-01-15'),
('Bob', 'Brown', 'Manager', '2022-05-20'),
('Charlie', 'Davis', 'Cook', '2023-03-10'),
('Diana', 'Wilson', 'Shift Leader', '2022-09-25'),
('Ethan', 'Moore', 'Server', '2024-01-05'),
('Fiona', 'Taylor', 'Cashier', '2024-02-15'),
('George', 'Anderson', 'Cook', '2023-11-30'),
('Hannah', 'Thomas', 'Manager', '2022-12-15'),
('Ian', 'Martinez', 'Shift Leader', '2023-08-20'),
('Julia', 'Clark', 'Server', '2024-03-10');
