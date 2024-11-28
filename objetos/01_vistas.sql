
-- VISTA TOP 5 PRODUCTOS MAS VENDIDOS
-- Nos permite determinar cuales son los productos que mas se venden

USE supermercado;
DROP VIEW IF EXISTS top_5_articulos_mas_vendidos

CREATE VIEW top_5_articulos_mas_vendidos AS
SELECT 
    a.sku,
    a.nombre_producto,
    SUM(v.cantidad_sku) AS cantidad_total_vendida
FROM 
    articulos AS a
JOIN 
    ventas AS v ON a.sku = v.sku
GROUP BY 
    a.sku, 
    a.nombre_producto
ORDER BY 
    cantidad_total_vendida DESC
LIMIT 5;


-- VISTA DE ARTICULOS
-- Nos permite ver la informacion mas relevante de los articulos que comercia el negocio.

USE supermercado;
DROP VIEW IF EXISTS vista_de_articulos

CREATE VIEW vista_de_articulos AS
SELECT 
    a.sku,
    a.nombre_producto,
    a.costo,
    a.stock,
    p.nombre_proveedor,
    p.frecuencia_entrega,
    p.metodo_pago,
    ca.nombre_categoria,
    ca.nombre_subcategoria
FROM articulos AS a
JOIN proveedor AS p ON a.id_proveedor = p.id_proveedor
JOIN categoria_articulo AS ca ON a.id_categoria_articulo = ca.id_categoria_articulo
;

