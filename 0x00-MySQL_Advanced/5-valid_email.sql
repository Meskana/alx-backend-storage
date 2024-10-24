-- SQL script to create a trigger that resets the valid_email attribute only when the email has changed

DELIMITER $$

CREATE TRIGGER reset_valid_email_on_change
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has changed
    IF NEW.email <> OLD.email THEN
        -- Reset valid_email to false (or 0) when email is changed
        SET NEW.valid_email = 0;
    END IF;
END $$

DELIMITER ;
