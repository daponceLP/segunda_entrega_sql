-- Para la generacion de datos se utiliza la pagina https://claude.ai/, solocitando 20 datos para cada tabla.
-- Los datos fueron revisados y corregidos manualmente a fin de evitar duplicados y darle sentido a las categorias y subcategorias.

USE supermercado;

-- Datos generados para tabla Proveedor
INSERT INTO proveedor (nombre_proveedor, frecuencia_entrega, metodo_pago) VALUES
('Distribuidora Norte SA', 'Semanal', 'Efectivo'),
('Lácteos del Valle', 'Quincenal', '30 dias'),
('Frutas Frescas Import', 'Semanal', '60 dias'),
('Carnes Premium', 'Semanal', '90 dias'),
('Limpieza Total', 'Mensual', 'Efectivo'),
('Bebidas Refrescantes', 'Quincenal', '30 dias'),
('Almacén Gourmet', 'Semanal', '60 dias'),
('Perfumería Elegance', 'Mensual', '90 dias'),
('Aguas Cristalinas', 'Quincenal', 'Efectivo'),
('Cervezas Artesanales', 'Mensual', '30 dias'),
('Snacks y Piqueos', 'Semanal', '60 dias'),
('Congelados Express', 'Quincenal', '90 dias'),
('Verduras del Campo', 'Semanal', 'Efectivo'),
('Panificadora San José', 'Quincenal', '30 dias'),
('Dulces Tentaciones', 'Mensual', '60 dias'),
('Conservas Nacionales', 'Semanal', '90 dias'),
('Jugos Naturales', 'Quincenal', 'Efectivo'),
('Pastas Gourmet', 'Mensual', '30 dias'),
('Aceites y Condimentos', 'Semanal', '60 dias'),
('Productos Orgánicos', 'Quincenal', '90 dias')

-- Datos generados para tabla Categoria Articulo
INSERT INTO categoria_articulo (nombre_categoria, nombre_subcategoria) VALUES
('Alimentos', 'Lacteos'),
('Alimentos', 'Frutas y Verduras'),
('Alimentos', 'Carnicos'),
('Mercaderia General', 'Limpieza'),
('Mercaderia General', 'Perfumeria'),
('Alimentos', 'Bebidas Alcoholicas'),
('Alimentos', 'Gaseosas'),
('Alimentos', 'Aguas'),
('Alimentos', 'Aguas Saborizadas'),
('Alimentos', 'Cervezas')
;

-- Datos generados para tabla Articulos
INSERT INTO articulos (sku, id_proveedor, id_categoria_articulo, ean, nombre_producto, costo, stock) VALUES
('MILK001', 2, 1, '7501234567890', 'Leche Entera 1L', 1.50, 100.50),
('FRUIT001', 3, 2, '7502345678901', 'Manzanas Rojas x1kg', 2.25, 50.75),
('MEAT001', 4, 3, '7503456789012', 'Asado de Tira x1kg', 8.50, 25.30),
('CLEAN001', 5, 5, '7504567890123', 'Detergente Líquido 750ml', 3.20, 75.60),
('PERF001', 8, 6, '7505678901234', 'Desodorante Spray', 2.80, 60.40),
('WINE001', 6, 7, '7506789012345', 'Vino Tinto Reserva', 12.50, 40.20),
('SODA001', 6, 8, '7507890123456', 'Coca Cola 2.25L', 2.10, 90.75),
('WATER001', 9, 9, '7508901234567', 'Agua Mineral 1.5L', 1.20, 120.50),
('FLAVOR001', 6, 10, '7509012345678', 'Agua Saborizada Naranja', 1.50, 80.25),
('BEER001', 10, 11, '7510123456789', 'Cerveza Artesanal IPA', 3.75, 45.60),
('YOGURT001', 2, 1, '7511234567890', 'Yogurt Natural 200g', 1.10, 70.40),
('VEG001', 13, 2, '7512345678901', 'Tomates x1kg', 1.80, 55.20),
('CHICKEN001', 4, 3, '7513456789012', 'Pechuga de Pollo x1kg', 5.50, 35.75),
('PASTA001', 18, 4, '7514567890123', 'Fideos Espagueti 500g', 1.25, 90.30),
('PERF002', 8, 6, '7515678901234', 'Shampoo Anticaspa', 4.20, 50.80),
('RUM001', 6, 7, '7516789012345', 'Ron Añejo 750ml', 15.50, 30.15),
('SPRITE001', 6, 8, '7517890123456', 'Sprite 2.25L', 2.20, 85.60),
('SELTZER001', 9, 9, '7518901234567', 'Agua con Gas', 1.40, 110.25),
('CHIPS001', 11, 4, '7519012345678', 'Papas Fritas 100g', 1.60, 65.40),
('CHEESE001', 2, 1, '7520123456789', 'Queso Mozzarella x500g', 3.75, 40.20)
;

-- Datos generados para tabla Clientes
INSERT INTO clientes (nombre_cliente, domicilio, tipo_facturacion) VALUES
('Juan Pérez', 'Av. Siempre Viva 742', 'Consumidor Final'),
('Empresa ACME', 'Calle Falsa 123', 'Factura A'),
('María Rodriguez', 'Belgrano 456', 'Consumidor Final'),
('Supermercado Local', 'Rivadavia 789', 'Factura A'),
('Carlos Gómez', 'San Martín 1010', 'Consumidor Final'),
('Roberto Fernández', 'Mitre 222', 'Consumidor Final'),
('Tienda Mayorista', 'Corrientes 333', 'Factura A'),
('Ana López', 'Libertad 555', 'Consumidor Final'),
('Santiago Martínez', 'Sarmiento 777', 'Consumidor Final'),
('Distribuidora Regional', 'Moreno 888', 'Factura A'),
('Laura Torres', 'Independencia 999', 'Consumidor Final'),
('Miguel Sánchez', 'Tucumán 111', 'Consumidor Final'),
('Comercio Pequeño', ' 9 de Julio 222', 'Factura A'),
('Sofía Ruiz', 'Colón 333', 'Consumidor Final'),
('Pedro Díaz', 'Pellegrini 444', 'Consumidor Final'),
('Kiosco Central', 'San Juan 555', 'Factura A'),
('Elena García', 'Riveira 666', 'Consumidor Final'),
('Martín Núñez', 'Alsina 777', 'Consumidor Final'),
('Almacén de Barrio', 'Belgrano 888', 'Factura A'),
('Diego Morales', 'España 999', 'Consumidor Final')
;

-- Datos generados para tabla Categoria Ajustes
INSERT INTO categoria_ajustes (categoria_ajuste) VALUES
('Dañado'),
('Vencido'),
('Error Inventario'),
('Conteo Ciclico'),
;

-- Datos generados para tabla Ajustes
INSERT INTO ajustes (id_categoria_ajustes, fecha, sku, cantidad_ajustada) VALUES
(1, '2024-01-15 10:30:00', 'MILK001', -5),
(2, '2024-02-20 14:45:00', 'FRUIT001', -3),
(3, '2024-03-10 09:15:00', 'MEAT001', 10),
(4, '2024-04-05 16:20:00', 'CLEAN001', -2),
(1, '2024-01-25 11:40:00', 'PERF001', -1),
(2, '2024-02-12 15:30:00', 'WINE001', -4),
(3, '2024-03-18 08:50:00', 'SODA001', 7),
(4, '2024-04-22 13:10:00', 'WATER001', -6),
(1, '2024-01-05 17:25:00', 'FLAVOR001', -2),
(2, '2024-02-28 10:05:00', 'BEER001', -3),
(3, '2024-03-07 14:15:00', 'YOGURT001', 5),
(4, '2024-04-15 09:35:00', 'VEG001', -4),
(1, '2024-01-18 16:40:00', 'CHICKEN001', -2),
(2, '2024-02-10 11:20:00', 'PASTA001', -1),
(3, '2024-03-22 15:50:00', 'PERF002', 8),
(4, '2024-04-01 08:30:00', 'RUM001', -3),
(1, '2024-01-30 13:45:00', 'SPRITE001', -5),
(2, '2024-02-14 16:10:00', 'SELTZER001', -2),
(3, '2024-03-05 10:25:00', 'CHIPS001', 6),
(4, '2024-04-18 14:05:00', 'CHEESE001', -4)
;

-- Datos generados para tabla Ventas
INSERT INTO ventas (sku, id_clientes, cantidad_sku, fecha) VALUES
('MILK001', 1, 2, '2024-01-10 15:30:00'),
('FRUIT001', 3, 1, '2024-01-15 11:45:00'),
('MEAT001', 5, 3, '2024-01-20 16:20:00'),
('CLEAN001', 7, 1, '2024-02-05 09:15:00'),
('PERF001', 9, 2, '2024-02-12 14:40:00'),
('WINE001', 11, 1, '2024-02-18 17:10:00'),
('SODA001', 13, 4, '2024-02-25 10:30:00'),
('WATER001', 15, 2, '2024-03-01 13:50:00'),
('FLAVOR001', 17, 3, '2024-03-10 08:25:00'),
('BEER001', 19, 1, '2024-03-15 16:05:00'),
('YOGURT001', 2, 2, '2024-03-22 11:20:00'),
('VEG001', 4, 1, '2024-03-28 15:40:00'),
('CHICKEN001', 6, 2, '2024-04-02 09:55:00'),
('PASTA001', 8, 3, '2024-04-10 14:15:00'),
('PERF002', 10, 1, '2024-04-18 16:30:00'),
('RUM001', 12, 1, '2024-04-25 10:45:00'),
('SPRITE001', 14, 2, '2024-05-01 13:10:00'),
('SELTZER001', 16, 1, '2024-05-08 15:25:00'),
('CHIPS001', 18, 3, '2024-05-15 09:40:00'),
('CHEESE001', 20, 2, '2024-05-22 16:50:00')
;