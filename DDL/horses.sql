CREATE TABLE horses
(
  id bigint(20) unsigned PRIMARY KEY,
  name varchar(20) NOT NULL,
  sex_id tinyint unsigned NOT NULL,
  birthday TIMESTAMP NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,

  INDEX sex_index (sex_id),

  FOREIGN KEY (sex_id) 
    REFERENCES sex(id)
    ON DELETE CASCADE
);
