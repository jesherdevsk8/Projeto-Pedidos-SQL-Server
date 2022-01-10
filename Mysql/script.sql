/*Primeiramente entre como root, crie um usúario e dê privilégios para ele.*/

/*Exemplos: da maneira abaixo já cria usuário com privilégios*/

Grant all on *.* to jesher identified by '1234' with grant option;
Grant usage on *.* to jesher identified by '1234';
Select user from mysql.user;
Select user, host from mysql.user;

Começando....

Show databases;
Use nome_do_banco;
Select Database();
status;

CREATE USER 'novo_usuario'@'localhost' IDENTIFIED BY 'senha'; 

Create database testando;
/*Drop database testando;*/

Grant all on testando.* to novo_usuario@localhost;

Show grants for novo_usuario@localhost;

Use testando;

/*Usando padrão utf8 para palavras em portugues-brasil*/
/*Ctrl+Enter executa o comando, semelhante ao F5 do MSSQL-Server*/

Create table pessoas
(
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
Value ('Geralt The Rivia', '1800-01-12', 'M', '80.5', '1.92', 'Rivianopolis');

Insert into pessoas (nome, nascimento, sexo, peso, altura, cidadeNatal)
Value ('Joana Darc', '1880-05-02', 'F', '60.5', '1.42', 'Paris');

Insert into pessoas (nome, nascimento, sexo, peso, altura, cidadeNatal)
Value ('Deacon San Jones', '1988-06-08', 'M', '80.5', '1.82', 'Lake City');

/* Posso inserir varios de uma vez */
Insert into pessoas (nome, nascimento, sexo, peso, altura, cidadeNatal)
Value 
('Priscilla Faria', '1988-07-03', 'F', '60.5', '1.65', 'Araguaína'),
('Sophia Faria Ferreira', '2012-11-03', 'F', '50', '1.30', 'Brasilia'),
('Emylizinha Faria Minelli', '2016-01-14', 'F', '30', '0.90', 'Gama');

select * from pessoas;
