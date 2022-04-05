CREATE TABLE confirmed_barriers
(
  run_id bigint(20) unsigned PRIMARY KEY,
  bracket_number tinyint unsigned NOT NULL,
  horse_number tinyint unsigned NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,

  INDEX run_index (run_id),

  FOREIGN KEY (run_id) 
    REFERENCES runs(id)
    ON DELETE CASCADE
);
