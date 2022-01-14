Current database:	cadastro
Current user:		jesher@localhost
Server:			MariaDB
Server version:		10.7.1-MariaDB-1:10.7.1+maria~bullseye mariadb.org binary distribution

Debian Bullseye

-- COMO USAR O COMANDO SELECT 

USE cadastro;

SELECT * FROM cursos;

SELECT * FROM cursos
ORDER BY nome;

SELECT * FROM cursos
ORDER BY nome desc;

SELECT ano, nome, carga FROM cursos;
ORDER BY ano, nome;

SELECT * FROM cursos
WHERE ano = '2017'
ORDER BY carga;

SELECT nome, descricao, ano FROM cursos
WHERE ano <= '2015'
ORDER BY ano, nome;

SELECT nome, descricao, ano, totaulas FROM cursos
WHERE totaulas BETWENN '20' AND '30'
ORDER BY totaulas, ano desc, nome;

SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2017 and 2019
ORDER BY ano desc, nome asc;

SELECT nome, descricao, ano FROM cursos
WHERE ano in (2017, 2019)
ORDER BY ano;

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 and totaulas < 30
ORDER BY nome;

SELECT * FROM cursos
WHERE nome = 'PHP';

-- Filtrando resultados com curinga %

SELECT * FROM cursos
WHERE nome LIKE 'P%'
-- P% mostra tudo que começa com P

SELECT * FROM cursos
WHERE nome LIKE '%t'
-- %t mostra tudo que termina com t

SELECT * FROM cursos
WHERE nome LIKE '%f%'
-- %f% mostra qualquer palavra que tem a letra f

SELECT nome, profissao, nacionalidade FROM gafanhotos
WHERE nome like '%_silva%';
-- filtrando pesquisas

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

SELECT DISTINCT carga FROM cursos
ORDER BY carga DESC;
-- Usando distinct para filtrar mesmos valores sem repetições

--Contar certa quantidade de registros em uma tabela
SELECT count(*) FROM gafanhotos;

SELECT count(*) FROM gafanhotos
WHERE nacionalidade = 'Brasil';

--Extraindo o gafanhoto mais pesado com comando max()
SELECT max(peso) FROM gafanhotos
WHERE nacionalidade = 'EUA';
--tbm posso usar min(peso) para filtrar valor minimo

--Somar valores 
SELECT sum(totaulas) FROM cursos
WHERE ano = '2017';

--Extrair média
SELECT AVG(totaulas) FROM cursos
WHERE ano = '2017';
--obs ele pega o total de aulas da tabela e divide pelo total de cursos
