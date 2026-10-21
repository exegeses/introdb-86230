# Modificación de registros en SQL
Para modificar los registros dentro de una tabla utilizamos el comando *UPDATE*
Debemos implementar un filtro para indicar cuál es el registro que queremos modificar.
Implementamos un filtro con la palabra reservada *WHERE* seguido de una condición.

Sintaxis:
```sql
    UPDATE nombreTabla
       SET
           campo = valor,
           campo = valor
      WHERE condicion;
```

Ejemplo práctico: 
```sql
    UPDATE clientes
       SET
           telefono = '1166677786',
           email = 'any.martinez@mail.com'
     WHERE idCliente = 5;
```

## Caso práctico:
Suponiendo que tenemos una tabla llamada "productos"
Y en esa tabla tenemos una columna llamada "idMarca"
Quiero cambiar el precio de todos los productos de una marca en particular

```sql
UPDATE productos
  SET
       precio = precio * 1.05
 WHERE idMarca = 15;
```

---
Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
Si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL