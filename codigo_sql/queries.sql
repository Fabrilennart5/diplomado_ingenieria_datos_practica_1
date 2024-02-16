
/* Pregunta 1: Obtener la lista de juegos de la clase "Aventura" con su descripción y nivel */
SELECT
    /* Seleccionar el nombre del juego */
    g.name,
    /* Seleccionar la descripción de la clase */
    c.description,
    /* Seleccionar el nivel del juego */
    g.id_level,
    /* Seleccionar la descripción del nivel */
    l.description
FROM
    /* Seleccionar la tabla GAME y renombrarla como 'g' */
    GAME AS g
LEFT JOIN
    /* Realizar una unión izquierda con la tabla CLASS y renombrarla como 'c' usando la clave primaria 'id_level' */
    CLASS AS c ON g.id_level = c.id_level
LEFT JOIN
    /* Realizar una unión izquierda con la tabla LEVEL_GAME y renombrarla como 'l' usando la clave primaria 'id_level' */
    LEVEL_GAME AS l ON g.id_level = l.id_level
WHERE
    /* Filtrar solo las filas donde la descripción de la clase sea "Aventura" */
    c.description = "Aventura";

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 2: ¿Puedes encontrar los nombres de los usuarios que han completado el juego con ID 5? 🤔 */
SELECT
    /* Seleccionar el nombre y apellido del usuario */
    s.first_name,
    s.last_name,
    /* Seleccionar el ID del usuario */
    s.id_system_user,
    /* Seleccionar si el juego ha sido completado por el usuario */
    p.completed
FROM
    /* Seleccionar la tabla SYSTEM_USER y renombrarla como 's' */
    SYSTEM_USER AS s
LEFT JOIN
    /* Realizar una unión izquierda con la tabla PLAY y renombrarla como 'p' usando la clave primaria 'id_system_user' */
    PLAY AS p
ON
    s.id_system_user = p.id_system_user
WHERE
    /* Filtrar solo las filas donde el ID del usuario sea 5 */
    s.id_system_user = 5
    /* y el juego haya sido completado por el usuario */
    AND p.completed = 1;


----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 3: ¿Puedes mostrar los comentarios realizados después del 1 de enero de 2024, ordenados por fecha ascendente? 📅🔝 */
SELECT
    /* Seleccionar la fecha del comentario */
    comment_date,
    /* Seleccionar el comentario */
    commentary
FROM
    /* Seleccionar la tabla COMMENTARY */
    COMMENTARY
WHERE
    /* Filtrar solo los comentarios realizados después del 1 de enero de 2024 */
    comment_date > '2024-01-01'
ORDER BY
    /* Ordenar los comentarios por fecha ascendente */
    comment_date ASC;

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 4: ¿Puedes calcular la cantidad de juegos en cada clase? 🎮🔢 */
SELECT
    /* Seleccionar el ID de la clase */
    c.id_class,
    /* Contar la cantidad de juegos en cada clase */
    COUNT(g.id_game) AS cantidad
FROM
    /* Seleccionar la tabla GAME y renombrarla como 'g' */
    GAME AS g
LEFT JOIN
    /* Realizar una unión izquierda con la tabla CLASS y renombrarla como 'c' usando la clave primaria 'id_class' */
    CLASS AS c ON g.id_class = c.id_class
GROUP BY
    /* Agrupar los resultados por el ID de la clase */
    c.id_class
ORDER BY
    /* Ordenar los resultados por cantidad de juegos de forma descendente */
    cantidad DESC;

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 5: ¿Puedes obtener el nombre del juego con la calificación más alta? 🎮🌟 */
SELECT
    /* Seleccionar el ID del juego */
    g.id_game,
    /* Seleccionar el nombre del juego */
    g.name,
    /* Seleccionar el valor de la calificación */
    v.value
FROM
    /* Seleccionar la tabla GAME y renombrarla como 'g' */
    GAME AS g
LEFT JOIN
    /* Realizar una unión izquierda con la tabla VOTE y renombrarla como 'v' usando la clave primaria 'id_game' */
    VOTE AS v ON g.id_game = v.id_game
ORDER BY
    /* Ordenar los resultados por valor de la calificación de forma descendente */
    v.value DESC
LIMIT
    /* Limitar el resultado a una fila */
    1;

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 6: ¿Puedes encontrar los usuarios que han jugado más de 3 juegos diferentes? 🎮👥 */
SELECT
    /* Seleccionar el ID del usuario */
    p.id_system_user,
    /* Seleccionar el nombre del usuario */
    s.first_name,
    /* Contar el número total de juegos jugados por el usuario */
    COUNT(p.completed) AS total_juegos
FROM
    /* Seleccionar la tabla PLAY y renombrarla como 'p' */
    PLAY AS p
INNER JOIN
    /* Realizar una unión interna con la tabla SYSTEM_USER y renombrarla como 's' usando la clave primaria 'id_system_user' */
    SYSTEM_USER AS s ON p.id_system_user = s.id_system_user
GROUP BY
    /* Agrupar los resultados por el ID del usuario y su nombre */
    p.id_system_user,
    s.first_name
HAVING
    /* Filtrar solo los usuarios que han jugado más de 3 juegos diferentes */
    total_juegos > 3;

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 7: ¿Puedes mostrar la lista de juegos con una calificación de 4 o 5, junto con el nombre del usuario que los sugirió (si existe)? 🎮👤 */
SELECT
    /* Seleccionar el nombre del juego */
    g.name,
    /* Seleccionar la calificación del juego */
    v.value,
    /* Seleccionar el nombre del usuario que sugirió el juego */
    s.first_name,
    /* Seleccionar el ID del usuario que sugirió el juego */
    v.id_system_user
FROM
    /* Seleccionar la tabla GAME y renombrarla como 'g' */
    GAME AS g
INNER JOIN
    /* Realizar una unión interna con la tabla VOTE y renombrarla como 'v' usando la clave primaria 'id_game' */
    VOTE AS v ON g.id_game = v.id_game
INNER JOIN
    /* Realizar una unión interna con la tabla SYSTEM_USER y renombrarla como 's' usando la clave primaria 'id_system_user' */
    SYSTEM_USER AS s ON v.id_system_user = s.id_system_user
WHERE
    /* Filtrar solo los juegos con una calificación de 4 o 5 */
    v.value = 4 OR v.value = 5;

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 8: ¿Podrías calcular el promedio de las calificaciones de los juegos de la clase 'Motion Graphics'? 📊✨ */
SELECT
    /* Seleccionar el ID de la clase */
    g.id_class,
    /* Seleccionar la descripción de la clase */
    c.description,
    /* Calcular el promedio de las calificaciones de los juegos de la clase */
    ROUND(AVG(v.value)) AS promedio_calificacion
FROM
    /* Seleccionar la tabla GAME y renombrarla como 'g' */
    GAME AS g
LEFT JOIN
    /* Realizar una unión izquierda con la tabla VOTE y renombrarla como 'v' usando la clave primaria 'id_game' */
    VOTE AS v ON g.id_game = v.id_game
LEFT JOIN
    /* Realizar una unión izquierda con la tabla CLASS y renombrarla como 'c' usando la clave primaria 'id_class' */
    CLASS AS c ON g.id_class = c.id_class
GROUP BY
    /* Agrupar los resultados por el ID de la clase y su descripción */
    g.id_class,
    c.description
HAVING
    /* Filtrar solo los juegos de la clase 'Motion Graphics' */
    g.id_class = 153;

----------------------------------------------------------------------------------------------------------------------------

/* PREGUNTA 9: ¿Puedes encontrar los usuarios que no han realizado ningún comentario? 🤔 */
SELECT
    /* Seleccionar el nombre y apellido del usuario */
    s.first_name,
    s.last_name,
    /* Seleccionar el comentario */
    c.commentary
FROM
    /* Seleccionar la tabla SYSTEM_USER y renombrarla como 's' */
    SYSTEM_USER AS s
LEFT JOIN
    /* Realizar una unión izquierda con la tabla COMMENTARY y renombrarla como 'c' usando la clave primaria 'id_system_user' */
    COMMENTARY AS c ON s.id_system_user = c.id_system_user
WHERE
    /* Filtrar solo los usuarios que no han realizado ningún comentario */
    c.commentary IS NULL;

----------------------------------------------------------------------------------------------------------------------------

/* Pregunta 10: ¿Puedes mostrar la lista de juegos, junto con la cantidad de usuarios que los han jugado? 🎮👥 */
SELECT
    /* Seleccionar el nombre del juego y renombrarlo como 'juego' */
    g.name AS juego,
    /* Contar la cantidad de usuarios que han jugado cada juego */
    COUNT(p.id_system_user) AS cantidad_usuarios
FROM
    /* Seleccionar la tabla GAME y renombrarla como 'g' */
    GAME AS g
LEFT JOIN
    /* Realizar una unión izquierda con la tabla PLAY y renombrarla como 'p' usando la clave primaria 'id_game' */
    PLAY AS p ON g.id_game = p.id_game
GROUP BY
    /* Agrupar los resultados por el nombre del juego */
    g.name;
