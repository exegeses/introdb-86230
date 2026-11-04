# Consultas de práctica — Base de datos de películas

Tablas disponibles: `paises`, `generos`, `directores`, `actores`, `peliculas`, `peliculas_actores`.

---
## 1. Consultas simples (una sola tabla)

1. Listar todas las películas ordenadas por `rating` de mayor a menor.
2. Mostrar el título y el año de las películas estrenadas después del año 2000.
3. Listar las películas cuyo `rating` sea mayor a 8.5.
4. Mostrar todos los países ordenados alfabéticamente.
5. Buscar todas las películas cuyo título contenga la palabra "Anillos".
6. Listar las películas que duren menos de 120 minutos.
7. Mostrar el nombre y apellido de todos los directores.
8. Listar los 5 mejores títulos según su `rating`.

Consultas con JOIN (dos tablas)
9. Listar cada película junto con el nombre de su género.
10. Listar cada película junto con el nombre y apellido de su director.
11. Mostrar cada director junto con el nombre de su país de nacionalidad.
12. Listar las películas de origen japonés.

Consultas con JOIN (tres o más tablas) — un poco más de desafío

13. Listar título de la película, nombre del director y nombre del género, para todas las películas.
14. Listar todos los actores que participaron en "Origen" (usando `peliculas_actores`).
15. Listar todas las películas en las que participó "Leonardo DiCaprio".
16. Mostrar, para cada director, el rating promedio de sus películas, ordenado de mayor a menor.
17. Contar cuántas películas dirigió cada director, mostrando su nombre y apellido (con JOIN, no solo el `idDirector`).

Respuestas:
```sql
    SELECT titulo, anio, rating 
      FROM peliculas 
      ORDER BY rating DESC;
```
```sql
    SELECT titulo, anio, rating 
      FROM peliculas 
      WHERE anio >= 2000;
``` 
```sql
select titulo, rating  
from peliculas 
where rating > 8.5 
order by rating;
```
```sql
select pais
from paises 
order by pais;
```
```sql
select titulo
from peliculas
where titulo like "%anillos%"
order by anio;
```
```sql
select titulo 
from peliculas 
where duracion < 120;
```
```sql
select concat( nombre, ' ', apellido) AS "Nombre Director"
from directores;
```
```sql
select titulo, rating
from peliculas
order by rating desc
limit 5;
```
```sql
SELECT titulo, anio, genero, rating 
  FROM peliculas AS p
  JOIN generos AS g
    ON p.idGenero = g.idGenero
```
```sql
SELECT 
		titulo, 
        CONCAT(nombre,' ',apellido ) AS director,
        anio,
        rating 
  FROM peliculas AS p
  JOIN directores AS d
    ON p.idDirector = d.idDirector;
```
```sql
-- Mostrar cada director junto con el nombre de su país de nacionalidad.
  select 
        concat(nombre, ' ', apellido) AS director,
        pais 
    from paises 
    join directores
      on paises.idPais = directores.idPais;
```
```sql
-- Listar las películas de origen japonés.
    select titulo, anio, pais
      from peliculas
      join paises
        on peliculas.idPaisOrigen = paises.idPais
    WHERE idPaisOrigen = 3;
```
```sql
select 
		titulo, 
		concat (nombre, ' ', apellido) AS director,
        genero
 from peliculas as p
 join directores as d
	on p.idDirector = d.idDirector
 join generos as g
    on p.idGenero = g.idGenero;
```
```sql
select  
		distinct(concat(nombre, ' ', apellido)) as actor
from peliculas as p
join peliculas_actores as pa
  on p.idPelicula = pa.idPelicula
join actores as a
  on pa.idActor = a.idActor; 
```
```sql
select titulo, anio
from peliculas as p
join peliculas_actores as pa
  on p.idpelicula=pa.idpelicula
where idActor = 4;
```
```sql
select concat(nombre, ' ', apellido) as director,
		avg(rating)		
from peliculas as p
join directores as d
  on p.idDirector = d.idDirector
group by p.idDirector
order by avg(rating);		
```
```sql
select 
		concat(nombre, ' ', apellido) as director,
		count(idPelicula)
FROM peliculas as p
join directores as d
  on p.idDirector = d.idDirector
group by p.idDirector;
```