<<<<<<< HEAD
## SEGUNDA ENTREGA
=======
# SEGUNDA ENTREGA

>>>>>>> 4b35050f84ae487fe45a0c58b5617f863d42f2aa

* VISTAS
    1.- top_5_articulos_mas_vendidos

    Tablas utilizadas:
        articulos: rontiene la información de los productos
        ventas: registra las ventas, incluyendo la cantidad vendida de cada SKU.

    Armado:
    Se utiliza JOIN para unir ambas tablas por la columna SKU. Los datos se agrupan (GROUP BY) por SKU y nombre del producto y son ordenados de mayor a menor por la cantidad total vendida. Se limita (LIMIT) a los 5 artículos con mayores ventas totales.

    Motivo:
    Facilitar la identificación de los productos más populares basándose en las ventas totales. Esta infomacion es vital para el análisis de compras, marketing y gestión de productos.

    2.- vista_de_articulos
    Contenido de la vista:

    Tablas utilizadas:
        articulos: contiene la información de los productos.
        proveedor: relaciona cada artículo con su proveedor.
        categoria_articulo: Clasifica los productos en categorías y subcategorías.

   Motivo:
    Ofrecer una visión completa del inventario, para poder analizar el stock y la clasificación de productos de manera eficiente.

* FUNCIONES
    1.-contar_articulos_con_stock_por_subcategoria
    Motivo:
    Facilitar el análisis del inventario con el fin de determinar cuales son los productos con prioridad de compra.

    2.-categoria_mas_ajustes
    Motivo:
    Determinar qué categoría de ajustes es más frecuente, con esto se busca facilitar el analisis y la mejora de los precesos operativos del supermercado.

* STORED PROCEDURES
    1.-agregar_proveedor
    Motivo:
    Facilitar la carga de nuevos proveedores y conseguir su ID.

    2.-ventas_por_fecha
    Motivo:
    Permite realizar un análisis de ventas y evaluación del desempeño comercial en un período definido.


* TRIGGERS
    1.-descontar_ventas_de_stock
    Se activa después de agregarse un nuevo dato en la tabla ventas. Este mecanismo nos permite tener actualizado el stock de la sucursal
    Funcionamiento:
    Cada vez que se realiza una venta, actualiza el campo stock de la tabla articulos, restando la cantidad vendida (NEW.cantidad_sku). Esta armado de manera tal que solo actualiza cuando el sku del producto de la venta coincide con el slu de la tabla articulos.

    2.- borrar_sku_vendidos
    Se activa antes de eliminar un registro de la tabla articulos. Su propósito es evitar la eliminación de un producto (sku) que haya tenido ventas previas. Este mecanismo asegura que no se eliminen productos que ya fueron vendidos y perder informacion valiosa que es necesaria para realizar un correcto forecast de ventas.
    Funcionamiento:
    como primera medida verifica cuántas ventas existen para el producto que se intenta eliminar (OLD.sku). Si el producto tiene ventas lanza unl mensaje 'Sku con ventas' para impedir su borrado.
<<<<<<< HEAD

    


=======
>>>>>>> 4b35050f84ae487fe45a0c58b5617f863d42f2aa
