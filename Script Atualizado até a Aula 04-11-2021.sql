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
Codigo_Logradouro Int Not Null,
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
Constraint FK_Clientes_Logradouros FOREIGN KEY (Codigo_Logradouro)
  References Logradouros
	(
	Codigo_Logradouro
	)
)

--
-- Inserindo dados na Tabela Paises dentro do Banco de Dados Projeto_Pedidos
-- sem especificar os Campos da Tabela
--

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

--
-- Criando a Tabela Produtos dentro do Banco de Dados Projeto_Pedidos
--

Create Table Produtos
(
Codigo_Produto Int Primary Key Not Null Identity,
Descricao_Produto Varchar(100) Not Null,
Valor_Custo_Produto Decimal(14,3),
Valor_Unitario_Venda_Produto Decimal(14,3) Not Null,
Data_Cadastro_Produto Date
)

--
-- Inserindo dados na Tabela Produtos dentro do Banco de Dados Projeto_Pedidos
-- sem especificar os Campos da Tabela
--

INSERT INTO Produtos
values ('ARROZ EMPÓRIO SAO JOAO 5 KG',
         19.500,
         25.000,
         '20210930)


--
-- Criando a Tabela Pedidos dentro do Banco de Dados Projeto_Pedidos
--

Create Table Pedidos
(
Numero_Pedido Int Primary Key Not Null Identity,
Codigo_Cliente Int Not Null,
Codigo_Vendedor Int Not Null,
Data_Pedido Date Not Null,
Valor_Total_Pedido Decimal(14,2),
Status_Pedidos Varchar (30) Not Null,
Data_Faturamento_Pedido Date,
Data_Cancelamento_Pedido Date,
Constraint FK_Pedidos_Clientes FOREIGN KEY (Codigo_Cliente)
  References Clientes
	(
	Codigo_Cliente
	),
Constraint FK_Pedidos_Vendedor FOREIGN KEY (Codigo_Vendedor)
  References Vendedores
	(
	Codigo_Vendedor
	)

)

--
-- Inserindo dados na Tabela Pedidos dentro do Banco de Dados Projeto_Pedidos
-- sem especificar os Campos da Tabela
--

INSERT INTO Pedidos
values (1,
        1,
        '10/21/2021',
         19500,
         'A FATURAR',
         NULL,
         NULL)
         
INSERT INTO Pedidos
values (1,
        2,
        '10/21/2021',
         19500,
         'A FATURAR',
         NULL,
         NULL)

--
-- Criando a Tabela Itens_Pedidos dentro do Banco de Dados Projeto_Pedidos
--

Create Table Itens_Pedidos
(
Numero_Pedido Int Primary Key Not Null,
Numero_Item_Pedido Int Not Null Identity,
Codigo_Produto Int Not Null,
Quantidade_Vendida Decimal (14,3) Not Null,
Valor_Unitario_Produto Decimal(14,3) Not Null,
Valor_Total_Produto Decimal(14,2) Not Null,
Status_Item_Pedidos Varchar (30) Not Null,
Data_Faturamento_Item Date,
Data_Cancelamento_Item Date,
Constraint FK_Itens_Pedidos_Pedidos FOREIGN KEY (Numero_Pedido)
  References Pedidos
	(
	Numero_Pedido
	),
Constraint FK_Itens_Pedidos_Produtos FOREIGN KEY (Codigo_Produto)
  References Produtos
	(
	Codigo_Produto
	)
)

INSERT INTO Itens_Pedidos
values (1,
		1,
        10,
        12.555,
        125.55,
        'A FATURAR',
        NULL,
        NULL)

SELECT * FROM Itens_Pedidos

 
 Use Projeto_Pedidos
 ---
 --- Exibindo todas as colunas da tabela de Cidades
 ---
 Select * from Cidades
 
 ---
 --- Exibindo algumas colunas da tabela de Cidades
 ---
 
 Select Codigo_Cidade, Nome_CIDADE
   from Cidades
 
 ---
 --- Exibindo algumas colunas da tabela de Cidades
 --- incluindo um apelido para a tabela
 
 Select Cid.Codigo_Cidade,Cid.Nome_Cidade
   from Cidades as Cid
 
 ---
 --- Exibindo algumas colunas da tabela de Cidades
 --- incluindo um apelido para a tabela utilizando
 --- a cláusula Where
 
 Select Cid.Codigo_Cidade,
        Cid.Nome_Cidade,
 	   Cid.Uf_Cidade
   from Cidades as Cid
 ---  where Cid.Uf_Cidade = 'SP'
   where Cid.Nome_Cidade = 'GUAIRA'
 ---
 --- Exibindo algumas colunas da tabela de Cidades
 --- incluindo um apelido para a tabela utilizando
 --- a cláusula Where e a cláusula Order By, Like
 
 Select Cid.Codigo_Cidade,
        Cid.Nome_Cidade,
 	   Cid.Uf_Cidade
   from Cidades as Cid
 ---  where Cid.Uf_Cidade = 'SP'
 --- where Cid.Nome_Cidade = 'AGUA BRANCA'
 ---  where Cid.Nome_Cidade LIKE '%AB%'
 ---  Order by Cid.Uf_Cidade,
 ---      Cid.Nome_Cidade Desc
 Order by Cid.Nome_Cidade,
          Cid.Uf_Cidade
 
 
 ---
 --- Exibindo as colunas da tabela de Cidades
 --- e o nome da pais que está na tabela de
 --- Paises e trocando o nome das colunas
 --- incluindo um apelido para a tabela utilizando
 --- a cláusula Where como relacionamento
 
 Select Cid.Codigo_Cidade as 'Código',
        Cid.Nome_Cidade as 'Nome',
 	   Cid.Uf_Cidade as 'Estado',
 	   Cid.Codigo_Pais as 'Pais',
 	   Pai.Descricao_Pais as 'Nome do País'
   from Cidades as Cid , Paises as Pai
   where Cid.Codigo_Pais = Pai.Codigo_Pais
     and Cid.Uf_Cidade = 'SP'
 --- where Cid.Nome_Cidade = 'AGUA BRANCA'
 ---  where Cid.Nome_Cidade LIKE '%AB%'
 ---  Order by Cid.Uf_Cidade,
 ---      Cid.Nome_Cidade Desc
 Order by Cid.Nome_Cidade,
          Cid.Uf_Cidade
 ---
 --- Exibindo as colunas da tabela de Cidades
 --- e o nome da pais que está na tabela de
 --- Paises e trocando o nome das colunas
 --- incluindo um apelido para a tabela utilizando
 --- a cláusula Inner Join como relacionamento
 
 Select Cid.Codigo_Cidade as 'Código',
        Cid.Nome_Cidade as 'Nome',
 	   Cid.Uf_Cidade as 'Estado',
 	   Cid.Codigo_Pais as 'Pais',
 	   Pai.Descricao_Pais as 'Nome do País'
   from Cidades as Cid
   Inner Join Paises as Pai on
   Cid.Codigo_Pais = Pai.Codigo_Pais
     and Cid.Uf_Cidade = 'SP'
 --- where Cid.Nome_Cidade = 'AGUA BRANCA'
 ---  where Cid.Nome_Cidade LIKE '%AB%'
 ---  Order by Cid.Uf_Cidade,
 ---      Cid.Nome_Cidade Desc
 Order by Cid.Nome_Cidade,
          Cid.Uf_Cidade
