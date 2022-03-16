CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  UserID INT NOT NULL AUTO_INCREMENT,
  Username VARCHAR(20) NOT NULL,
  PRIMARY KEY (UserID)
);

CREATE TABLE rooms (
  RoomID INT NOT NULL AUTO_INCREMENT,
  Roomname VARCHAR(20) NOT NULL,
  PRIMARY KEY (RoomID)
);

CREATE TABLE messages (
  MessageID INT NOT NULL AUTO_INCREMENT,
  MessageText VARCHAR(300) NOT NULL,
  ID_Users INT NOT NULL,
  ID_Roomname INT NOT NULL,
  PRIMARY KEY (MessageID),
  FOREIGN KEY (ID_Users) REFERENCES users(UserID),
  FOREIGN KEY (ID_Roomname) REFERENCES rooms(RoomID)
);

  /* Describe your table here.*/

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

