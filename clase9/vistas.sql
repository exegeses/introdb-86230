# Vistas en SQL
/*
Una vista es una consulta que podemos almacenar dentro
de nuestra base de datos.
Parece una tabla nueva, sin embargo no lo es
*/
CREATE VIEW lista_precios
    AS
    SELECT
        idProducto AS ID,
        producto AS Producto,
        precio AS 'Contado',
        precio * 1.05 AS 'Lista',
        marca AS Marca,
        categoria AS Categoría
    FROM productos AS p
    JOIN marcas AS m
      ON p.idMarca = m.idMarca
    JOIN categorias AS c
      ON p.idCategoria = c.idCategoria;

-- uso
SELECT * FROM lista_precios;