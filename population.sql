<<<<<<< HEAD
=======
-- Para la generacion de datos se utiliza la pagina https://claude.ai/, solocitando 20 datos para cada tabla.
-- Los datos fueron revisados y corregidos manualmente a fin de evitar duplicados y darle sentido a las categorias y subcategorias.

>>>>>>> 4b35050f84ae487fe45a0c58b5617f863d42f2aa
-- Datos para tabla proveedor
INSERT INTO proveedor (nombre_proveedor, frecuencia_entrega, metodo_pago)
VALUES
    ('Distribuidora Lácteos SA', 'Semanal', 'Efectivo'),
    ('Carnes del Norte Ltda.', 'Quincenal', '30 dias'),
    ('Frutas Frescas Corp.', 'Semanal', '60 dias'),
    ('Bebidas Premium', 'Mensual', '90 dias'),
    ('Almacén Gourmet', 'Semanal', 'Efectivo'),
    ('Limpieza Total', 'Quincenal', '30 dias'),
    ('Perfumería Elegance', 'Mensual', '60 dias'),
    ('Snacks y Más', 'Semanal', '30 dias'),
    ('Agua Pura', 'Mensual', '90 dias'),
    ('Verduras del Valle', 'Semanal', '30 dias'),
    ('Panadería Don José', 'Diaria', 'Efectivo'),
    ('Congelados Express', 'Quincenal', '60 dias'),
    ('Dulces Delicias', 'Semanal', '30 dias'),
    ('Productos Orgánicos', 'Mensual', '90 dias'),
    ('Cervecería Artesanal', 'Quincenal', '60 dias'),
    ('Gaseosas Nacionales', 'Semanal', '30 dias'),
    ('Embutidos Selectos', 'Quincenal', '60 dias'),
    ('Conservas del Mar', 'Mensual', '90 dias'),
    ('Especias y Condimentos', 'Semanal', 'Efectivo'),
    ('Productos Congelados', 'Quincenal', '30 dias')
;

-- Datos para tabla categoria_articulo
INSERT INTO categoria_articulo (nombre_categoria, nombre_subcategoria)
VALUES
    ('Alimentos', 'Lacteos'),
    ('Frescos', 'Frutas y Verduras'),
    ('Alimentos', 'Carnicos'),
    ('Alimentos', 'Almacen'),
    ('Mercaderia General', 'Limpieza'),
    ('Mercaderia General', 'Perfumeria'),
    ('Alimentos', 'Bebidas Alcoholicas'),
    ('Alimentos', 'Gaseosas'),
    ('Alimentos', 'Aguas'),
    ('Alimentos', 'Aguas Saborizadas'),
    ('Alimentos', 'Cervezas'),
    ('Frescos', 'Frutas y Verduras'),
    ('Frescos', 'Carnicos')
;

-- Datos para tabla articulos
INSERT INTO articulos (sku, id_proveedor, id_categoria_articulo, ean, nombre_producto, costo, iva, stock)
VALUES
    ('LAC001', 1, 1, '7501234567890', 'Leche Entera', 25.50, 0.21, 500.00),
    ('CAR001', 2, 3, '7502345678901', 'Corte de Res Premium', 150.75, 0.21, 200.00),
    ('FRU001', 3, 2, '7503456789012', 'Manzanas Rojas', 45.25, 0.10, 1000.00),
    ('BEB001', 4, 7, '7504567890123', 'Vino Tinto Reserva', 80.00, 0.21, 150.00),
    ('LIM001', 6, 5, '7505678901234', 'Detergente Líquido', 35.75, 0.21, 300.00),
    ('PER001', 7, 6, '7506789012345', 'Perfume Masculino', 120.50, 0.21, 100.00),
    ('AGU001', 9, 9, '7507890123456', 'Agua Mineral', 15.25, 0.10, 2000.00),
    ('GAS001', 16, 8, '7508901234567', 'Gaseosa Cola', 22.50, 0.21, 800.00),
    ('CER001', 15, 11, '7509012345678', 'Cerveza Artesanal IPA', 45.00, 0.21, 250.00),
    ('EMB001', 17, 3, '7510123456789', 'Jamón Serrano', 95.75, 0.21, 180.00),
    ('LAC002', 1, 1, '7511234567890', 'Yogurt Natural', 18.25, 0.10, 600.00),
    ('FRU002', 3, 2, '7512345678901', 'Plátanos', 30.50, 0.10, 1200.00),
    ('ALM001', 5, 4, '7513456789012', 'Arroz Integral', 40.25, 0.10, 500.00),
    ('BEB002', 4, 7, '7514567890123', 'Whisky Single Malt', 180.00, 0.21, 75.00),
    ('LIM002', 6, 5, '7515678901234', 'Limpiador Multiusos', 25.50, 0.21, 400.00),
    ('PER002', 7, 6, '7516789012345', 'Desodorante Spray', 22.75, 0.21, 250.00),
    ('AGU002', 9, 10, '7517890123456', 'Agua Saborizada Limón', 18.50, 0.10, 1500.00),
    ('CAR002', 2, 3, '7518901234567', 'Pollo Entero', 65.25, 0.21, 300.00),
    ('CER002', 15, 11, '7519012345678', 'Cerveza Rubia', 35.50, 0.21, 400.00),
    ('ALM002', 5, 4, '7520123456789', 'Pasta Integral', 22.75, 0.10, 600.00)
;

-- Datos para tabla clientes
INSERT INTO clientes (nombre_cliente, domicilio, tipo_facturacion)
VALUES
    ('Juan Pérez', 'Av. Siempre Viva 742', 'Consumidor Final'),
    ('Empresa Constructora SA', 'Belgrano 1234', 'Factura A'),
    ('María González', 'San Martín 456', 'Consumidor Final'),
    ('Restaurante El Sabor', 'Córdoba 789', 'Factura A'),
    ('Carlos Rodríguez', 'Rivadavia 321', 'Consumidor Final'),
    ('Supermercado Local', 'Entre Ríos 567', 'Factura A'),
    ('Ana Martínez', 'Tucumán 234', 'Consumidor Final'),
    ('Hotel Cinco Estrellas', 'Lavalle 890', 'Factura A'),
    ('Pedro Sánchez', 'Jujuy 456', 'Consumidor Final'),
    ('Cafetería Moderna', 'Santa Fe 123', 'Factura A'),
    ('Laura Torres', 'Mendoza 678', 'Consumidor Final'),
    ('Distribuidora Alimentos', 'Neuquén 901', 'Factura A'),
    ('Roberto Díaz', 'Chaco 345', 'Consumidor Final'),
    ('Bar El Encuentro', 'Salta 567', 'Factura A'),
    ('Mónica Fernández', 'Santiago del Estero 234', 'Consumidor Final'),
    ('Panadería Don José', 'San Juan 789', 'Factura A'),
    ('Eduardo López', 'Corrientes 456', 'Consumidor Final'),
    ('Heladería Artesanal', 'Misiones 123', 'Factura A'),
    ('Susana Campos', 'Formosa 890', 'Consumidor Final'),
    ('Kiosco de Barrio', 'La Rioja 567', 'Factura A')
;

-- Datos para tabla categoria_ajustes
INSERT INTO categoria_ajustes (categoria_ajuste)
VALUES
    ('Dañado'),
    ('Vencido'),
    ('Error Inventario'),
    ('Conteo Ciclico')
;

-- Datos para tabla ajustes
INSERT INTO ajustes (id_categoria_ajustes, fecha, sku, cantidad_ajustada)
VALUES
    (1, '2024-01-15 10:30:00', 'LAC001', -50),
    (2, '2024-01-20 14:45:00', 'CAR001', -20),
    (3, '2024-02-05 09:15:00', 'FRU001', 100),
    (4, '2024-02-10 16:20:00', 'BEB001', -10),
    (1, '2024-02-25 11:40:00', 'LIM001', -25),
    (2, '2024-03-05 13:50:00', 'PER001', -15),
    (3, '2024-03-15 08:25:00', 'AGU001', 200),
    (4, '2024-03-20 17:10:00', 'GAS001', -40),
    (1, '2024-04-01 10:05:00', 'CER001', -30),
    (2, '2024-04-10 15:30:00', 'EMB001', -25),
    (3, '2024-04-20 09:45:00', 'LAC002', 75),
    (4, '2024-05-01 14:15:00', 'FRU002', -50),
    (1, '2024-05-10 11:20:00', 'ALM001', -20),
    (2, '2024-05-20 16:40:00', 'BEB002', -10),
    (3, '2024-06-05 08:50:00', 'LIM002', 100),
    (4, '2024-06-15 13:25:00', 'PER002', -15),
    (1, '2024-06-25 10:35:00', 'AGU002', -30),
    (2, '2024-07-05 15:45:00', 'CAR002', -40),
    (3, '2024-07-15 09:10:00', 'CER002', 50),
    (4, '2024-07-25 16:55:00', 'ALM002', -25)
;

-- Datos para tabla ventas
INSERT INTO ventas (sku, id_clientes, cantidad_sku, fecha) 
VALUES
    ('LAC001', 1, 2, '2024-01-15 10:30:00'),
    ('CAR001', 2, 1, '2024-01-20 14:45:00'),
    ('FRU001', 3, 3, '2024-02-05 09:15:00'),
    ('BEB001', 4, 2, '2024-02-10 16:20:00'),
    ('LIM001', 5, 1, '2024-02-25 11:40:00'),
    ('PER001', 6, 1, '2024-03-05 13:50:00'),
    ('AGU001', 7, 5, '2024-03-15 08:25:00'),
    ('GAS001', 8, 2, '2024-03-20 17:10:00'),
    ('CER001', 9, 1, '2024-04-01 10:05:00'),
    ('EMB001', 10, 2, '2024-04-10 15:30:00'),
    ('LAC002', 11, 3, '2024-04-20 09:45:00'),
    ('FRU002', 12, 4, '2024-05-01 14:15:00'),
    ('ALM001', 13, 2, '2024-05-10 11:20:00'),
    ('BEB002', 14, 1, '2024-05-20 16:40:00'),
    ('LIM002', 15, 1, '2024-06-05 08:50:00'),
    ('PER002', 16, 1, '2024-06-15 13:25:00'),
    ('AGU002', 17, 3, '2024-06-25 10:35:00'),
    ('CAR002', 18, 2, '2024-07-05 15:45:00'),
    ('CER002', 19, 1, '2024-07-15 09:10:00'),
    ('ALM002', 20, 2, '2024-07-25 16:55:00')
<<<<<<< HEAD
;
=======
;
>>>>>>> 4b35050f84ae487fe45a0c58b5617f863d42f2aa
