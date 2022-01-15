Server version:         10.7.1-MariaDB-1:10.7.1+maria~bullseye mariadb.org binary distribution

Debian Bullseye

-- COMO USAR O COMANDO SELECT 

-- Agrupando Registros

SELECT carga FROM cursos
GROUP BY carga;

-- Extraindo quantidade de cursos por carga horaria

SELECT carga, count(*) AS 'Quantidade de Cursos por Carga Horária'
FROM cursos
GROUP BY carga
ORDER BY totaulas DESC;

-- Extraindo total de aulas
SELECT totaulas, count(*)
FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

-- Agrupando e Agregando

SELECT carga, count(nome) AS 'Quantidade'
FROM cursos
GROUP BY carga
HAVING count(nome) > 0
ORDER BY count(*);

-- Extraindo qual ano tem mais incidência de cursos
SELECT count(*) AS 'Quantidade de cursos por ano', ano
FROM cursos
GROUP BY ano
HAVING count(ano) >= 5
ORDER BY count(*) DESC;

-- Extraindo apenas os cursos que tem carga horária acima da média da mesma

SELECT carga, count(*) AS 'Cursos com maior carga horária'
FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);
