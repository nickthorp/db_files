# This script is for creating the tables for Hoard.

DROP TABLE IF EXISTS hoard_book;
DROP TABLE IF EXISTS hoard_comic;
DROP TABLE IF EXISTS hoard_movie;
DROP TABLE IF EXISTS hoard_music;
DROP TABLE IF EXISTS hoard_tabletop;
DROP TABLE IF EXISTS hoard_tv_series;
DROP TABLE IF EXISTS hoard_videogame;
DROP TABLE IF EXISTS hoard_user;

CREATE TABLE hoard_user(
  user_email VARCHAR(40) NOT NULL,
  user_username VARCHAR(20) NOT NULL,
  user_first_name VARCHAR(15),
  user_last_name VARCHAR(20),
  PRIMARY KEY ( user_email ) );

CREATE TABLE hoard_book(
  book_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  book_title VARCHAR(128) NOT NULL,
  book_author VARCHAR(40),
  book_publisher VARCHAR(30),
  book_isbn VARCHAR(14),
  book_edition SMALLINT,
  book_is_read BOOLEAN,
  book_is_reading BOOLEAN,
  PRIMARY KEY ( book_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
 );

CREATE TABLE hoard_comic(
  comic_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  comic_title VARCHAR(128) NOT NULL,
  comic_author VARCHAR(40),
  comic_artist VARCHAR(40),
  comic_volume INT,
  comic_publisher VARCHAR(30),
  comic_is_read BOOLEAN,
  comic_is_reading BOOLEAN,
  PRIMARY KEY ( comic_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
);

CREATE TABLE hoard_movie(
  movie_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  movie_title VARCHAR(128) NOT NULL,
  movie_release_year INT,
  movie_director VARCHAR(40),
  movie_is_watched BOOLEAN,
  movie_is_watching BOOLEAN,
  PRIMARY KEY ( movie_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
);

CREATE TABLE hoard_music(
  music_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  music_artist VARCHAR(40) NOT NULL,
  music_album_title VARCHAR(128) NOT NULL,
  music_is_listening BOOLEAN,
  PRIMARY KEY ( music_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
);

CREATE TABLE hoard_tabletop(
  tabletop_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  tabletop_title VARCHAR(128) NOT NULL,
  tabletop_min_player INT,
  tabletop_max_player INT,
  PRIMARY KEY ( tabletop_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
);

CREATE TABLE hoard_tv_series(
  tv_series_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  tv_series_title VARCHAR(128) NOT NULL,
  tv_series_release_year INT,
  tv_series_director VARCHAR(40),
  tv_series_season INT,
  tv_series_is_watched BOOLEAN,
  tv_series_is_watching BOOLEAN,
  PRIMARY KEY ( tv_series_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
);

CREATE TABLE hoard_videogame(
  videogame_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(40) NOT NULL,
  videogame_title VARCHAR(128) NOT NULL,
  videogame_developer VARCHAR(30) NOT NULL,
  videogame_is_played BOOLEAN,
  videogame_is_playing BOOLEAN,
  videogame_is_complete BOOLEAN,
  PRIMARY KEY ( videogame_id ),
  FOREIGN KEY ( user_email ) REFERENCES hoard_user( user_email )
);
