USE BurgerRestaurant;
-- Total Sales by Item
SELECT 
    mi.Item_Name, 
    SUM(od.Quantity) AS Total_Quantity_Sold, 
    SUM(od.Quantity * mi.Price) AS Total_Revenue
FROM 
    Order_Details od
JOIN 
    Menu_Items mi ON od.Item_ID = mi.Item_ID
GROUP BY 
    mi.Item_Name;

-- Total Revenue by Category
SELECT 
    mi.Category, 
    SUM(od.Quantity * mi.Price) AS Total_Revenue
FROM 
    Order_Details od
JOIN 
    Menu_Items mi ON od.Item_ID = mi.Item_ID
GROUP BY 
    mi.Category;

-- Top 3 Most Popular Items
SELECT 
    mi.Item_Name, 
    SUM(od.Quantity) AS Total_Quantity_Sold
FROM 
    Order_Details od
JOIN 
    Menu_Items mi ON od.Item_ID = mi.Item_ID
GROUP BY 
    mi.Item_Name
ORDER BY 
    Total_Quantity_Sold DESC
LIMIT 3;
