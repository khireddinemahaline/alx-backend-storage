-- create trigger that can uodate a table after insert

DROP TRIGGER IF EXISTS update_table;
DELIMITER $$

CREATE TRIGGER update_table
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END $$

DELIMITER ;

