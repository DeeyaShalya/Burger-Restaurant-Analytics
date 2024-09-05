USE BurgerRestaurant;
-- Problem Statement: Insert a new employee record into the Employees table.
DELIMITER //

CREATE PROCEDURE AddEmployee(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_position VARCHAR(50),
    IN p_hire_date DATE
)
BEGIN
    INSERT INTO Employees (First_Name, Last_Name, Position, Hire_Date)
    VALUES (p_first_name, p_last_name, p_position, p_hire_date);

    -- COMMIT is not needed here as it is handled by the caller in MySQL
    -- SELECT 'Employee added successfully.';  -- This is optional, for feedback
END //

DELIMITER ;
CALL AddEmployee('John', 'Doe', 'Manager', CURDATE());
SELECT * FROM Employees;