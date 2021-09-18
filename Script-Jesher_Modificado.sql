--
-- Criando o Banco de Dados Projeto_Pedidos
--

Create Database Projeto_Pedidos

--
-- Removendo o Bando de Dados Projeto_Pedidos
--

-- Drop Database Projeto_Pedidos

--
-- Enviando Comando para utilizar o Banco de Dados
--

Use Projeto_Pedidos

--
-- Criando A tabela Paises dentro do Banco de Dados
--

Create Table Paises
(
  Codigo_Pais int Primary Key Not Null,
  -- Codigo_Pais int Not Null, <-- Tamb�m pode ser feito dessa forma
  Descricao_Pais varchar (60) Not Null,
  Codigo_Iso_Pais varchar(3) Not Null --, 
  -- Primary Key (Codigo_Pais) <-- Tamb�m pode ser usado Primary Key nesse m�todo
)

--
-- Caso Queira Deletar a Tabela
-- Execute:

-- Drop Table Paises

--
-- Inserindo dados na Tabela Paises dentro do Banco de Dados Projeto_Pedidos
-- Sem especificar os Campos da Tabela
--

Insert Into Paises
Values (076, 'BRASIL', 'BRA')

--
-- Inserindo dados na Tabela Paises dentro do Banco de Dados Projeto_Pedidos
-- Especificando os Campos da Tabela
--

Insert Into Paises
(Codigo_Pais, Descricao_Pais, Codigo_Iso_Pais)
Values (032, 'ARGENTINA', 'ARG')

--
-- Exibindo todos os Registros da Tabela Paises, dentro do Banco de Dados Projeto_Pedidos
--

Select * From Paises

--
-- Removendo todos os Registros da Tabela Paises
--

-- Delete From Paises

--
-- Removendo o Pais Brasil dos Registros da Tabela Paises
--

-- Delete From Paises
-- Where Codigo_Pais = 076

--
-- Removendo os Registro da Tabela Paises com a cl�usula IN
--

-- Delete From Paises
-- Where Codigo_Pais in (076, 032)

---
--- Vamos dar carga em massa na Tabela Paises.
--- Para isto vamos executar o comando abaixo
--- utilizando o utilit�rio BULK - Populando a Tabela Pa�ses
---

BULK Insert Paises
From 'C:\Users\Jesher\Desktop\ETEC - Desen. sistemas\2� Modulo\BD II - Nelson\Projeto_Pedidos\aula 26.08.2021\Tabela_Paises.txt'
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
--- utilizando o utilit�rio BULK  - Populando a Tabela Logradouros
---

BULK Insert Logradouros
From 'C:\Users\Jesher\Desktop\ETEC - Desen. sistemas\2� Modulo\BD II - Nelson\Projeto_Pedidos\aula 26.08.2021\Tabela_Tipos_Logradouros1.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go

--
-- Exibindo todos os registros da Tabela Logradouros
--

Select * From Logradouros
where Codigo_Logradouro LIKE '%BAL%'


--
-- Alterando um registro da Tabela Logradouros
--

Update Logradouros set Descricao_Logradouro = 'Balneario'
where Codigo_Logradouro LIKE '%BAL%'

Delete from Logradouros

--
-- Criando a Tabela Vendedores
--

Create Table Vendedores
(
  Codigo_Vendedor int Primary Key Identity Not Null,
  Nome_Vendedor Varchar(100) Not Null,
  Cpf_Vendedor Varchar(20) Not Null,
  Rg_Vendedor Varchar(20) Not Null,
  Data_Cadastro_Vendedor Date Not Null,
  Email_Vendedor Varchar(100) Not Null
)

--
-- Inserindo Dados Na Tabela Vendedores
--

-- Insert Into Vendedores
-- (Codigo_Vendedor, Nome_Vendedor, Cpf_Vendedor, Rg_Vendedor, Data_Cadastro_Vendedor, Email_Vendedor)
-- Values (01, 'Jesher Minelli', '132.845.659-56', '51.541.454-1', '20210902', 'jesher.alves@etec.sp.gov.br' )

-- Obs: Se definido o Codigo_Vendedor como Identity. N�o precisa especificar o valor do Codigo_Vendedor

Insert Into Vendedores
(Nome_Vendedor, Cpf_Vendedor, Rg_Vendedor, Data_Cadastro_Vendedor, Email_Vendedor)
Values ('Jesher Minelli', '132.845.659-56', '51.541.454-1', '20210902', 'jesher.alves@etec.sp.gov.br')

Insert Into Vendedores
(Nome_Vendedor, Cpf_Vendedor, Rg_Vendedor, Data_Cadastro_Vendedor, Email_Vendedor)
Values ('Priscilla Minelli', '654.845.658-52', '41.331.542-2', '20210902', 'Prih.Minelli@etec.sp.gov.br')

Insert Into Vendedores
(Nome_Vendedor, Cpf_Vendedor, Rg_Vendedor, Data_Cadastro_Vendedor, Email_Vendedor)
Values ('Emilly Faria Minelli', '124.321.456-45', '51.631.211-1', '20210902', 'emyzinha@etec.sp.gov.br')

Select * From Vendedores
where Email_Vendedor like '%Prih%'

Update Vendedores set Email_Vendedor = 'prih.minelli@etec.sp.gov.br'
where Email_Vendedor LIKE '%Prih%'

--
-- Agora vamos popular uma tabela teste criada para treino
--

Use Projeto_Pedidos

Create Table Teste
(
  Id_Pessoa int Primary Key Identity Not Null,
  Nome_Pessoa varchar(100) Not Null,
  Ra�a_Pessoa varchar(10) Null,
  Rg_Pessoa varchar(50) Not Null,
  Cpf_Pessoa varchar(50) Null,
  Endereco_Pessoa varchar(200) Not Null
)

-- Populando a tebela teste | observa��o: Ela est� como identity, ent�o n�o preciso colocar valor para o Id_Pessoa

BULK Insert Teste
From 'C:\Users\Jesher\Desktop\ETEC - Desen. sistemas\2� Modulo\BD II - Nelson\Projeto_Pedidos\Cadastro_Teste-Jesher.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go

Select * From Teste

-- Comandos usado para Modificar Nome na Tabela Teste

-- Update Teste set Nome_Pessoa = ' Queren Minelli'
-- Where Id_Pessoa LIKE '%10%'

-- Update Teste set Nome_Pessoa = ' Jera Minelli'
-- Where Id_Pessoa LIKE '%11%'

--
-- Criando a tabela Cidades 

Use Projeto_Pedidos

Create Table Cidades
(
  Codigo_Cidade int Primary Key Not Null,
  Nome_Cidade varchar(100) Not Null,
  Uf_Cidade varchar(2) Not Null,
  Codigo_Pais int Not Null,
  Constraint Fk_Cidade_Paises Foreign Key (Codigo_Pais)
  References Paises
  (
    Codigo_Pais
  )
)

-- insert into Cidades
-- (Codigo_Cidade, Nome_Cidade, Uf_Cidade, Codigo_Pais)
-- values (1100098, 'ESPIGAO DOESTE', 'RO', 076)


BULK Insert Cidades
From 'C:\Users\Jesher\Desktop\ETEC - Desen. sistemas\2� Modulo\BD II - Nelson\Projeto_Pedidos\aula 26.08.2021\Cidades_Reduzidas.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go


Select * from Cidades
