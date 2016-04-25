# This script is for creating the tables for Hoard.

DROP TABLE IF EXISTS hoard_user;
DROP TABLE IF EXISTS hoard_book;

CREATE TABLE hoard_user(
  user_email VARCHAR(40) NOT NULL PRIMARY KEY,
  user_username VARCHAR(20) NOT NULL,
  user_firstname VARCHAR(15),
  user_lastname VARCHAR(20) );

CREATE TABLE hoard_book(
  book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  book_email VARCHAR(40) NOT NULL FOREIGN KEY,
  book_title VARCHAR(128) NOT NULL,
  book_author VARCHAR(40),
  book_publisher VARCHAR(30),
  book_isbn VARCHAR(14),
  book_edition SMALLINT,
  book_isread BOOLEAN,
  book_isreading BOOLEAN );
