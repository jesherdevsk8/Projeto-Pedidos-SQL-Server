--
-- Criando o Banco de Dados Projeto_Pedidos
--

Create Database Projeto_Pedidos

--
-- Removendo o Banco de Dados Projeto_Pedidos
--

-- Drop Database Projeto_Pedidos

--
-- Enviando comando para utilizar o Banco de Dados Projeto_Pedidos
--

Use Projeto_Pedidos

--
-- Criando a Tabela Paises dentro do Banco de Dados Projeto_Pedidos
--

Create Table Paises
(
Codigo_Pais Int Primary Key Not Null,
-- Codigo_Pais Int Not Null,
Descricao_Pais varchar(60) Not Null,
Codigo_Iso_Pais varchar(3) Not Null -- ,
-- Primary Key (Codigo_Pais)
)

--
-- Removendo a Tabela Paises do Banco de Dados Projeto_Pedidos
--

-- Drop Table Paises

--
-- Inserindo dados na Tabela Paises dentro do Banco de Dados Projeto_Pedidos
-- sem especificar os Campos da Tabela
--

Insert Into Paises
Values (076, 'BRASIL', 'BRA')

--
-- Inserindo dados na Tabela Paises dentro do Banco de Dados Projeto_Pedidos
-- especificando os Campos da Tabela

--
Insert Into Paises
(Codigo_Pais, Descricao_Pais, Codigo_Iso_Pais)
Values (032, 'ARGENTINA', 'ARG')


--
-- Exibindo todos os registros da Tabela Paises
--

Select * From Paises

--
-- Removendo todos os registros da Tabela Paises
--

-- Delete From Paises

--

-- Removendo o Pais BRASIL da Tabela Paises
--

-- Delete From Paises
-- Where Codigo_Pais = 076

--
-- Removendo os Registros da Tabela Paises com a cláusula IN
--

-- Delete From Paises
-- Where Codigo_Pais IN (076, 032)

---
--- Vamos dar carga em massa na Tabela Paises.
--- Para isto vamos executar o comando abaixo
--- utilizando o utilitário BULK
---

BULK Insert Paises
From 'C:\2º DS - BD II - 2º Semestre 2021\Tabela_Paises.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go

--
-- Criando a Tabela Logradouros dentro do Banco de Dados Projeto_Pedidos
--

Create Table Logradouros
(
Codigo_Logradouro Varchar (5) Primary Key Not Null,
Descricao_Logradouro varchar(50) Not Null
)

---
--- Vamos dar carga em massa na Tabela Logradouros.
--- Para isto vamos executar o comando abaixo
--- utilizando o utilitário BULK
---

BULK Insert Logradouros
From 'C:\2º DS - BD II - 2º Semestre 2021\Tabela_Tipos_Logradouros.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go

--
-- Exibindo todos os registros da Tabela Logradouros
--

Select * From Logradouros
where Codigo_Logradouro LIKE '%CRG%'


--
-- Alterando um registro da Tabela Logradouros
--

Update Logradouros set Descricao_Logradouro = 'Corrego'
where Codigo_Logradouro LIKE '%CRG%'

-- Delete from Logradouros

--
-- Criando a Tabela Cidades dentro do Banco de Dados Projeto_Pedidos
--

Create Table Cidades
(
Codigo_Cidade Int Primary Key Not Null,
Nome_Cidade varchar(100) Not Null,
Uf_Cidade varchar(02) Not Null,
Codigo_Pais Int Not Null,
Constraint FK_Cidades_Paises Foreign Key (Codigo_Pais)
  References Paises
	(
	Codigo_Pais
	)
)


---
--- Vamos dar carga em massa na Tabela Cidades.
--- Para isto vamos executar o comando abaixo
--- utilizando o utilitário BULK
---

BULK Insert Cidades
From 'C:\2º DS - BD II - 2º Semestre 2021\Cidades_Reduzidas.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go


--
-- Exibindo todos os registros da Tabela Cidades
--

select * from Cidades
