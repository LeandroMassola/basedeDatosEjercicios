/*Obtener los 5 cursos con más unidades: Escribe una consulta que devuelva los títulos de los 5 cursos que tienen más unidades. Los resultados deben estar ordenados en orden descendente por el número de unidades.*/

SELECT c.TITULO, COUNT(u.ID) AS num_unidades
FROM cursos c
INNER JOIN unidades u ON c.ID = u.cursos_ID
GROUP BY c.ID
ORDER BY num_unidades DESC
LIMIT 5;

/*Obtener la media de unidades por curso: Escribe una consulta que calcule la media de unidades por curso. Los resultados deben estar agrupados por el título del curso.*/
SELECT c.TITULO, AVG(u.ID) AS num_unidades
FROM cursos c
INNER JOIN unidades u ON c.ID = u.cursos_ID
GROUP BY c.TITULO;

/*Obtener los usuarios asociados a más de 3 cursos: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 3 cursos. Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.*/
SELECT u.nombre, COUNT(uc.cursos_ID) as cantidad_cursos
FROM usuarios u
JOIN usuarios_cursos uc ON u.id = uc.usuarios_id
GROUP BY u.id
HAVING COUNT(uc.cursos_id) > 3
ORDER BY u.nombre ASC;

/*Obtener las 10 primeras clases que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 10 primeras clases que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden ascendente por la fecha de inicio.*/
SELECT TITULO, FECHA_INICIO FROM clases
WHERE FECHA_INICIO > '10/1/2010'
GROUP BY FECHA_INICIO ASC
LIMIT 10;

/*Obtener el número de bloques por tipo para una clase específica: Escribe una consulta que devuelva el número de bloques por tipo para una clase específica. Los resultados deben estar agrupados por el tipo de bloque.*/
SELECT b.id, COUNT(b.id) AS numero_de_bloques
FROM bloques b
WHERE clases_id = 5
GROUP BY b.id;

/*Obtener el nombre y el apellido de los usuarios, sustituyendo los valores nulos por una cadena vacía: Escribe una consulta que devuelva el nombre y el apellido de los usuarios, utilizando una función para sustituir los valores nulos por una cadena vacía.*/
SELECT COALESCE(usuarios.nombre, '') , COALESCE(usuarios.apellido, '')
FROM Usuarios;

/*Obtener los 3 cursos con la mayor cantidad de usuarios: Escribe una consulta que devuelva los títulos de los 3 cursos que tienen más usuarios asociados. Los resultados deben estar ordenados en orden descendente por el número de usuarios.*/
SELECT c.titulo, COUNT(uc.usuarios_id) as cantidad_usuarios
FROM cursos c
JOIN usuarios_cursos uc ON c.id = uc.cursos_id
GROUP BY c.titulo
ORDER BY cantidad_usuarios DESC
LIMIT 3;

/*Obtener el promedio de clases por unidad para cada curso: Escribe una consulta que calcule el promedio de clases por unidad para cada curso. Los resultados deben estar agrupados por el título del curso.*/
SELECT c.titulo, AVG(num_clases_por_unidad) AS promedio_clases_por_unidad
FROM cursos c
LEFT JOIN (
    SELECT u.cursos_id, COUNT(*) AS num_clases_por_unidad
    FROM unidades u
    LEFT JOIN clases cl ON u.id = cl.unidades_id
    GROUP BY u.cursos_id
) AS clases_por_curso ON c.id = clases_por_curso.cursos_id
GROUP BY c.titulo;

/*Obtener los usuarios con más de 2 cursos que comienzan después de una fecha determinada: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 2 cursos que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.*/
SELECT u.nombre, u.apellido
FROM usuarios u
JOIN usuarios_cursos uc ON u.id = uc.usuarios_id
JOIN cursos c ON uc.cursos_id = c.id
WHERE c.fecha_inicio > '10/01/2024'
GROUP BY u.id
HAVING COUNT(*) > 2
ORDER BY u.nombre ASC;

/*Obtener las 5 últimas unidades que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 5 últimas unidades que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden descendente por la fecha de inicio.*/
SELECT *
FROM unidades
WHERE fecha_inicio > '01/01/2025'
ORDER BY fecha_inicio DESC
LIMIT 5;

/*Obtener el número de usuarios por categoría para un curso específico: Escribe una consulta que devuelva el número de usuarios por categoría para un curso específico. Los resultados deben estar agrupados por la categoría del usuario.*/
SELECT u.categorias_id, COUNT(u.categorias_id) AS cantidad_usuarios_por_categorias
FROM usuarios u
JOIN usuarios_cursos uc ON u.id = uc.usuarios_id
WHERE uc.cursos_id = '5'
GROUP BY u.categorias_id;
