# Inserción de registros en SQL
En SQL tenemos tres maneras principales de insertar registros dentro de una tabla.
Estas 3 maneras comienzan con:

    INSERT INTO nombreTabla ....

## Sintaxis usando SET
```sql
    INSERT INTO nombreTabla
       SET
           campo = valor,
           campo = valor,
           campo = valor;
```
Ejemplo práctico: 
```sql
    INSERT INTO clientes
       SET
           idCliente = 1,
           nombre = 'Lucía',
           apellido = 'González',
           dni = 30123456,
           telefono = '1123456789',
           email = 'lucia.gonzalez@mail.con',
           fechaAlta = '2024-05-12';
```
```sql
INSERT INTO clientes
  SET
    nombre = 'Martín',
    apellido = 'Pérez',
    dni = 28987654,
    telefono = 1139876543,
    email = 'martin.perez@mail.com',
    fechaAlta = '2024-06-01';
```

## Sintaxis completa (se mencionan los campos)
## Sintaxis simplificada (NO se mencionan los campos)