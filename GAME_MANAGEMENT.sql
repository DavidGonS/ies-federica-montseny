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

CREATE TABLE IF NOT EXISTS game_publisher(
	id INT NOT NULL PRIMARY KEY,
    FK_game_id INT NOT NULL,
    FK_publisher_id INT NOT NULL,
	FOREIGN KEY (FK_game_id) REFERENCES game_publisher(FK_game_id),
	FOREIGN KEY (FK_publisher_id) REFERENCES game_publisher(FK_publisher_id)
);

CREATE TABLE IF NOT EXISTS platform(
	id INT NOT NULL PRIMARY KEY,
    platform_name VARCHAR(20) NOT NULL
); 

