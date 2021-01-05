Yo he optado por hacer un archivo para cada operación para no tener un código enorme.
He tenido que editar el archivo usuarios.txt, ya que a partir de la operación 2,  al seleccionar la columna del mes, no funcionaba correctamente y la única solución que encontré era añadir una columna más.
En la operación 4 hay código "de más", ya que si la lista de usuarios.txt fuera más grande y se diera el caso de que un usuario se ha logueado más de una vez en un mes, el script solo cogeria la última línea que corresponda al mes.
Para ello también he añadido unas líneas a usuarios.txt para comprobar que se tomaba el último día del mes, en caso de que haya varios inicios de sesión.
Quería hacer comentarios dentro de los scripts pero ya que estamos utilizando Github y tenemos un README.txt, no quería dejar los scripts con más líneas.
