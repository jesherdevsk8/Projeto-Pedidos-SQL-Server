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
