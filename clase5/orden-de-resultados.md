# Orden de resultados de una consulta
Cuando obtenemos una grilla de resultados estos **siempre** vienen ordenados *de manera predeterminada*
Podemos cambiar el orden de los resultados con el modificador *ORDER BY*

```sql
SELECT * 
   FROM marcas
   ORDER BY idMarca;

-- obtener razón social, cuit y teléfono
-- orden ordenado por razón social descendente
SELECT razonSocial, cuit, telefono
  FROM proveedores
  ORDER BY razonSocial DESC;
```

Podemos tener dos (o más) criterios de orden: 
```sql
-- obtener apellido, nombre y teléfono
SELECT apellido, nombre, telefono 
  FROM clientes
  ORDER BY apellido, nombre;
```

Sintaxis hasta ahora:
```sql
    SELECT [*, campo, campo]  
       FROM [tabla]  
       ORDER BY [campo];  
```