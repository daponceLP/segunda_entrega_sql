-- Descontar articulos vendidos

USE supermercado
DROP TRIGGER IF EXISTS descontar_ventas_de_stock

DELIMITER //
CREATE TRIGGER descontar_ventas_de_stock
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
    -- descuenta los articulos despues de una venta
    UPDATE articulos
    SET stock = stock - NEW.cantidad_sku
    WHERE sku = NEW.sku;
END;//
DELIMITER ;

-- Evitar que se borren productos con historial de ventas

USE supermercado
DROP TRIGGER IF EXISTS descontar_ventas_de_stock

DELIMITER //
CREATE TRIGGER borrar_sku_vendidos
BEFORE DELETE ON articulos
FOR EACH ROW
BEGIN
    DECLARE sales_count INT;
    
    -- revisa si el producto tuvo ventas
    SELECT COUNT(*) INTO sales_count
    FROM ventas
    WHERE sku = OLD.sku;
    
    -- evita borra productos con ventas
    IF sales_count > 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Sku con ventas';
    END IF;
END;//
DELIMITER ;
