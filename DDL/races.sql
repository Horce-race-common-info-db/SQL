CREATE TABLE races
(
  id bigint(20) unsigned AUTO_INCREMENT PRIMARY KEY,
  held_id bigint(20) unsigned NOT NULL,
  course_id int(8) unsigned NOT NULL,
  race_round tinyint NOT NULL,
  name varchar(20) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,

  INDEX course_index (course_id),
  INDEX helds_index (held_id),

  FOREIGN KEY (course_id) 
    REFERENCES courses(id)
    ON DELETE CASCADE,
  FOREIGN KEY (held_id) 
    REFERENCES helds(id)
    ON DELETE CASCADE
);
