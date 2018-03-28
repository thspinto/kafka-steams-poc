CREATE DATABASE IF NOT EXISTS streams_poc;
USE streams_poc;

CREATE TABLE IF NOT EXISTS User (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name varchar(100),
  email varchar(200),
  create_at timestamp default CURRENT_TIMESTAMP NOT NULL,
  modified_at timestamp default CURRENT_TIMESTAMP NOT NULL,
  INDEX `modified_index` (`modified_at`)
);


CREATE TABLE IF NOT EXISTS Property (
  id serial NOT NULL PRIMARY KEY AUTO_INCREMENT,
  address varchar(500),
  owner_id int NOT NULL,
  create_at timestamp default CURRENT_TIMESTAMP NOT NULL,
  modified_at timestamp default CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (owner_id) REFERENCES User(id),
  INDEX `modified_index` (`modified_at`)
);