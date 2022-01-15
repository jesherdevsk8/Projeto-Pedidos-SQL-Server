Current database:	cadastro
Current user:		jesher@localhost
Server:			MariaDB
Server version:		10.7.1-MariaDB-1:10.7.1+maria~bullseye mariadb.org binary distribution

Debian Bullseye

--EXERCICIOS 2

-- Extraindo Total de pessoas com a mesma profissão

SELECT profissao as Profissões, count(nome) as Total
FROM gafanhotos
GROUP BY profissao
ORDER BY count(nome) DESC;

-- Total de homens e mulheres cadastrados

SELECT sexo AS 'Sexo do Gafanhotos', count(sexo) AS 'Total Pessoas por Sexo'
FROM gafanhotos
GROUP BY sexo;

-- Quantos Homens e mulheres nasceram após 2005-01-01

SELECT sexo AS 'Sexo do Gafanhotos', count(sexo) AS 'Total Pessoas por Sexo'
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

-- Total de pessoas por nacionalidade que não nasceram no brasil e de quantidade maior de 3

SELECT nacionalidade AS Países, count(*) AS 'Total de Gafanhotos'
FROM gafanhotos
WHERE nacionalidade != 'brasil'
GROUP BY nacionalidade
HAVING count(nacionalidade) > '3'
ORDER BY count(*) desc;

-- Total de pessoas agrupado pela altura mostrando quantos pesam mais de 100kg e que estão acima da média de altura de todos cadastrados

SELECT nome, altura, count(*) AS 'Quantidade de pessoas acima da média de altura'
FROM gafanhotos
WHERE peso > '100'
GROUP BY altura
HAVING altura > (SELECT avg(altura) FROM gafanhotos)
ORDER BY count(*) desc;

