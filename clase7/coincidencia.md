# Consultas con operador de coincidencia
En algunos casos vamos a querer obtener registros que tengan como filtro una palabra o parte de una palabra.
Por ejemplo obtener todos los productos que en la columna de descripción contengan "Smartphone"

```sql
SELECT producto, descripcion
  FROM productos
  WHERE descripcion = 'Smartphone';
```
Cómo resultado de esta consulta no vamos a obtener ningún resultado ya que en la columna descripción estaría buscando únicamente 'Smartphone'

Si queremos encontrar los registros que contengan la palabra 'Smartphone' debemos reemplazar el símbolo de igual por la palabra reservada *LIKE* acompañada del símbolo *%*
El símbolo de *%* puede ocupar uno, varios o incluso ningún carácter

```sql
SELECT producto, descripcion
  FROM productos
  WHERE descripcion LIKE '%Smartphone%';
```

