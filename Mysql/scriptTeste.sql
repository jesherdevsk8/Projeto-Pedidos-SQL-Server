use db_biblioteca;

CREATE TABLE tbl_teste_incremento (
  cod smallint primary key auto_increment,
  nome varchar(20) not null
) auto_increment = 10;

/* Começando o auto incremento a partir do 10 */

insert into tbl_teste_incremento (nome)
values('Jesher'),
values('Prihh'),
values('Emy'),
values('Sophia'),
values('Nick'),

select * from tbl_teste_incremento;

select max(cod) from tbl_teste_incremento;
/* mostra o valor de incremento do último registro */

use db_biblioteca;

Alter table tbl_teste_incremento
auto_increment = 20;
/* alterar o valor de incremento do próximo registro*/

insert into tbl_teste_incremento (nome)
values
('João'),
('Bruna'),
('Linus tech');

