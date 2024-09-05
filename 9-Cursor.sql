USE BurgerRestaurant;
-- Problem Statement: Fetch and display all employees who have been hired in the last 30 days.
DELIMITER //

CREATE PROCEDURE FetchRecentEmployees()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_first_name VARCHAR(50);
    DECLARE v_last_name VARCHAR(50);
    DECLARE v_hire_date DATE;
    
    -- Declare the cursor
    DECLARE emp_cursor CURSOR FOR
        SELECT First_Name, Last_Name, Hire_Date
        FROM Employees
        WHERE Hire_Date > CURDATE() - INTERVAL 30 DAY;
    
    -- Declare a handler for when the cursor has no more rows
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Open the cursor
    OPEN emp_cursor;
    
    -- Loop through the cursor
    read_loop: LOOP
        FETCH emp_cursor INTO v_first_name, v_last_name, v_hire_date;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Display the employee information
        SELECT CONCAT('Employee: ', v_first_name, ' ', v_last_name, ', Hire Date: ', v_hire_date) AS Employee_Info;
    END LOOP;
    
    -- Close the cursor
    CLOSE emp_cursor;
END //

DELIMITER ;
CALL FetchRecentEmployees();


