/* database criado no phpmyadmin para estudo */

Create Database db_biblioteca;

Use db_biblioteca;

CREATE TABLE tbl_livro (
  id_livro SMALLINT AUTO_INCREMENT PRIMARY KEY,
  nome_livro varchar(50) NOT null,
  ISBN varchar(30) NOT null,
  id_autor SMALLINT NOT null,
  data_pub date NOT null,
  preco_livro decimal NOT null
)

Use db_biblioteca;

/* Deletando coluna */
Alter table tbl_livro
Drop column id_autor;

/* Adicionando coluna, definição e relacionamento de tabelas */
Alter table tbl_livro
Add id_autor SMALLINT NOT NULL after ISBN;

Alter table tbl_livro
Add constraint fk_id_autor
Foreign key (id_autor)
References tbl_autores(id_autor);

Alter table tbl_livro
Add id_editora SMALLINT NOT NULL after id_autor;

Alter table tbl_livro
Add constraint fk_id_editora
Foreign key (id_editora)
References tbl_editoras (id_editora);

DESCRIBE tbl_livro;

Use db_biblioteca;

CREATE TABLE tbl_autores (
  id_autor SMALLINT PRIMARY KEY,
  nome_autor varchar(50),
  sobrenome_autor varchar(60)
)

Use db_biblioteca;

CREATE TABLE tbl_editoras (
  id_editora SMALLINT AUTO_INCREMENT PRIMARY KEY,
  nome_editora varchar(50) NOT null
)

CREATE TABLE compras (
  id_compra SMALLINT PRIMARY KEY,
  cod_produto varchar(50),
  data_compra date,
  FOREIGN KEY (cod_produto) REFERENCES
  Produtos(cod_produto)
)

SHOW TABLES;

/* Inserindo dados na tabela tbl_autores */
Insert into tbl_autores (id_autor, nome_autor, sibrenome_autor)
Values ('1','Daniel','Barret'),
       ('2','Gerald','Carter'),
       ('3','Mark','Sobell'),
       ('4','William','Stanek'),
       ('5','Richard','Blum');
       
/* Inserindo dados na tabela tbl_editoras - A TABELA ESTÁ COMO AUTO INCREMENTE id_editoras vai ser inserido automaticamente*/
Insert into tbl_editoras (nome_editora)
Values ('Prentice Hall'),
       ('O`Reilly'),
       ('Microsoft Press'),
       ('Wiley');
       
/* Inserindo dados na tabela tbl_livro */
use db_biblioteca;
Insert into tbl_livro (nome_livro, ISBN, id_autor, data_pub, preco_livro, id_editora)
Values
('Linux Command Line and Shell Scripting', '143856969', '5' ,'2009-12-21', '68.35','4'),
('SSH, the Secure Shell', '127658789', '1', '2009-12-21', '58.30', '2'),
('Using Samba', '123856789', '2', '2000-12-21', '61.45', '2'),
('Fedora and Red Hat Linux', '123346789', '3', '2010-11-01', '62.24', '1'),
('Windows Server 2012 Inside Out', '123346789', '4', '2004-05-17', '66.80', '3'),
('Microsoft Exchange Server 2010', '123366789', '4', '2004-05-17', '43.30', '3');

Alter table tbl_livro
Modify preco_livro decimal(5,2);
