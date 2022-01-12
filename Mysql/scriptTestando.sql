/*Primeiramente entre como root, crie um usúario e dê privilégios para ele.*/

/*Exemplos: da maneira abaixo já cria usuário com privilégios*/

Grant all on *.* to jesher identified by '1234' with grant option;
Grant usage on *.* to jesher identified by '1234';
Select user from mysql.user;
Select user, host from mysql.user;

Grant all on testando.* to novo_usuario@localhost;
Show grants for novo_usuario@localhost;

Create user usuario@localhost identified by '1234';
Drop user if exists usuario@localhost;

Começando....

Show databases;
Use nome_do_banco;
Select Database();
status;

CREATE USER 'novo_usuario'@'localhost'root IDENTIFIED BY 'senha'; 

Create database testando;
/*Drop database testando;*/

Use testando;

/*Usando padrão utf8 para palavras em portugues-brasil*/
/*Ctrl+Enter executa o comando, semelhante ao F5 do MSSQL-Server*/

Create table pessoas (
  id int Not Null AUTO_INCREMENT Primary Key,
  nome varchar(30) Not Null,
  nascimento date,
  sexo enum('M','F'),
  peso decimal(5,2),
  altura decimal(3,2),
  cidadeNatal varchar(20)
)Default charset = utf8;

Select * From pessoas;
Describe pessoas;
/*Drop table pessoas;*/

/* Inserindo dados na tabela */
Insert into pessoas (nome, nascimento, sexo, peso, altura, cidadeNatal)
Value 
('Priscilla Faria', '1988-07-03', 'F', '60.5', '1.65', 'Araguaína'),
('Sophia Faria Ferreira', '2012-11-03', 'F', '50', '1.30', 'Brasilia'),
('Emylizinha Faria Minelli', '2016-01-14', 'F', '30', '0.90', 'Gama'),
('Geralt The Rivia', '1800-01-12', 'M', '80.5', '1.92', 'Rivianopolis'),
('Joana Darc', '1880-05-02', 'F', '60.5', '1.42', 'Paris'),
('Deacon San Jones', '1988-06-08', 'M', '80.5', '1.82', 'Lake City');

select * from pessoas;

/* Adicionando coluna na tabela */
Alter table pessoas
add column profissao varchar(10) after nome; 
/* 'after nome' para adicionar após coluna nome /*

/*
Alter table pessoas
Drop column profissao; <- Deletar uma coluna */

/* modificar definições */
Alter table pessoas
modify column profissao varchar(30);

/* modificar nome da coluna */
Alter table pessoas
change column profissao prof varchar(30);

/* adcionar coluna */
Alter table pessoas
add cod int FIRST; /*Adicionar coluna ao começo da tabela */

/* deletar primary key */
Alter table pessoas
drop primary key;

/* criar tabela cursos */
Create table if not exists cursos (
  nome varchar(30) Not null unique,
  descricao text,
  carga int unsigned,
  totalaulas int unsigned,
  ano year default '2022'
)Default charset = utf8;

/* Adicionar coluna idcurso no começo da tabela */
Alter table cursos
add column idcurso int first;

/* adicionando primary key na coluna idcurso */
Alter table cursos
add primary key(idcurso);

desc cursos;

/* Adicionando registros na tabela cursos */
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

/* Alterando registro com UPDATE */
Update cursos
Set nome = 'HTML5'
Where idcurso = '1';

Update cursos
Set nome = 'PHP', ano = '2015'
Where idcurso = '4';

Update cursos
Set nome = 'Java', carga = '40', ano = '2015'
Where idcurso = '5'
Limit 1;

/* Modificando todos os registros de 2018 */
Update cursos
Set ano = '2022', carga = '20'
Where ano = '2018';

Select * From cursos;

/* Deletando linhas da tabela 

Delete from cursos
Where idcurso = '8';

Delete from cursos
Where ano = '2022'; 

lembrar de desativar safe updates em edit-preferences-sql editor-safe updates
*/

/* Deletar todos Registros da tabela */

Truncate table cursos;
Select * From cursos;
