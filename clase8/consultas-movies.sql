-- titulo, genero, anio
select titulo, genero, anio, concat(nombre, ' ', apellido) as director
from peliculas as p
join generos as g
  on p.idGenero = g.idGenero
join directores as d
  on p.idDirector = d.idDirector;