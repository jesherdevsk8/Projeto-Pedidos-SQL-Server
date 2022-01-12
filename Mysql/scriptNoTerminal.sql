mysql -u usuario -p
sudo mysql

SHOW DATABASES;
status;

CREATE DATABASE testeDB;
SHOW CREATE TABLE testeDB;
USE testeDB;
status;

CREATE TABLE pessoas (
id SMALLINT PRIMARY KEY AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nascimento varchar(15) NOT NULL
);

DESCRIBE pessoas;
DESC pessoas;

INSERT INTO pessoas (nome,nascimento) VALUES
('Jesher','1994-06-08'),
('Priscilla','1988-07-03');

SELECT * FROM pessoas;

CREATE TABLE profissao (
idprofissao SMALLINT PRIMARY KEY,
idpessoa SMALLINT,
nomeprofissao varchar(50) NOT NULL,
FOREIGN KEY (idpessoa) REFERENCES pessoas (id)
);

DESC profissao;

SHOW CREATE TABLE pessoas;

INSERT INTO profissao (idprofissao,idpessoa,nomeprofissao) VALUES
('1','1','Engenheiro de Software'),
('2','2','Criadora de Conteúdo');

SELECTE * FROM profissao;

UPDATE profissao
SET nomeprofissao = 'Delegada da Polícia Federal'
WHERE idpessoa = '2';
