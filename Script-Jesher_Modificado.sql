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
  -- Codigo_Pais int Not Null, <-- Também pode ser feito dessa forma
  Descricao_Pais varchar (60) Not Null,
  Codigo_Iso_Pais varchar(3) Not Null --, 
  -- Primary Key (Codigo_Pais) <-- Também pode ser usado Primary Key nesse m�todo
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
--- utilizando o utilitário BULK - Populando a Tabela Pa�ses
---

BULK Insert Paises
From 'C:\Users\Jesher\Desktop\ETEC - Desen. sistemas\2º Modulo\BD II - Nelson\Projeto_Pedidos\aula 26.08.2021\Tabela_Paises.txt'
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
  Codigo_Logradouro Int Primary Key Not Null,
  Descricao_Logradouro varchar(50) Not Null
)

---
--- Vamos dar carga em massa na Tabela Logradouros.
--- Para isto vamos executar o comando abaixo
--- utilizando o utilitário BULK  - Populando a Tabela Logradouros
---

BULK Insert Logradouros
From 'C:\Users\Jesher\Desktop\github Banco de Dados\Projeto_Pedidos em andamento\Tabela_Tipos_Logradouros.txt'
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

Create Table PessoasTesteBulk
(
  Id_Pessoa int Primary Key Identity Not Null,
  Nome_Pessoa varchar(100) Not Null,
  Raca_Pessoa varchar(10) Null,
  Rg_Pessoa varchar(50) Not Null,
  Cpf_Pessoa varchar(50) Null,
  Endereco_Pessoa varchar(200) Not Null
)

-- Populando a tebela teste | observação: Ela está como identity, então não preciso colocar valor para o Id_Pessoa

BULK Insert PessoasTesteBulk
From 'C:\Users\Jesher\Desktop\ETEC - Desen. sistemas\2º Modulo\BD II - Nelson\Projeto_Pedidos\Cadastro_Teste-Jesher.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go

Select * From PessoasTesteBulk

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
From 'C:\Users\Jesher\Desktop\github Banco de Dados\Projeto_Pedidos em andamento\Cidades_Reduzidas.txt'
With
(fieldterminator = ';',
rowterminator = '\n'
)
go


Select * from Cidades

-- Criando Tabela Produtos

Create Table Produtos
(
  Codigo_Produto int Primary Key identity(5,5) Not Null,
  Descricao_Produto Varchar(100) Not Null,
  Valor_Custo_Produto Decimal(14,2) Not Null,
  Valor_Unitario_Venda_Produto Decimal(14,2),
  Data_Cadastro_Produto Date Not Null
)

select * from Vendedores

-- Populando a tabela Produtos
-- Nota-se que não coloquei o codigo_produto, porque ele é indentity ou seja de alto incremento

Insert Into Produtos
(Descricao_Produto, Valor_Custo_Produto, Valor_Unitario_Venda_Produto, Data_Cadastro_Produto)
Values ('Produto01', 10.50, 20.00, '20210923')

Insert Into Produtos
(Descricao_Produto, Valor_Custo_Produto, Valor_Unitario_Venda_Produto, Data_Cadastro_Produto)
Values ('Produto02', 11.50, 21.00, '20210923')

Insert Into Produtos
(Descricao_Produto, Valor_Custo_Produto, Valor_Unitario_Venda_Produto, Data_Cadastro_Produto)
Values ('Produto03', 15.50, 18.00, '20210923')

Insert Into Produtos
(Descricao_Produto, Valor_Custo_Produto, Valor_Unitario_Venda_Produto, Data_Cadastro_Produto)
Values ('Produto03', 5.50, 10.00, '20210923')

Insert Into Produtos
(Descricao_Produto, Valor_Custo_Produto, Valor_Unitario_Venda_Produto, Data_Cadastro_Produto)
Values ('Produto03', 8.25, 15.00, '20210923')

select * from Produtos


-- Criando Tabela Clientes Dentro do Banco de Dados Projeto_Pedidos


Create Table Clientes
(
  Codigo_Cliente int Primary Key identity Not Null,
  Nome_Cliente Varchar(100) Not Null,
  Cpf_Cliente Varchar(20) Not Null,
  Rg_Cliente Varchar(20) Not Null,
  Cnpj_Cliente Varchar(20),
  Codigo_Cidade_Cliente Int Not Null,
  Codigo_Logradouro_Cliente Int Not Null,
  Descricao_Endereco Varchar(150) Not Null,
  Numero_Endereco Varchar(10) Not Null,
  Complemento_Endereco Varchar(100),
  Ponto_Referencia Varchar(100),
  Cep_Cliente Varchar(10) Not Null,
  Telefone_Cliente Varchar(20) Not Null,
  Email_Cliente Varchar(100) Not Null,
  Data_Nascimento_Cliente Date,
  Data_Cadastro_Cliente Date,
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

-- Populando a Tabela Clientes

Insert Into Clientes
Values
   ('Nelson Carlos Santos',
    '123.456.789-01',
    '12.345.678-9',
    ' ',
    3505906,
    1,
    'Benjamin Back Constante',
    '823',
    'XX.XXX.XXX/0001-XX',
    'Em frente a Empresa Barbantes Soberano',
    '14.315-770',
    '(16)-9.9152.5186',
    'nelson.manfrin@gmail.com',
    '19640108',
    '20210930')

   Insert Into Clientes
Values
   ('Joao Faria Cunha',
    '123.456.789-01',
    '12.345.678-9',
    ' ',
    3505906,
    1,
    'Maurilio Biagi',
    '32',
    'XX.XYX.XXX/0009-XX',
    'Esquina',
    '14.350-154',
    '(16)-9.9188.8080',
    'fariajoao@gmail.com',
    '19940610',
    '20210930')

Select * from Clientes


-- Criando a Tabela Pedidos

Create Table Pedidos
(
  Numero_Pedido Int Primary Key identity Not Null,
  Codigo_Cliente Int Not Null,
  Codigo_Vendedor Int Not Null,
  Data_Pedido Date Not Null,
  Valor_Total_Pedido Decimal(14,2) Not Null,
  Status_Pedido Varchar(30) Not Null,
  Data_Faturamento_Pedido Date Not Null,
  Data_Cancelamento_Pedido Date Not Null,
  Constraint FK_Clientes1_Cliente Foreign Key (Codigo_Cliente)
    References Clientes
      (
        Codigo_Cliente
      ),
  Constraint FK_Vendedor_Vendedores1 Foreign Key (Codigo_Vendedor)
    References Vendedores
      (
        Codigo_Vendedor
      )
)

