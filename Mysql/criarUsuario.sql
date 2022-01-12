/*CRIAR USUARIO */
CREATE USER usuario@localhost IDENTIFIED BY '123';
SELECT User FROM mysql.user;
SELECT User, Host FROM mysql.user;

CREATE USER usuario2@localhost;
SET PASSWORD FOR 'usuario2'@'localhost' = PASSWORD('1234');
ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';

RENAME USER usuario TO new_user;
DROP USER new_user;

/*CRIAR USUARIO COM PRIVILEGIO DE USO*/
GRANT USAGE ON *.* TO novo@localhost IDENTIFIED BY '123';

SELECT User,Host FROM mysql.user;

SHOW GRANTS FOR novo@localhost;

/*DAR PRIVILEGIO TOTAL PARA USUARIO*/
GRANT ALL ON *.* TO admin IDENTIFIED BY '1234' WITH GRANT OPTION;

SHOW GRANTS FOR novo1;

/*DAR PRIVILEGIO CRUD PARA UM USUARIO*/
GRANT SELECT, INSERT, UPDATE, DELETE ON nome_banco.* TO novo@localhost;

SHOW GRANTS FOR novo@localhost;

/*REVOGAR PRIVILEGIO DE UM USUARIO*/
REVOKE DELETE ON nome_banco.* FROM novo@localhost;

SHOW GRANTS FOR novo@localhost;

/*REVOGAR TODO PRIVILEGIO DE UM USUARIO*/
REVOKE ALL, GRANT OPTION FROM admin, novo@localhost;

SHOW GRANTS FOR admin;
SHOW GRANTS FOR novo@localhost;

