USE BurgerRestaurant;

INSERT INTO Orders (Order_Date, Customer_ID, Employee_ID) VALUES
('2024-09-01', 1, 1),
('2024-09-02', 2, 2),
('2024-09-03', 3, 1),
('2024-09-04', 4, 3),
('2024-09-05', 5, 2);

INSERT INTO Order_Details (Order_ID, Item_ID, Quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 2),
(2, 4, 1),
(3, 5, 1),
(3, 6, 6),
(4, 7, 1),
(4, 8, 1),
(5, 9, 2),
(5, 10, 3);



