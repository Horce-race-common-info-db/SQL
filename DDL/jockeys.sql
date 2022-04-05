CREATE TABLE jockeys
(
  id bigint(20) unsigned PRIMARY KEY,
  name varchar(20) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);
