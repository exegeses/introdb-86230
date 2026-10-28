# Filtrado de registros
Cuándo hacemos una consulta sin ningún filtro, obtenemos un listado de todos los registros que hay dentro de una tabla.
Filtrar registros significa que mediante una condición vamos a obtener solamente algunos registros (los que cumpla la condición)
Para implementar un filtro utilizamos la palabra reservada *WHERE*

```sql
-- obtener todos los registros de la marca "HP" (10)
SELECT producto, precio
  FROM productos
  WHERE idMarca = 10; 
```
```sql
-- obtener un listado con todos los productos con un precio hasta 1000
SELECT producto, precio
  FROM productos
  WHERE precio <= 1000;
```
```sql
-- obtener nombre, apellido y teléfono de todos los clientes con apellido "González"
SELECT nombre, apellido, telefono
  FROM clientes
  WHERE apellido = 'gonzalez';
```
```sql
-- obtener un listado con todos los productos con un precio hasta 1000
-- de la marca 'HP'
SELECT producto, precio
  FROM productos
  WHERE precio <= 1000
    AND idMarca = 1; 
```
```sql
-- obtener un listado de productos con un precio entre 100 y 1000
SELECT producto, precio
  FROM productos
  WHERE precio >= 100
    AND precio <= 1000;
```
Uso de BETWEEN: cuándo estamos trabajando con rangos provenientes de una misma columna, podemos utilizar la palabra reservada *BETWEEN*
```sql
SELECT producto, precio
  FROM productos
  WHERE precio BETWEEN 100 AND 1000;

SELECT apellido, nombre, fechaAlta
  FROM clientes
  WHERE fechaAlta
  BETWEEN '2024-06-01' AND '2024-08-01';
```
```sql
-- obtener todos los registros de las marcas "HP" (10)
-- y "Samsung" (2)
SELECT producto, precio
  FROM productos
  WHERE idMarca = 2
    OR idMarca = 10;

-- operador IN()
SELECT producto, precio
  FROM productos
  WHERE idMarca IN(2,10);

SELECT apellido, nombre, telefono
  FROM clientes
  WHERE apellido IN('perez', 'gomez', 'flores');
```