DROP DATABASE IF EXISTS supermercado;
CREATE DATABASE supermercado;
USE supermercado;


CREATE TABLE proveedor(
   id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nombre_proveedor VARCHAR(200),
   frecuencia_entrega VARCHAR(200),
   metodo_pago ENUM('Efectivo', '30 dias', '60 dias', '90 dias')
);
CREATE TABLE categoria_articulo(
    id_categoria_articulo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria ENUM('Mercaderia General', 'Alimentos', 'Frescos'),
    nombre_subcategoria ENUM('Lacteos', 'Frutas y Verduras', 'Carnicos', 'Almacen', 'Limpieza', 'Perfumeria', 'Bebidas Alcoholicas', 'Gaseosas', 'Aguas', 'Aguas Saborizadas', 'Cervezas')
);

CREATE TABLE articulos(
     sku VARCHAR(10) NOT NULL PRIMARY KEY,
	 id_proveedor INT,
     id_categoria_articulo INT,
     ean VARCHAR(13),
     nombre_producto VARCHAR(200),
     costo DECIMAL (5,2),
     iva DECIMAL (2,2),
     stock DECIMAL (8,2)
 );
 ALTER TABLE articulos
	 ADD CONSTRAINT fk_constraint_id_proveedor
     FOREIGN KEY 
     (id_proveedor) REFERENCES proveedor(id_proveedor)
     ;
 ALTER TABLE articulos
     ADD CONSTRAINT fk_constraint_id_categoria_articulo 
     FOREIGN KEY
     (id_categoria_articulo) REFERENCES categoria_articulo(id_categoria_articulo);
     
CREATE TABLE clientes(
    id_clientes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(200),
    domicilio VARCHAR(200),
    tipo_facturacion ENUM('Consumidor Final', 'Factura A')
);

CREATE TABLE categoria_ajustes(
    id_categoria_ajustes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria_ajuste ENUM ( 'Dañado','Vencido','Error Inventario','Conteo Ciclico')
);

CREATE TABLE ajustes(
    id_ajustes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_categoria_ajustes INT,
    fecha DATETIME,
    sku VARCHAR(10),
    cantidad_ajustada INT    
);
 ALTER TABLE ajustes
     ADD CONSTRAINT fk_constraint_sku 
     FOREIGN KEY
     (sku) REFERENCES articulos(sku);
 ALTER TABLE ajustes
     ADD CONSTRAINT fk_constraint_id_categoria_ajustes
     FOREIGN KEY
     (id_categoria_ajustes) REFERENCES categoria_ajustes(id_categoria_ajustes);

CREATE TABLE ventas(
    factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(10),
    id_clientes INT,
    cantidad_sku INT,
    fecha DATETIME
); 
  ALTER TABLE ventas
     ADD CONSTRAINT fk_constraint2_sku 
     FOREIGN KEY
     (sku) REFERENCES articulos(sku);
  ALTER TABLE ventas
     ADD CONSTRAINT fk_constraint_id_clientes 
     FOREIGN KEY
     (id_clientes) REFERENCES clientes(id_clientes);