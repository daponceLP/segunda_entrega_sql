--Procedimiento para agregar nuevos proveedores al sistema.

USE supermercado;
DROP STORED PROCEDURE IF EXISTS agregar_proveedor

DELIMITER //
CREATE PROCEDURE agregar_proveedor(
    IN p_nombre_proveedor VARCHAR(200),
    IN p_frecuencia_entrega VARCHAR(200),
    IN p_metodo_pago ENUM('Efectivo', '30 dias', '60 dias', '90 dias')
)
BEGIN
    INSERT INTO proveedor (nombre_proveedor, frecuencia_entrega, metodo_pago)
    VALUES (p_nombre_proveedor, p_frecuencia_entrega, p_metodo_pago);
    
    SELECT LAST_INSERT_ID() AS new_proveedor_id;
END //
DELIMITER ;