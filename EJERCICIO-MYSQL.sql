CREATE DATABASE gestion_pub;

/* 1.	Crea las siguientes tablas: */

CREATE TABLE pub (
	cod_pub INT AUTO_INCREMENT,
    PRIMARY KEY(cod_pub),
    nombre VARCHAR(20),
    licencia_fiscal VARCHAR(20),
    domicilio VARCHAR(20),
    cod_localidad INT
    );

CREATE TABLE titular (
	dni_titular VARCHAR(9),
    nombre VARCHAR (20),
    domicilio VARCHAR (20),
    cod_pub INT
    );
    
CREATE TABLE empleados(
	dni_empleado VARCHAR(9),
    PRIMARY KEY(dni_empleado),
    nombre VARCHAR(20),
    domicilio VARCHAR(20)
    );

CREATE TABLE existencias(
	cod_articulo INT AUTO_INCREMENT,
	PRIMARY KEY(cod_articulo),
    nombre VARCHAR(20),
    cantidad INT,
    cod_pub INT
    );
    
CREATE TABLE localidad(
	cod_localidad INT AUTO_INCREMENT,
    PRIMARY KEY(cod_localidad),
    nomnbre VARCHAR(20)
    );
    
CREATE TABLE pub_empleado(
	cod_pub INT AUTO_INCREMENT,
    PRIMARY KEY(cod_pub),
	dni_empleado VARCHAR(9),
    PRIMARY KEY(dni_empleado),
    funcion VARCHAR(20),
    PRIMARY KEY (funcion)
    );
    
    /* 2.	Cambia los nombres de las tablas por los siguientes */
    ALTER TABLE pub
    RENAME TO pubs;
    
    ALTER TABLE empleado
    RENAME TO employees;
    
    ALTER TABLE existencias
    RENAME TO stocks;
    
    ALTER TABLE localidad
    RENAME TO cities;
    
    ALTER TABLE titular
    RENAME TO owners;
    
    ALTER TABLE pub_empleado
    RENAME TO pub_employees;
    
    /* 3.	Añade los siguientes campos: */
    ALTER TABLE pubs
    ADD fecha_apertura DATE,
    ADD horario VARCHAR(20);
    
    ALTER TABLE stocks
    ADD precio INT;
    
    ALTER TABLE cities
    ADD provincia VARCHAR(20);
    
    ALTER TABLE employees
    ADD edad INT;
    
    /*4.Añade las claves primarias de las tablas EXISTENCIAS, LOCALIDAD Y PUB_EMPLEADO.*/
    
    /*5.Añade las siguientes restricciones:*/
    ALTER TABLE pub
    ADD 
    
    /*7. Crea las siguientes claves ajenas a las tablas ya existentes:*/
    ALTER TABLE owners
    ADD CONSTRAINT fk_cod_pub_own
    FOREIGN KEY (cod_pub) REFERENCES pubs (cod_pub);
    
    ALTER TABLE pub_employees
    ADD CONSTRAINT fk_cod_pub_emp
    FOREIGN KEY (cod_pub) REFERENCES pubs (cod_pub);
    
    ALTER TABLE pub_employees
    ADD CONSTRAINT fk_cod_pub_emp
    FOREIGN KEY (dni_employee) REFERENCES pubs (dni_employee);
    
    ALTER TABLE stocks
    ADD CONSTRAINT fk_cod_pub_sto
    FOREIGN KEY (cod_pub) REFERENCES pubs (cod_pub);
    
    ALTER TABLE pubs
    ADD CONSTRAINT fk_cod_cit_pub
    FOREIGN KEY (cod_city) REFERENCES pubs (cod_city);
    
    /*8. Eliminar las claves ajenas creadas en el ejercicio anterior.*/
    
    ALTER TABLE pub_employees
    DROP FOREIGN KEY fk_cod_pub_emp
    
    
    /*9*/
    DROP TABLE owners;
    
    DROP TABLE stocks;
    
    DROP TABLE pub_employees;
    
    CREATE TABLE IF NOT EXISTS owners(
    dni_titular VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(10),
	domicilio VARCHAR(20),
    cod_pub INT NOT NULL,
    FOREIGN KEY (cod_pub) REFERENCES pubs(cod_pub)
    );
    
    SHOW CREATE TABLE owners;
    
    CREATE TABLE IF NOT EXISTS pub_employees(
    cod_pub INT NOT NULL,
    dni_empleado VARCHAR(10) NOT NULL,
	funcion VARCHAR(20) NOT NULL,
    PRIMARY KEY (cod_pub, dni_empleado, funcion),
    CONSTRAINT FK_pubs
    PRIMARY KEY (cod_pub) REFERENCES pubs (cod_pub),
    CONSTRAINT FK_employees
    PRIMARY KEY (dni_empleado) REFERENCES (dni_empleado)
    );
    
    
    