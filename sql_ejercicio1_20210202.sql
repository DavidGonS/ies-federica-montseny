CREATE DATABASE if not exists gestionanimales;

USE gestionanimales;

CREATE TABLE IF NOT EXISTS pets (
name_ varchar(20),
owner_ VARCHAR(20),
species VARCHAR(20),
sex CHAR(1),
birth DATE,
death DATE
);

/*
	CREACION DE LA TABLA DE EMPLEADOS
*/
CREATE TABLE IF NOT EXISTS empleados (
id INT,
nombre VARCHAR (30),
edad int
);

SHOW tables;

DESCRIBE empleados;


/*
	ELIMINA LA TABLA DEL TODO
*/
/* DROP TABLE empleados*/


/*
	CAMBIAR EL NOMBRE DE LA TABLA EMPLEADOS A EMPLOYEES
*/
ALTER TABLE empleados 
RENAME TO employees;


/*
	BORRA LOS DATOS DE LA TABLA EMPLOYEES
*/
/*
TRUNCATE TABLE employees;
*/

DESCRIBE employees;

ALTER TABLE employees ADD (
jefe VARCHAR(20),
departamento BIT
);

ALTER TABLE employees DROP COLUMN jefe;

DESCRIBE employees;

ALTER TABLE employees ADD (
	boss VARCHAR(2)
);

ALTER TABLE employees 
MODIFY boss VARCHAR(20);
