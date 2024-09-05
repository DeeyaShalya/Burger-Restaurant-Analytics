USE BurgerRestaurant;
-- Problem Statement: Calculate the total price for a specific order based on the Order_ID.
DELIMITER //

CREATE FUNCTION CalculateTotalPrice(p_order_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE v_total_price DECIMAL(10, 2);

    SELECT SUM(mi.Price * od.Quantity) INTO v_total_price
    FROM Order_Details od
    JOIN Menu_Items mi ON od.Item_ID = mi.Item_ID
    WHERE od.Order_ID = p_order_id;

    RETURN IFNULL(v_total_price, 0);
END //

DELIMITER ;
SELECT CalculateTotalPrice(1) AS TotalPrice;  -- Replace with actual Order_ID
SELECT CalculateTotalPrice(2) AS TotalPrice;  -- Replace with the actual `Order_ID` 
