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
Codigo_Logradouro Int Primary Key Identity Not Null,
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

select * from Logradouros


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


--
-- Criando a Tabela Vendedores dentro do Banco de Dados Projeto_Pedidos
--

Create Table Vendedores
(
Codigo_Vendedor Int Primary Key Not Null Identity, -- (5,5),
Nome_Vendedor Varchar(100) Not Null,
Cpf_Vendedor Varchar(20) Not Null,
Rg_Vendedor  Varchar(20) Not Null,
Data_Cadastro_Vendedor Date,
Email_Vendedor  Varchar(100) Not Null,
)

-- drop table vendedores

Insert Into Vendedores
Values ('Nelson Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Jose Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Paulo Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Pedro Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Antonio Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Carlos Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Adriana Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Francine Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Rafael Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')
Insert Into Vendedores
Values
        ('Vinicius Francisco Manfrin',
        '123.456.789-01',
		'12.345.678-9',
		'20210923',
		'nelson.manfrin@gmail.com')

Select * from Vendedores

Select * from cidades
where Nome_Cidade = 'BATATAIS'


--
-- Criando a Tabela Clientes dentro do Banco de Dados Projeto_Pedidos
--


Create Table Clientes (
Codigo_Cliente Int Primary Key Not Null Identity,
Nome_Cliente Varchar(100) Not Null,
Cpf_Cliente Varchar(20) Not Null,
Rg_Cliente Varchar(20) Not Null,
Cnpj_Cliente Varchar(20),
Codigo_Cidade_Cliente Int Not Null,
Codigo_Logradouro_Cliente Int Not Null,
Descricao_Endereco Varchar(150) Not Null,
Numero_Endereco Varchar(10) Not Null,
Complemento_Endereco Varchar(100) Not Null,
Ponto_Referencia Varchar(100) Not Null,
Cep_Cliente Varchar(10) Not Null,
Telefone_Cliente Varchar(20) Not Null,
Email_Cliente Varchar(100) Not Null,
Data_Nascimento_Cliente	Date,
Data_Cadastro_Cliente	Date,
Constraint FK_Clientes1_Cidades FOREIGN KEY (Codigo_Cidade_Cliente)
  References Cidades
	(
	Codigo_Cidade
	),
Constraint FK_Clientes_Logradouros1 FOREIGN KEY (Codigo_Logradouro_Cliente)
  References Logradouros
	(
	Codigo_Logradouro
	)
)

Insert Into Clientes
Values
   ('Nelson Francisco Manfrin',
    '123.456.789-01',
    '12.345.678-9',
    ' ',
    3505906,
    1,
    'Benjamin Constante',
    '823',
    ' ',
    'Em frente a Empresa Barbantes Soberano',
    '14.315-770',
    '(16)-9.9152.5186',
    'nelson.manfrin@gmail.com',
    '19640108',
    '20210930')

Select * from Clientes