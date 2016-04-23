# This script is for creating the tables for Hoard.
CREATE TABLE hoard_user(
  user_email VARCHAR(40) NOT NULL,
  user_username VARCHAR(20) NOT NULL,
  user_firstname VARCHAR(15),
  user_lastname VARCHAR(20),
  PRIMARY KEY ( user_email )
);
CREATE TABLE hoard_book(
  book_id INT NOT NULL AUTO_INCREMENT,
  book_email VARCHAR(40) NOT NULL,
  book_title VARCHAR(128) NOT NULL,
  book_author VARCHAR(40),
  book_publisher VARCHAR(30),
  book_isbn VARCHAR(14),
  book_edition SMALLINT,
  book_isread BOOLEAN DEFAULT 'FALSE',
  book_isreading BOOLEAN DEFAULT 'FALSE',
  PRIMARY KEY ( book_id ),
  FOREIGN KEY ( book_email )
);