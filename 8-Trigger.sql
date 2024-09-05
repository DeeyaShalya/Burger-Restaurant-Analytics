USE BurgerRestaurant;
-- Problem Statement: Automatically update the Total_Amount in the Sales table whenever a new sale is recorded in the Orders table.
DELIMITER //

CREATE TRIGGER UpdateSalesTotal
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE v_total_amount DECIMAL(10, 2);

    -- Calculate the total amount for the newly inserted order
    SELECT SUM(mi.Price * od.Quantity) INTO v_total_amount
    FROM Order_Details od
    JOIN Menu_Items mi ON od.Item_ID = mi.Item_ID
    WHERE od.Order_ID = NEW.Order_ID;
    
    -- Update the Sales table with the calculated total amount
    INSERT INTO Sales (Order_ID, Total_Amount)
    VALUES (NEW.Order_ID, IFNULL(v_total_amount, 0))
    ON DUPLICATE KEY UPDATE Total_Amount = IFNULL(v_total_amount, 0);
END //

DELIMITER ;
INSERT INTO Orders (Order_Date, Customer_ID, Employee_ID) VALUES
('2024-09-03', 3, 1);  -- New Order
SELECT * FROM Orders;

