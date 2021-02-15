CREATE DATABASE game_management;

USE game_management;

CREATE TABLE IF NOT EXISTS genre (
	id INT NOT NULL PRIMARY KEY,
    genre_name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS game (
	id INT NOT NULL PRIMARY KEY,
    FK_genre_id INT NOT NULL,
    FOREIGN KEY (FK_genre_id) REFERENCES game(FK_genre_id),
    game_name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS publisher(
	id INT NOT NULL PRIMARY KEY,
    publisher_game VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS platform(
	id INT NOT NULL PRIMARY KEY,
    platform_name VARCHAR(20) NOT NULL
); 

CREATE TABLE IF NOT EXISTS region(
	id INT NOT NULL,
    region_name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS game_publisher(
	id INT NOT NULL PRIMARY KEY,
    FK_game_id INT NOT NULL,
    FK_publisher_id INT NOT NULL,
	FOREIGN KEY (FK_game_id) REFERENCES game_publisher(FK_game_id),
	FOREIGN KEY (FK_publisher_id) REFERENCES game_publisher(FK_publisher_id)
);

CREATE TABLE IF NOT EXISTS game_platform(
	id INT NOT NULL PRIMARY KEY,
    FK_game_publisher_id INT NOT NULL,
    FK_platform_id INT NOT NULL,
    release_year INT NOT NULL,
    FOREIGN KEY (FK_game_publisher_id) REFERENCES game_platform (FK_game_publisher_id),
    FOREIGN KEY (FK_platform_id) REFERENCES game_platform (FK_platform_id)
);

CREATE TABLE IF NOT EXISTS region_sales(
	region_id INT,
    game_platform_id INT,
    num_sales INT
); 

/* 2.CREACION DE INDICES*/
CREATE INDEX idx_id
ON genre (id);

CREATE INDEX idx_id_genre
ON game (id, genre_id);

CREATE INDEX idx_id
ON publisher (id);

CREATE INDEX idx_id
ON platform (id);

CREATE INDEX idx_id_game_publisher
ON game_publisher (id, FK_game_id, FK_publisher_id);

CREATE INDEX idx_id_game_platform
ON game_platform (id, FK_game_publisher_id, FK_platform_id);

/*3.CREACION DE RESTRICCIONES*/
ALTER TABLE region
ADD UNIQUE (region_name);

ALTER TABLE publisher
ADD UNIQUE (publisher_name);

ALTER TABLE region_sales
ALTER num_sales SET DEFAULT 0;

ALTER TABLE game_platform
ALTER release_year SET DEFAULT 1989;

ALTER TABLE region_sales
ADD CONSTRAINT chk_region_num_sales CHECK (num_sales >= 0);

ALTER TABLE game_platform
ADD CONSTRAINT chk_game_release_year CHECK (release_year >= 1989);

/*4.ELIMINACION DE RESTRICCIONES*/
ALTER TABLE region
DROP CONSTRAINT region_name;

ALTER TABLE publisher   
DROP CONSTRAINT publisher_name;  

ALTER TABLE region_sales
ALTER num_sales DROP DEFAULT;

ALTER TABLE game_platform
ALTER release_year DROP DEFAULT;

ALTER TABLE region_sales
DROP CHECK chk_region_num_sales;

ALTER TABLE game_publisher
DROP CHECK chk_game_release_year;


