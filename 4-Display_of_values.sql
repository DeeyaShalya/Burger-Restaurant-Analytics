USE BurgerRestaurant;
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Menu_Items;
SELECT * FROM Orders;
SELECT * FROM Order_Details;
SELECT * FROM Sales;

-- Show All Names of Items Ordered with Their Order Details
SELECT 
    o.Order_ID,
    mi.Item_Name,
    od.Quantity,
    mi.Price,
    (od.Quantity * mi.Price) AS Total_Price
FROM 
    Order_Details od
JOIN 
    Menu_Items mi ON od.Item_ID = mi.Item_ID
JOIN 
    Orders o ON od.Order_ID = o.Order_ID
ORDER BY 
    o.Order_ID, mi.Item_Name;
