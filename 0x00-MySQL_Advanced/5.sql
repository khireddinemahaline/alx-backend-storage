-- use trigger to trigger the change of email

DELIMITER $$

CREATE TRIGGER valid_message
BEFORE UPDATE 
ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0; -- Set to 0 if the email has changed
    ELSE 
        SET NEW.valid_email = NEW.valid_email; -- Maintain current valid_email value
    END IF;
END$$

DELIMITER ;

