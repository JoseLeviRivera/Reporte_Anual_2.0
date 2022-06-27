-- Drop database reporte_anual;

CREATE DATABASE IF NOT EXISTS reporte_anual;
USE reporte_anual;

-- Tabla de usuarios
CREATE TABLE IF NOT EXISTS tbl_usuario(
	id_usuario INT(11)  AUTO_INCREMENT NOT NULL, 
    usuario VARCHAR(80) NOT NULL,
    correo VARCHAR(80) NOT NULL,
    contrasenia VARCHAR(60) NOT NULL,
    PRIMARY KEY(id_usuario), unique(usuario), unique(correo)
);

-- Procedimientos almacenados usuario
DROP PROCEDURE IF EXISTS tbl_usuario_query;
DELIMITER //
CREATE PROCEDURE tbl_usuario_query(IN IN_usuario VARCHAR(100))
BEGIN
		SELECT * FROM tbl_usuario;
END//
DELIMITER ;
CALL tbl_usuario_query("Listar");

DROP PROCEDURE IF EXISTS tbl_usuario_query_Especifico;
DELIMITER //
CREATE PROCEDURE tbl_usuario_query_Especifico(IN IN_correo VARCHAR(80))
BEGIN
		SELECT * FROM tbl_usuario WHERE correo = IN_correo;
END//
DELIMITER ;
CALL tbl_usuario_query_Especifico("joselevirivera@gmail.com");

DROP PROCEDURE IF EXISTS tbl_usuario_insertar;
DELIMITER //
	CREATE PROCEDURE tbl_usuario_insertar ( IN IN_usuario VARCHAR(80), IN IN_correo VARCHAR(80), IN IN_contrasenia VARCHAR(60))
		BEGIN
			INSERT INTO tbl_usuario(usuario,correo,contrasenia) VALUES(IN_usuario,IN_correo,sha1(IN_contrasenia));
			SELECT 1;
		END//
DELIMITER ;
CALL tbl_usuario_insertar("Jose Levi Rivera Mendoza","joselevirivera@gmail.com","123");

DROP PROCEDURE IF EXISTS tbl_usuario_actualizar;
DELIMITER //
	CREATE PROCEDURE tbl_usuario_actualizar ( IN IN_id_usuario INT(10), IN IN_usuario VARCHAR(80), IN IN_correo VARCHAR(80), IN IN_contrasenia VARCHAR(60))
		BEGIN
			UPDATE 
					tbl_usuario 
			SET 
				usuario = IN_usuario,
				contrasenia = sha1(IN_contrasenia)
			WHERE id_usuario = IN_id_usuario;
			SELECT 1;
		END//
DELIMITER ;

DROP PROCEDURE IF EXISTS tbl_usuario_eliminar;
DELIMITER //
CREATE PROCEDURE tbl_usuario_eliminar(IN IN_num INT(11))
BEGIN
	DELETE FROM tbl_usuario WHERE id_usuario = IN_num;
	SELECT 1;
END//
DELIMITER ;
CALL tbl_usuario_eliminar(3);

-- Tabla reporte
CREATE TABLE IF NOT EXISTS tbl_reporte(
	id_reporte INT(11) NOT NULL,
    id_usuario INT(11) NOT NULL, 
    cicloEscolar VARCHAR(20) NOT NULL,
    fechaDeEntrega DATE NOT NULL,
    PRIMARY KEY (id_reporte),
    FOREIGN KEY(id_usuario) REFERENCES tbl_usuario(id_usuario) 
);

