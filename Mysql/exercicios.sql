Current database:	cadastro
Current user:		jesher@localhost
Server:			MariaDB
Server version:		10.7.1-MariaDB-1:10.7.1+maria~bullseye mariadb.org binary distribution

Debian Bullseye

--EXERCICIOS

--EXTRAIR UMA LISTA COM O NOME DAS MULHERES DA TABELA
SELECT nome FROM gafanhotos
WHERE sexo = 'F'
ORDER BY nome;

--Extrair quantidade
SELECT count(sexo) FROM gafanhotos
WHERE sexo = 'F';

--Extrair nascidos entre 1-jan-2000 e 31-dez-2015
SELECT * FROM gafanhotos
WHERE nascimento >= '2000-01-01' and nascimento <= '2015-12-31'
ORDER BY nascimento desc, nome;

--Extrair lista de mulheres que nasceram no brasil e que tem seu nome iciado com a letra J
SELECT nome, sexo, nacionalidade FROM gafanhotos
WHERE sexo = 'f' and nacionalidade = 'brasil'
and nome LIKE 'j%'
ORDER BY nome;

--Extrair lista com nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no brasil e pesam menos de 100kg
SELECT nome, nacionalidade, peso FROM gafanhotos
WHERE nome LIKE '%_silva%' and sexo = 'm' and peso < 100 and nacionalidade != 'brasil'
ORDER BY peso DESC;

--Extrair maior altura entre homens que moram no brasil
SELECT nome, max(altura), nacionalidade FROM gafanhotos WHERE nacionalidade = 'brasil'
ORDER BY altura desc;

--Extrair média de peso dos cadastrados
SELECT AVG(peso) FROM gafanhotos;

--Extrair menor peso das mulheres que nasceram fora do brasil entre 01-jan-1990 e 21-dez-2000
SELECT min(peso) FROM gafanhotos
WHERE sexo = 'f' and nacionalidade != 'brasil' and nascimento <= '2000-12-31' and nascimento >= '1990-01-01';

--Quantas mulheres tem mais  de 1.90m altura
SELECT altura, sexo from gafanhotos
WHERE sexo = 'f' and altura > '1.90';

SELECT count(sexo) FROM gafanhotos
where sexo = 'f' and altura > '1.90';
